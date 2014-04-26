-----------------------------------
--	Author: Dia
--
--	Functions for Shop system
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/conquest");

-----------------------------------
-- Nations
-----------------------------------

SANDORIA = 0;
  BASTOK = 1;
WINDURST = 2;
  KAZHAM = 2;
   JEUNO = 3;
 SELBINA = 4;
   RABAO = 4;
    NORG = 5;
TAVNAZIA = 6;
  STATIC = 7;

-----------------------------------
-- function showShop
--
-- Total stock cuts off after 16 items. 
-- If you add more than that the extras won't display.
-----------------------------------

function showShop(player, nation, stock)

correction = 1;

	if (nation ~= STATIC) then
		correction = (1 + (0.20 * (9 - player:getFameLevel(nation)) / 8))*SHOP_PRICE;
	end

player:createShop(nation);

	for i = 1, #stock, 2 do
		player:addShopItem(stock[i],stock[i+1]*correction);
	end

player:sendMenu(2);
end;

-----------------------------------
-- function showNationShop
--
-- Total stock cuts off after 16 items. 
-- If you add more than that the extras won't display.
-----------------------------------

function showNationShop(player, nation, stock)

conquest = getNationRank(nation);
playerNation = player:getNation();

correction = 1;

	if (nation ~= STATIC) then
		correction = (1 + (0.20 * (9 - player:getFameLevel(nation)) / 8))*SHOP_PRICE;
	end

player:createShop(nation);

	for i = 1, #stock, 3 do
		if (stock[i+2] == 1) then
			if (playerNation == nation and conquest == 1) then
				player:addShopItem(stock[i],stock[i+1]*correction);
			end
		elseif (stock[i+2] == 2) then
			if (conquest <= 2) then
				player:addShopItem(stock[i],stock[i+1]*correction);
			end
		else
			player:addShopItem(stock[i],stock[i+1]*correction);
		end
	end

player:sendMenu(2);
end;

-----------------------------------
-- function ShowOPVendorShop
-- creates the usual OP vendor store
-- {ItemID,Price}
-----------------------------------

function ShowOPVendorShop(player)

	stock = 
	{
		0x10A8,100, --white drop
		0x10A9,100, --black drop
        0xB9B,1,  --inoshishinofuda
        0xB9C,1,  --shikanofuda		
        0xB9D,1,  --chonofuda
		0x111D,100, --meat mithkabob
		0x112E,100, --fish mithkabob
		0x11CE,100, --yagudo drink
		0x113D,100, --apple pie
		0x39C6,3000, --reraise earring
		0x44B1,10000, --fed. signet staff
		0x1034,10,		--Antidote
		0x1037,10,		--Echo Drops
		0x1036,10,	--Eye Drops
		0x1020,100,	--Ether
		0x1010,100		--Potion
	};

	showShop(player, STATIC, stock);

end;

function ShowGenStore(player)
    stock = 
	{
        0x14BC,99,  --uchitake
        0x14BD,99,  --tsurara
        0x14BE,99,  --kawahori
		0x14BF,99,	--makibishi
		0x14C0,99,	--hiraishin
		0x14C1,99,	--mizu
		0x14C2,99,	--shihei
		0x14C3,99,	--jusatsu
		0x14C4,99,	--kaginawa
		0x14C5,99,	--sairui
		0x14C6,99,	--kodoku
		0x14C7,99,	--shinobi-tabi
    };
	
    showShop(player, STATIC, stock);

end;