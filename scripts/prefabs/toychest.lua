require "prefabutil"
require "simutil"
require "behaviours/doaction"

local assets =
{
	Asset("ANIM", "anim/toychest.zip"),
	Asset("ATLAS", "images/inventoryimages/toychest.xml"),
	Asset("IMAGE", "images/inventoryimages/toychest.tex")
}


local function onopen(inst) 
	inst.AnimState:PlayAnimation("open") 
	inst.SoundEmitter:PlaySound("dontstarve/wilson/chest_open")		
end 

local function onclose(inst) 
	inst.AnimState:PlayAnimation("close") 
	inst.AnimState:PushAnimation("closed")
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
	inst.AnimState:PushAnimation("closed", false)
	inst.components.container:Close()
end


local function onbuilt(inst)
	inst.AnimState:PlayAnimation("place")
	inst.AnimState:PushAnimation("closed", false)
end

local function fn(Sim)
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
    
    MakeObstaclePhysics(inst, 0)
    
	inst:AddTag("structure")
    inst:AddTag("packable")
    inst:AddTag("chest")

	inst.AnimState:SetBank("toychest")
	inst.AnimState:SetBuild("toychest")
	inst.AnimState:PlayAnimation("closed")
    
    MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("lootdropper")
    inst:AddComponent("inspectable")
    inst:AddComponent("workable")
    inst:AddComponent("container")

	inst.components.container:WidgetSetup("toychest")
    inst.components.container.onopenfn = onopen
    inst.components.container.onclosefn = onclose

	inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
	inst.components.workable:SetWorkLeft(3)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit) 
		
	inst:ListenForEvent( "onbuilt", onbuilt)
    MakeSnowCovered(inst)

	return inst
end

return Prefab( "common/toychest", fn, assets), 
		MakePlacer("common/toychest_placer", "toychest", "toychest", "closed")