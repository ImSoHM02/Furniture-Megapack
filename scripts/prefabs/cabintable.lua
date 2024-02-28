local function GetStatus(inst)
    return (inst:HasTag("burnt") and "BURNT") or
        (inst:HasTag("hasfurnituredecoritem") and "HAS_ITEM") or
        nil
end

--
local function AbleToAcceptDecor(inst, item, giver)
    return (item ~= nil)
end

local function OnDecorGiven(inst, item, giver)
    if not item then return end

    inst.SoundEmitter:PlaySound("wintersfeast2019/winters_feast/table/food")

    if item.Physics then item.Physics:SetActive(false) end
    if item.Follower then item.Follower:FollowSymbol(inst.GUID, "swap_object") end
end

local function OnDecorTaken(inst, item)
    -- Item might be nil if it's taken in a way that destroys it.
    if item then
        if item.Physics then item.Physics:SetActive(true) end
        if item.Follower then item.Follower:StopFollowing() end
    end
end

--
local function OnHammer(inst, worker, workleft, workcount)
    inst.AnimState:PlayAnimation("hit")
    inst.AnimState:PushAnimation("idle")
end

local function OnHammered(inst, worker)
    local collapse_fx = SpawnPrefab("collapse_small")
    collapse_fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    collapse_fx:SetMaterial("wood")

    inst.components.lootdropper:DropLoot()

    local item = inst.components.furnituredecortaker:TakeItem()
    if item then
        inst.components.lootdropper:FlingItem(item)
    end

    inst:Remove()
end

--
local function OnBuilt(inst)
    inst.AnimState:PlayAnimation("idle")
    inst.AnimState:PushAnimation("idle", false)

    inst.SoundEmitter:PlaySound("dontstarve/common/repair_stonefurniture")
end

--
local function OnBurnt(inst)
    local item = inst.components.furnituredecortaker:TakeItem()
    if item then
        inst.components.lootdropper:FlingItem(item)
        if item.components.burnable then
            item.components.burnable:Ignite()
        end
    end

    -- TakeItem will set this to true, but we're burnt now, so we don't want to be enabled.
    inst.components.furnituredecortaker:SetEnabled(false)
end

--
local function OnSave(inst, data)
    if (inst.components.burnable and inst.components.burnable:IsBurning()) or inst:HasTag("burnt") then
        data.burnt = true
    end
end

local function OnLoad(inst, data)
end

local function OnLoadPostPass(inst, newents, data)
    -- Do this in postpass so the decor component can properly load a decor item if it has one.
    if data and data.burnt then
        inst:PushEvent("onburnt")
        inst.components.burnable.onburnt(inst)
    end
end
----------------
local function AddTable(results, data)
    local assets =
    {
        Asset("ANIM", "anim/wood_table_round.zip"),
        Asset("ANIM", "anim/wood_table.zip"),
        Asset("ATLAS", "images/inventoryimages/cabintable.xml"),
        Asset("IMAGE", "images/inventoryimages/cabintable.tex"),
    }
    
    local prefabs =
    {
        "collapse_small",
    }

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()

        MakeObstaclePhysics(inst, 0.7)

        inst.AnimState:SetBank("wood_table")
        inst.AnimState:SetBuild("wood_table_round")
        inst.AnimState:PlayAnimation("idle")
        inst.AnimState:SetFinalOffset(-1)

        inst.Transform:SetFourFaced()

        inst:AddTag("decortable")
        inst:AddTag("structure")

        inst.entity:SetPristine()
        if not TheWorld.ismastersim then
            return inst
        end

        --
        furnituredecortaker = inst:AddComponent("furnituredecortaker")
        furnituredecortaker.abletoaccepttest = AbleToAcceptDecor
        furnituredecortaker.ondecorgiven = OnDecorGiven
        furnituredecortaker.ondecortaken = OnDecorTaken

        --
        local inspectable = inst:AddComponent("inspectable")
        inspectable.getstatus = GetStatus

        --
        inst:AddComponent("lootdropper")

        --
        local savedrotation = inst:AddComponent("savedrotation")
        savedrotation.dodelayedpostpassapply = true

        --
        local workable = inst:AddComponent("workable")
        workable:SetWorkAction(ACTIONS.HAMMER)
        workable:SetWorkLeft(5)
        workable:SetOnWorkCallback(OnHammer)
        workable:SetOnFinishCallback(OnHammered)

        --
        MakeHauntableWork(inst)

        --
        MakeMediumBurnable(inst, nil, nil, true)
        MakeMediumPropagator(inst)

        --
        inst:ListenForEvent("onbuilt", OnBuilt)
        inst:ListenForEvent("onburnt", OnBurnt)

        --
        inst.OnSave = OnSave
        inst.OnLoad = OnLoad
        inst.OnLoadPostPass = OnLoadPostPass

        return inst
    end

    table.insert(results, Prefab("cabintable", fn, assets, prefabs))
    table.insert(results, MakePlacer("wood_table_placer", "wood_table", "wood_table_round", "idle", nil, nil, nil, nil, 105, "four"))
end

local result_tables = {}
local CABINTABLE_DATA = {
    bank = "wood_table",
    build = "wood_table_round",
}
AddTable(result_tables, "wood_table_round", CABINTABLE_DATA)

return unpack(result_tables)