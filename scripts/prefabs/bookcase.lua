require "prefabutil"
require "simutil"
require "behaviours/doaction"

local assets =
{
	Asset("ANIM", "anim/bookcase.zip"),
	Asset("ATLAS", "images/inventoryimages/bookcase.xml"),
	Asset("IMAGE", "images/inventoryimages/bookcase.tex")
}


local function onopen(inst) 
	inst.AnimState:PlayAnimation("idle") 
	inst.SoundEmitter:PlaySound("dontstarve/wilson/chest_open")		
end 

local function onclose(inst) 
	inst.AnimState:PlayAnimation("idle") 
	inst.SoundEmitter:PlaySound("dontstarve/wilson/chest_close")		
end 

local function onhammered(inst, worker)
	inst.components.lootdropper:DropLoot()
	inst.components.container:DropEverything()
	SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")
	
	inst:Remove()
end

local function onhit(inst, worker)
	inst.AnimState:PlayAnimation("hit")
	inst.components.container:DropEverything()
	inst.AnimState:PushAnimation("idle", false)
	inst.components.container:Close()
end


local function onbuilt(inst)
	inst.AnimState:PlayAnimation("idle")
    inst.AnimState:PushAnimation("idle")
end


local function fn(Sim)
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
    
    MakeObstaclePhysics(inst, 0.33)
    
	inst:AddTag("structure")
    inst:AddTag("packable")
    inst:AddTag("chest")

	inst.AnimState:SetBank("bookcase")
	inst.AnimState:SetBuild("bookcase")
	inst.AnimState:PlayAnimation("idle")
    
    MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("lootdropper")
    inst:AddComponent("inspectable")
    inst:AddComponent("workable")
    inst:AddComponent("container")

	inst.components.container:WidgetSetup("bookcase")
    inst.components.container.onopenfn = onopen
    inst.components.container.onclosefn = onclose

	inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
	inst.components.workable:SetWorkLeft(4)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit) 
		
	inst:ListenForEvent( "onbuilt", onbuilt)
    MakeSnowCovered(inst)

	return inst
end

return Prefab( "common/bookcase", fn, assets), 
       MakePlacer("common/bookcase_placer", "bookcase", "bookcase", "idle")