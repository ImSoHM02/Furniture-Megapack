local assets =
{
    Asset("ANIM", "anim/barbell.zip"),
    Asset("ATLAS", "images/inventoryimages/barbell.xml"),
    Asset("IMAGE", "images/inventoryimages/barbell.tex"),
}

local prefabs = 
{
	"collapse_small",
}

----------------

local function onhammered(inst, worker)
	inst.components.lootdropper:DropLoot()
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

local function onsave(inst, data)
    if inst:HasTag("burnt") or (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt then
        inst.components.burnable.onburnt(inst)
    end
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
    
    inst.AnimState:SetBank("barbell")
    inst.AnimState:SetBuild("barbell")
	inst.AnimState:PlayAnimation("idle")
        	
    MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
    
    inst:AddComponent("lootdropper")
    inst:AddComponent("inspectable")
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)
    
	inst:ListenForEvent( "onbuilt", onbuilt)
    MakeSnowCovered(inst)
    
    inst.OnSave = onsave 
    inst.OnLoad = onload
   
    return inst
end

return Prefab( "barbell", fn, assets, prefabs),
       MakePlacer( "barbell_placer", "barbell", "barbell", "idle" ) 