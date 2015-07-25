-----------------------------------
--	Area: Port Windurst
--	NPC:  Six of Clubs
--	Working 100%
-----------------------------------

require("scripts/globals/settings");
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;
require("scripts/zones/Port_Windurst/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:addItem( 0x2D12, quantity, aug0, aug0val, aug1, aug1val, aug2, aug2val, aug3, aug3val, trialId );
    player:messageSpecial( ITEM_OBTAINED, 0x2D12 );
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



