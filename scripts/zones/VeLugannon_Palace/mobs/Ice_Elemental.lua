-----------------------------------
-- Area: Ve'Lugannon Palace
-- MOB:  Ice Elemental
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
   checkGoVregime(killer,mob,748,1);
end;