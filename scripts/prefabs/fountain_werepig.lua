local assets =
{
    Asset("ANIM", "anim/fountain_werepig.zip"),
    Asset("ATLAS", "images/inventoryimages/fountain_werepig.xml"),
    Asset("IMAGE", "images/inventoryimages/fountain_werepig.tex"),
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
	inst.AnimState:PushAnimation("idle_loop", true)
end

local function onbuilt(inst)
	inst.AnimState:PlayAnimation("idle_loop", true)
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
    
    inst.AnimState:SetBank("fountain_werepig")
    inst.AnimState:SetBuild("fountain_werepig")
	inst.AnimState:PlayAnimation("idle_loop", true)
    
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

return Prefab( "fountain_werepig", fn, assets, prefabs),
       MakePlacer( "fountain_werepig_placer", "fountain_werepig", "fountain_werepig", "idle_loop" ) 