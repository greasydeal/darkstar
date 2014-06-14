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

	-- Two of Cups
	if(trade:hasItemQty(961,1) == true and trade:getGil() == 0 and trade:getItemCount() == 1) then 
		
		local handsFeet =
		{
		0x31B0, -- (1) Gloves
		0x32B0, -- (2) Gaiters
		0x31A1, -- (3) Brass Mittens
		0x32A1, -- (4) Brass Leggings
		0x31B9, -- (5) Linen Cuffs
		0x32B9  -- (6) Holly Clogs
		}
		
		randNum = math.random(1,6);
		item = handsFeet[randNum];
		player:PrintToPlayer('Moogle: Perfect! Here, take this as a reward!');
		player:tradeComplete();
		player:addItem(item);
		player:messageSpecial(ITEM_OBTAINED,item);
		
	-- Two of Batons
	elseif (trade:hasItemQty(1000,1) == true and trade:getGil() == 0 and trade:getItemCount() == 1) then 
		
		local head =
		{
		0x30B0, -- (1) Headgear
		0x30A1, -- (2) Brass Cap
		0x30B9, -- (3) Poet's Circlet
		}
		
		randNum = math.random(1,3);
		item = head[randNum];
		player:PrintToPlayer('Moogle: Perfect! Here, take this as a reward!');
		player:tradeComplete();
		player:addItem(item);
		player:messageSpecial(ITEM_OBTAINED,item);
		
	-- Two of Coins
	elseif (trade:hasItemQty(974,1) == true and trade:getGil() == 0 and trade:getItemCount() == 1) then 
		
		local bodyLegs =
		{
		0x3130, -- (1) Doublet
		0x3230, -- (2) Brais
		0x3121, -- (3) Brass Harness
		0x3221, -- (4) Brass Subligar
		0x3139, -- (5) Linen Robe
		0x3239  -- (6) Linen Slops
		}
		
		randNum = math.random(1,6);
		item = bodyLegs[randNum];
		player:PrintToPlayer('Moogle: Perfect! Here, take this as a reward!');
		player:tradeComplete();
		player:addItem(item);
		player:messageSpecial(ITEM_OBTAINED,item);
		
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