local assets =
{
    Asset("ANIM", "anim/girlytable.zip"),
    Asset("ATLAS", "images/inventoryimages/girlytable.xml"),
    Asset("IMAGE", "images/inventoryimages/girlytable.tex"),
}

local prefabs =
{
	"collapse_small",
}

----------------
-- Furniture decor functions
local function GetStatus(inst)
    return (inst:HasTag("burnt") and "BURNT") or
        (inst:HasTag("hasfurnituredecoritem") and "HAS_ITEM") or
        nil
end

local function AbleToAcceptDecor(inst, item, giver)
    return (item ~= nil)
end

local function OnDecorGiven(inst, item, giver)
    if not item then return end

    inst.SoundEmitter:PlaySound("wintersfeast2019/winters_feast/table/food")

    if item.Physics then item.Physics:SetActive(false) end
    
    -- Delay the FollowSymbol call to ensure it happens after all component setup
    inst:DoTaskInTime(0, function()
        if item and item:IsValid() and item.Follower then
            item.Follower:FollowSymbol(inst.GUID, nil, 0, -200, 0)  -- -200 Y offset
            -- Ensure item renders in front of table
            if item.AnimState then
                item.AnimState:SetLayer(LAYER_WORLD)
                item.AnimState:SetFinalOffset(1)
            end
        end
    end)
end

local function OnDecorTaken(inst, item)
    -- Item might be nil if it's taken in a way that destroys it.
    if item then
        if item.Physics then item.Physics:SetActive(true) end
        if item.Follower then item.Follower:StopFollowing() end
    end
end
local function OnLoadPostPass(inst, newents, data)
    -- Ensure decorated items render in front of table after reload
    if inst.components.furnituredecortaker then
        local item = inst.components.furnituredecortaker.decor_item
        if item and item:IsValid() and item.AnimState then
            item.AnimState:SetLayer(LAYER_WORLD)
            item.AnimState:SetFinalOffset(1)
        end
    end
end


local function TossDecorItem(inst)
    local item = inst.components.furnituredecortaker:TakeItem()
    if item then
        inst.components.lootdropper:FlingItem(item)
    end
end

local function onhammered(inst, worker)
	inst.components.lootdropper:DropLoot()
	TossDecorItem(inst)
	SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")
	inst:Remove()
end

local function onhit(inst, worker)
	inst.AnimState:PlayAnimation("hit")
	inst.AnimState:PushAnimation("idle")
end

local function onbuilt(inst)
	inst.AnimState:PlayAnimation("idle")
	inst.AnimState:PushAnimation("idle")
end

----------------

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	   
    MakeObstaclePhysics(inst, 0.66)
    
    inst:AddTag("structure")
    inst:AddTag("packable")
    inst:AddTag("decortable")
    
    inst.AnimState:SetBank("girlytable")
    inst.AnimState:SetBuild("girlytable")
	inst.AnimState:PlayAnimation("idle")
        
    MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
    	
    -- Add furniture decor taker component
    local furnituredecortaker = inst:AddComponent("furnituredecortaker")
    furnituredecortaker.abletoaccepttest = AbleToAcceptDecor
    furnituredecortaker.ondecorgiven = OnDecorGiven
    furnituredecortaker.ondecortaken = OnDecorTaken

    inst:AddComponent("lootdropper")
    
    local inspectable = inst:AddComponent("inspectable")
    inspectable.getstatus = GetStatus
    
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
 inst.components.workable:SetOnFinishCallback(onhammered)
 inst.components.workable:SetOnWorkCallback(onhit)
    
	inst:ListenForEvent("onbuilt", onbuilt)
	inst:ListenForEvent("ondeconstructstructure", TossDecorItem)
	   MakeSnowCovered(inst)
	  
    inst.OnLoadPostPass = OnLoadPostPass
	   return inst
end

return Prefab( "girlytable", fn, assets, prefabs),
       MakePlacer( "girlytable_placer", "girlytable", "girlytable", "idle" ) 