-----------------------------------
--
-- 	EFFECT_SIGNET
--
--   Signet is a a beneficial Status Effect that allows the acquisition of Conquest Points and Crystals 
--   from defeated enemies that grant Experience Points.

--   Increased Healing HP
--   No TP loss while resting
--   Bonus experience earned in smaller parties
-- X Increased defense and evasion against attacks from your auto-attack target 
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_DEF,15);
	target:addMod(MOD_EVA,15);
	
	target:delStatusEffect(EFFECT_RERAISE);
	target:addStatusEffect(EFFECT_RERAISE,1,0,10800);	
	
	target:delStatusEffect(EFFECT_REGEN);	
	target:addStatusEffect(EFFECT_REGEN,1,3,3600);
	
	target:delStatusEffect(EFFECT_REFRESH);
	target:addStatusEffect(EFFECT_REFRESH,1,3,3600, 0, 3);
	
	target:delStatusEffect(EFFECT_DEDICATION);
	target:addStatusEffect(EFFECT_DEDICATION,50,0,8000);
	target:addMod(MOD_DEDICATION_CAP, 9000);
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_DEF,15);
	target:delMod(MOD_EVA,15);
end;