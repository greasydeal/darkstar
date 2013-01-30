---------------------------------------------
--  Lead Breath
--
--  Description: Weighs down players.
--
--
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");
---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
    return 0;
end;

function OnMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_WEIGHT;
    if(target:hasStatusEffect(typeEffect) == false) then
            target:delStatusEffect(EFFECT_HASTE);
            target:addStatusEffect(typeEffect,30,0,300);--power=12;tic=0;duration=60;
    else
        skill:setMsg(MSG_NO_EFFECT); -- no effect
    end

    return typeEffect;
end;