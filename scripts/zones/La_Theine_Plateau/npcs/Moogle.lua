-----------------------------------
-- Area: La Theine Plateau
-- NPC:  Laurisse
-- Involved in Mission: The Rescue Drill
-- @pos -292 28 143 102
-----------------------------------
package.loaded["scripts/zones/La_Theine_Plateau/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/missions");
require("scripts/zones/La_Theine_Plateau/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	local job = player:getMainJob();

	if(trade:hasItemQty(961,1) == true and trade:hasItemQty(974,1) == true and trade:hasItemQty(987,1) == true and trade:hasItemQty(1000,1) == true and trade:getGil() == 0 and trade:getItemCount() == 4) then 
		
		player:PrintToPlayer(job);
		
		if(job == 1 or job == 7 or job == 8 or job == 9 or job == 12 or job == 13 or job == 14 or job == 22) then
			local gearSet =
			{
			0x31A1, -- (1) Brass Mittens
			0x32A1, -- (2) Brass Leggings
			0x30A1, -- (3) Brass Cap
			0x3121, -- (4) Brass Harness
			0x3221 -- (5) Brass Subligar
			}
			
			player:PrintToPlayer('Moogle: Perfect! Here, take this as a reward!');
			
			local i = 1;
			while gearSet[i] do
			player:tradeComplete();
			player:addItem(gearSet[i]);
			player:messageSpecial(ITEM_OBTAINED,gearSet[i]);
			i = i + 1;
			end;
			
		end;
		
		if(job == 2 or job == 3 or job == 4 or job == 5 or job == 6 or job == 10 or job == 11 or job == 15 or job == 16 or job == 17 or job == 18 or job == 19 or job == 20 or job == 21) then
			local gearSet =
			{
			0x31B0, -- (1) Gloves
			0x32B0, -- (2) Gaiters
			0x30B0, -- (3) Headgear
			0x3130, -- (4) Doublet
			0x3230 -- (5) Brais
			}
			
			player:PrintToPlayer('Moogle: Perfect! Here, take this as a reward!');
			
			local i = 1;
			while gearSet[i] do
			player:tradeComplete();
			player:addItem(gearSet[i]);
			player:messageSpecial(ITEM_OBTAINED,gearSet[i]);
			i = i + 1;
			end;
			
		end;
	end;
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Moogle: Kill thickshells around the pond. If you find anything out of the ordinary bring it to me.");	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);	
end;