local assets =
{
    Asset("ANIM", "anim/gearchair2.zip"),
    Asset("ATLAS", "images/inventoryimages/gearchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/gearchair2.tex"),
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

----------------

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	   
    MakeObstaclePhysics(inst, 0)
    
    inst:AddTag("structure")
    inst:AddTag("packable")
    
    inst.AnimState:SetBank("gearchair2")
    inst.AnimState:SetBuild("gearchair2")
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
    inst.components.workable:SetWorkLeft(3)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)
    
	inst:ListenForEvent( "onbuilt", onbuilt)
    MakeSnowCovered(inst)
   
    return inst
end

return Prefab( "gearchair2", fn, assets, prefabs),
       MakePlacer( "gearchair2_placer", "gearchair2", "gearchair2", "idle" ) 