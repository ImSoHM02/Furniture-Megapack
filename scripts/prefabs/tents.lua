require "prefabutil"

local firetent_assets =
{
    Asset("ANIM", "anim/firetent.zip"),
}

local cabintent_assets =
{
    Asset("ANIM", "anim/cabintent.zip"),
}

local girlytent_assets =
{
    Asset("ANIM", "anim/girlytent.zip"),
}

local spidertent_assets =
{
    Asset("ANIM", "anim/spidertent.zip"),
}

local kinglytent_assets =
{
    Asset("ANIM", "anim/kinglytent.zip"),
}

local wartent_assets =
{
    Asset("ANIM", "anim/wartent.zip"),
}

local circustent_assets =
{
    Asset("ANIM", "anim/circustent.zip"),
}

local balloontent_assets =
{
    Asset("ANIM", "anim/balloontent.zip"),
}

local geartent_assets =
{
    Asset("ANIM", "anim/geartent.zip"),
}

-----------------------------------------------------------------------
--For regular tents

local function PlaySleepLoopSoundTask(inst, stopfn)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_sleep")
end

local function stopsleepsound(inst)
    if inst.sleep_tasks ~= nil then
        for i, v in ipairs(inst.sleep_tasks) do
            v:Cancel()
        end
        inst.sleep_tasks = nil
    end
end

local function startsleepsound(inst, len)
    stopsleepsound(inst)
    inst.sleep_tasks =
    {
        inst:DoPeriodicTask(len, PlaySleepLoopSoundTask, 33 * FRAMES),
        inst:DoPeriodicTask(len, PlaySleepLoopSoundTask, 47 * FRAMES),
    }
end

-----------------------------------------------------------------------

local function onhammered(inst, worker)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() then
        inst.components.burnable:Extinguish()
    end
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_big")
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    fx:SetMaterial("wood")
    inst:Remove()
end

local function onhit(inst, worker)
    if not inst:HasTag("burnt") then
        stopsleepsound(inst)
        inst.AnimState:PlayAnimation("hit")
        inst.AnimState:PushAnimation("idle", true)
    end
    if inst.components.sleepingbag ~= nil and inst.components.sleepingbag.sleeper ~= nil then
        inst.components.sleepingbag:DoWakeUp()
    end
end

local function onfinishedsound(inst)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_dis_twirl")
end

local function onfinished(inst)
    if not inst:HasTag("burnt") then
        stopsleepsound(inst)
        inst.AnimState:PlayAnimation("destroy")
        inst:ListenForEvent("animover", inst.Remove)
        inst.SoundEmitter:PlaySound("dontstarve/common/tent_dis_pre")
        inst.persists = false
        inst:DoTaskInTime(16 * FRAMES, onfinishedsound)
    end
end

local function onbuilt_firetent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_craft")
end

local function onbuilt_cabintent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/lean_to_craft")
end

local function onbuilt_girlytent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_craft")
end

local function onbuilt_spidertent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_craft")
end

local function onbuilt_kinglytent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/lean_to_craft")
end

local function onbuilt_wartent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_craft")
end

local function onbuilt_circustent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_craft")
end

local function onbuilt_balloontent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/tent_craft")
end

local function onbuilt_geartent(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
    inst.SoundEmitter:PlaySound("dontstarve/common/lean_to_craft")
end

local function onignite(inst)
    inst.components.sleepingbag:DoWakeUp()
end

local function wakeuptest(inst, phase)
    if phase ~= inst.sleep_phase then
        inst.components.sleepingbag:DoWakeUp()
    end
end

local function onwake(inst, sleeper, nostatechange)
    if inst.sleeptask ~= nil then
        inst.sleeptask:Cancel()
        inst.sleeptask = nil
    end

    inst:StopWatchingWorldState("phase", wakeuptest)
    sleeper:RemoveEventCallback("onignite", onignite, inst)

    if not nostatechange then
        if sleeper.sg:HasStateTag("tent") then
            sleeper.sg.statemem.iswaking = true
        end
        sleeper.sg:GoToState("wakeup")
    end

    if inst.sleep_anim ~= nil then
        inst.AnimState:PushAnimation("idle", true)
        stopsleepsound(inst)
    end

    inst.components.finiteuses:Use()
end

local function onsleeptick(inst, sleeper)
    local isstarving = sleeper.components.beaverness ~= nil and sleeper.components.beaverness:IsStarving()

    if sleeper.components.hunger ~= nil then
        sleeper.components.hunger:DoDelta(inst.hunger_tick, true, true)
        isstarving = sleeper.components.hunger:IsStarving()
    end

    if sleeper.components.sanity ~= nil and sleeper.components.sanity:GetPercentWithPenalty() < 1 then
        sleeper.components.sanity:DoDelta(inst.sanity_tick, true)
    end

    if not isstarving and sleeper.components.health ~= nil then
        sleeper.components.health:DoDelta(inst.health_tick * 2, true, inst.prefab, true)
    end

    if sleeper.components.temperature ~= nil then
        if inst.is_cooling then
            if sleeper.components.temperature:GetCurrent() > TUNING.SLEEP_TARGET_TEMP_TENT then
                sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() - TUNING.SLEEP_TEMP_PER_TICK)
            end
        elseif sleeper.components.temperature:GetCurrent() < TUNING.SLEEP_TARGET_TEMP_TENT then
            sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() + TUNING.SLEEP_TEMP_PER_TICK)
        end
    end

    if isstarving then
        inst.components.sleepingbag:DoWakeUp()
    end
end

local function onsleep(inst, sleeper)
    inst:WatchWorldState("phase", wakeuptest)
    sleeper:ListenForEvent("onignite", onignite, inst)

    if inst.sleep_anim ~= nil then
        inst.AnimState:PlayAnimation(inst.sleep_anim, true)
        startsleepsound(inst, inst.AnimState:GetCurrentAnimationLength())
    end

    if inst.sleeptask ~= nil then
        inst.sleeptask:Cancel()
    end
    inst.sleeptask = inst:DoPeriodicTask(TUNING.SLEEP_TICK_PERIOD, onsleeptick, nil, sleeper)
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

local function common_fn(bank, build, icon, tag, onbuiltfn)
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()
    MakeObstaclePhysics(inst, 1)

    inst:AddTag("tent")
    inst:AddTag("structure")
    if tag ~= nil then
        inst:AddTag(tag)
    end

    inst.AnimState:SetBank(bank)
    inst.AnimState:SetBuild(build)
    inst.AnimState:PlayAnimation("idle", true)

    inst.MiniMapEntity:SetIcon(icon)

    MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    inst:AddComponent("lootdropper")
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetOnFinished(onfinished)

    inst:AddComponent("sleepingbag")
    inst.components.sleepingbag.onsleep = onsleep
    inst.components.sleepingbag.onwake = onwake

    MakeSnowCovered(inst)
    inst:ListenForEvent("onbuilt", onbuiltfn)

    MakeLargeBurnable(inst, nil, nil, true)
    MakeMediumPropagator(inst)

    inst.OnSave = onsave 
    inst.OnLoad = onload

    MakeHauntableWork(inst)

    return inst
end

local function firetent()
    local inst = common_fn("firetent", "firetent", "firetent.tex", nil, onbuilt_firetent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function cabintent()
    local inst = common_fn("cabintent", "cabintent", "cabintent.tex", nil, onbuilt_cabintent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function girlytent()
    local inst = common_fn("girlytent", "girlytent", "girlytent.tex", nil, onbuilt_girlytent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function spidertent()
    local inst = common_fn("spidertent", "spidertent", "spidertent.tex", nil, onbuilt_spidertent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function kinglytent()
    local inst = common_fn("kinglytent", "kinglytent", "kinglytent.tex", nil, onbuilt_kinglytent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function wartent()
    local inst = common_fn("wartent", "wartent", "wartent.tex", nil, onbuilt_wartent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function circustent()
    local inst = common_fn("circustent", "circustent", "circustent.tex", nil, onbuilt_circustent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function balloontent()
    local inst = common_fn("balloontent", "balloontent", "balloontent.tex", nil, onbuilt_balloontent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

local function geartent()
    local inst = common_fn("geartent", "geartent", "geartent.tex", nil, onbuilt_geartent)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sleep_phase = "night"
    inst.sleep_anim = "sleep_loop"
    
	inst.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
	inst.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
	inst.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
	
	inst.components.finiteuses:SetMaxUses(20)
	inst.components.finiteuses:SetUses(20)
	
	inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
	
	inst.sanity_tick = 2
	inst.hunger_tick = -2
	inst.health_tick = 2
	
    return inst
end

return Prefab("firetent", firetent, firetent_assets),
MakePlacer("firetent_placer", "firetent", "firetent", "anim"),
Prefab("cabintent", cabintent, cabintent_assets),
MakePlacer("cabintent_placer", "cabintent", "cabintent", "anim"),
Prefab("girlytent", girlytent, girlytent_assets),
MakePlacer("girlytent_placer", "girlytent", "girlytent", "anim"),
Prefab("spidertent", spidertent, spidertent_assets),
MakePlacer("spidertent_placer", "spidertent", "spidertent", "anim"),
Prefab("kinglytent", kinglytent, kinglytent_assets),
MakePlacer("kinglytent_placer", "kinglytent", "kinglytent", "anim"),
Prefab("wartent", wartent, wartent_assets),
MakePlacer("wartent_placer", "wartent", "wartent", "anim"),
Prefab("circustent", circustent, circustent_assets),
MakePlacer("circustent_placer", "circustent", "circustent", "anim"),
Prefab("balloontent", balloontent, balloontent_assets),
MakePlacer("balloontent_placer", "balloontent", "balloontent", "anim"),
Prefab("geartent", geartent, geartent_assets),
MakePlacer("geartent_placer", "geartent", "geartent", "anim")