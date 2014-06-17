-----------------------------------
-- Moogle Crystal Trader
-- Converts crystal stacks to clusters
-- Author: g0atfinger
------------------------------------

function mogCrystalTrader(player,npc,trade)
	
	if(trade:hasItemQty(4096,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4104);
			player:messageSpecial(ITEM_OBTAINED,4104);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4097,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4105);
			player:messageSpecial(ITEM_OBTAINED,4105);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4098,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4106);
			player:messageSpecial(ITEM_OBTAINED,4106);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4099,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4107);
			player:messageSpecial(ITEM_OBTAINED,4107);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4100,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4108);
			player:messageSpecial(ITEM_OBTAINED,4108);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4101,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4109);
			player:messageSpecial(ITEM_OBTAINED,4109);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4102,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4110);
			player:messageSpecial(ITEM_OBTAINED,4110);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
	
	if(trade:hasItemQty(4103,12) == true and trade:getGil() == 0 and trade:getItemCount() == 12) then
		if(player:getFreeSlotsCount() >= 1) then 
			player:tradeComplete();
			player:addItem(4111);
			player:messageSpecial(ITEM_OBTAINED,4111);
			
	else
		player:PrintToPlayer("Not enough inventory space. Please try again with at least 1 free slots");
	end;
end;