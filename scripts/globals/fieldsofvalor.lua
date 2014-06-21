-------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/conquest");
-- require("scripts/globals/teleports");
require("scripts/globals/status");
require("scripts/globals/regimereward");
require("scripts/globals/regimeinfo");
require("scripts/globals/common");

--require("/scripts/globals/spell_definitions");

-------------------------------------------------

TABS = 12; -- What is this for? Where is it used?

--key item IDs
ELITE_TRAINING_INTRODUCTION = 1116;
ELITE_TRAINING_CHAPTER_1    = 1117;
ELITE_TRAINING_CHAPTER_2    = 1118;
ELITE_TRAINING_CHAPTER_3    = 1119;
ELITE_TRAINING_CHAPTER_4    = 1120;
ELITE_TRAINING_CHAPTER_5    = 1121;
ELITE_TRAINING_CHAPTER_6    = 1122;
ELITE_TRAINING_CHAPTER_7    = 1123;

--EVENT PARAM ID CONSTANTS (change these if even seqs displayed break!)
--onEventUpdate params
FOV_MENU_PAGE_1      = 18;
FOV_MENU_PAGE_2      = 34;
FOV_MENU_PAGE_3      = 50;
FOV_MENU_PAGE_4      = 66;
FOV_MENU_PAGE_5      = 82;
FOV_MENU_VIEW_REGIME = 1;
FOV_MENU_LEVEL_RANGE = 6;
--onEventFinish params
FOV_MENU_REGEN           = 53;
FOV_MENU_REFRESH         = 69;
FOV_MENU_PROTECT         = 85;
FOV_MENU_SHELL           = 101;
FOV_MENU_DRIED_MEAT      = 117;
FOV_MENU_SALTED_FISH     = 133;
FOV_MENU_HARD_COOKIE     = 149;
FOV_MENU_INSTANT_NOODLES = 165;
FOV_MENU_RERAISE         = 37;
FOV_MENU_HOME_NATION     = 21;
FOV_MENU_CANCEL_REGIME   = 3;
FOV_MENU_REPEAT_REGIME1  = -2147483630; -- 2147483666;
FOV_MENU_REPEAT_REGIME2  = -2147483614; -- 2147483682;
FOV_MENU_REPEAT_REGIME3  = -2147483598; -- 2147483698;
FOV_MENU_REPEAT_REGIME4  = -2147483582; -- 2147483714;
FOV_MENU_REPEAT_REGIME5  = -2147483566; -- 2147483730;
FOV_MENU_ELITE_INTRO     = 36;
FOV_MENU_ELITE_CHAP1     = 52;
FOV_MENU_ELITE_CHAP2     = 68;
FOV_MENU_ELITE_CHAP3     = 84;
FOV_MENU_ELITE_CHAP4     = 100;
FOV_MENU_ELITE_CHAP5     = 116;
FOV_MENU_ELITE_CHAP6     = 132;
FOV_MENU_ELITE_CHAP7     = 148;

--Special Message IDs (these usually don't break)
--Found in Dialog Tables under "Other>System Messages (4)"
FOV_MSG_KILLED_TARGET    = 558;
FOV_MSG_COMPLETED_REGIME = 559;
FOV_MSG_GET_GIL          = 565;
FOV_MSG_GET_TABS         = 566;
FOV_MSG_BEGINS_ANEW      = 643;


--MESSAGE ID CONSTANTS (msg id of "new training regime registered!": change this if msg ids break!)
FOV_MSG_EAST_RONFAURE   = 9767;
FOV_MSG_WEST_RONFAURE   = 10346;
FOV_MSG_NORTH_GUSTABERG = 10317;
FOV_MSG_SOUTH_GUSTABERG = 9795;
FOV_MSG_WEST_SARUTA     = 10126;
FOV_MSG_EAST_SARUTA     = 9840;
FOV_MSG_KONSCHTAT       = 9701;
FOV_MSG_TAHRONGI        = 9720;
FOV_MSG_LA_THEINE       = 10039;
FOV_MSG_PASHHOW         = 10611;
FOV_MSG_JUGNER          = 10757;
FOV_MSG_MERIPH          = 10490;
FOV_MSG_BATALLIA        = 9921;
FOV_MSG_SAUROMAGUE      = 9711;
FOV_MSG_ROLANBERRY      = 9672;
FOV_MSG_VALKURM         = 10166;
FOV_MSG_BUBURIMU        = 10177;
FOV_MSG_QUFIM           = 10252;
FOV_MSG_RUAUN_GARDENS   = 9672;
FOV_MSG_BEAUCEDINE      = 10649;
FOV_MSG_YUHTUNGA        = 9971;
FOV_MSG_YHOATOR         = 9920;
FOV_MSG_WEST_ALTEPA     = 9731;
FOV_MSG_EAST_ALTEPA     = 9868;
FOV_MSG_XARCABARD       = 10156;
FOV_MSG_BEHEMOTH        = 9362;
FOV_MSG_ZITAH           = 10188;
FOV_MSG_ROMAEVE         = 9537;
FOV_MSG_TERIGGAN        = 10031;
FOV_MSG_SORROWS         = 9517;

--Event IDs
FOV_EVENT_RUAUN_GARDENS   = 0x0049;
FOV_EVENT_EAST_RONFAURE   = 0x003d;
FOV_EVENT_WEST_RONFAURE   = 0x003d;
FOV_EVENT_WEST_SARUTA     = 0x0034;
FOV_EVENT_EAST_SARUTA     = 0x003d;
FOV_EVENT_NORTH_GUSTABERG = 0x010a;
FOV_EVENT_SOUTH_GUSTABERG = 0x003d;
FOV_EVENT_LA_THEINE       = 0x003d;
FOV_EVENT_KONSCHTAT       = 0x003d;
FOV_EVENT_TAHRONGI        = 0x003d;
FOV_EVENT_PASHHOW         = 0x001c;
FOV_EVENT_JUGNER          = 0x0020;
FOV_EVENT_MERIPH          = 0x002e;
FOV_EVENT_BATALLIA        = 0x003d;
FOV_EVENT_SAUROMAGUE      = 0x003d;
FOV_EVENT_ROLANBERRY      = 0x003d;
FOV_EVENT_VALKURM         = 0x002f;
FOV_EVENT_BUBURIMU        = 0x0033;
FOV_EVENT_QUFIM           = 0x0021;
FOV_EVENT_YUHTUNGA        = 0x003d;
FOV_EVENT_YHOATOR         = 0x003d;
FOV_EVENT_WEST_ALTEPA     = 0x003d;
FOV_EVENT_EAST_ALTEPA     = 0x003d; --test
FOV_EVENT_BEAUCEDINE      = 0x00da;
FOV_EVENT_XARCABARD       = 0x0030;
FOV_EVENT_BEHEMOTH        = 0x003d;
FOV_EVENT_ZITAH           = 0x003d;
FOV_EVENT_ROMAEVE         = 0x003d;
FOV_EVENT_TERIGGAN        = 0x003d; --test
FOV_EVENT_SORROWS         = 0x003d;

----------------------------------
-- Start FoV onTrigger
----------------------------------

function startFov(eventid,player)
	local hasRegime = player:getVar("fov_regimeid");
	local tabs = player:getValorPoint();
	player:startEvent(eventid,0,0,0,0,0,0,tabs,hasRegime);
end

----------------------------------
-- Update FoV onEventUpdate
----------------------------------

function updateFov(player,csid,menuchoice,r1,r2,r3,r4,r5)
    if(menuchoice==FOV_MENU_PAGE_1) then
        local info = getRegimeInfo(r1);
        player:updateEvent(info.n1,info.n2,info.n3,info.n4,0,info.sl,info.el,r1);
    elseif(menuchoice==FOV_MENU_PAGE_2) then
        local info = getRegimeInfo(r2);
        player:updateEvent(info.n1,info.n2,info.n3,info.n4,0,info.sl,info.el,r2);
    elseif(menuchoice==FOV_MENU_PAGE_3) then
        local info = getRegimeInfo(r3);
        player:updateEvent(info.n1,info.n2,info.n3,info.n4,0,info.sl,info.el,r3);
    elseif(menuchoice==FOV_MENU_PAGE_4) then
        local info = getRegimeInfo(r4);
        player:updateEvent(info.n1,info.n2,info.n3,info.n4,0,info.sl,info.el,r4);
    elseif(menuchoice==FOV_MENU_PAGE_5) then
        local info = getRegimeInfo(r5);
        player:updateEvent(info.n1,info.n2,info.n3,info.n4,0,info.sl,info.el,r5);
    elseif(menuchoice==FOV_MENU_VIEW_REGIME) then --View Regime (this option is only available if they have a regime active!)
        --get regime id and numbers killed...
        local regid = player:getVar("fov_regimeid");
        local info = getRegimeInfo(regid);
        if (info.n1 ~= 0) then n1 = player:getVar("fov_numkilled1"); else n1 = 0; end;
        if (info.n2 ~= 0) then n2 = player:getVar("fov_numkilled2"); else n2 = 0; end;
        if (info.n3 ~= 0) then n3 = player:getVar("fov_numkilled3"); else n3 = 0; end;
        if (info.n4 ~= 0) then n4 = player:getVar("fov_numkilled4"); else n4 = 0; end;
        player:updateEvent(info.n1,info.n2,info.n3,info.n4,n1,n2,n3,n4);
    elseif(menuchoice==FOV_MENU_LEVEL_RANGE) then --Level range and training area on View Regime...
        local regid = player:getVar("fov_regimeid");
        local info = getRegimeInfo(regid);
        player:updateEvent(0,0,0,0,0,info.sl,info.el,0);
    end
end

------------------------------------------
-- Finish FoV onEventFinish
------------------------------------------

function finishFov(player,csid,option,r1,r2,r3,r4,r5,msg_offset)
local msg_accept = msg_offset;
local msg_jobs = msg_offset+1;
local msg_cancel = msg_offset+2;
local tabs = player:getValorPoint();
local HAS_FOOD = player:hasStatusEffect(EFFECT_FOOD);
local HAS_SUPPORT_FOOD = player:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD);
-- ================= FIELD SUPPORT ===============================================
if(option==FOV_MENU_REGEN) then --Chose Regen. Regen from FoV removes all forms of regen.
	--Decrease tabs
    if (tabs >= 20) then
        player:delValorPoint(20);
        --Removes regen if on player
        player:delStatusEffect(EFFECT_REGEN);
        --Adds regen
        player:addStatusEffect(EFFECT_REGEN,1,3,3600);
    end
elseif(option==FOV_MENU_REFRESH) then --Chose Refresh, removes all other refresh.
	--Decrease tabs
    if (tabs >= 20) then
        player:delValorPoint(20);
        --Removes refresh if on player
        player:delStatusEffect(EFFECT_REFRESH);
		player:delStatusEffect(EFFECT_SUBLIMATION_COMPLETE);
		player:delStatusEffect(EFFECT_SUBLIMATION_ACTIVATED);
        --Add refresh
        player:addStatusEffect(EFFECT_REFRESH,1,3,3600, 0, 3);
    end
elseif(option==FOV_MENU_PROTECT) then --Chose Protect, removes all other protect.
	--Decrease tabs
    if (tabs >= 15) then
        player:delValorPoint(15);
        --Removes protect if on player
        player:delStatusEffect(EFFECT_PROTECT);
        --Work out how much def to give (highest tier dependant on level)
        local def = 0;
        if (player:getMainLvl()<27) then --before protect 2, give protect 1
            def=15;
        elseif (player:getMainLvl()<47) then --after p2, before p3
            def=40;
        elseif (player:getMainLvl()<63) then --after p3, before p4
            def=75;
        else --after p4
            def=120;
        end
        --Add protect
        player:addStatusEffect(EFFECT_PROTECT,def,0,1800);
    end
elseif(option==FOV_MENU_SHELL) then --Chose Shell, removes all other shell.
	--Decrease tabs
    if (tabs >= 15) then
        player:delValorPoint(15);
        --Removes shell if on player
        player:delStatusEffect(EFFECT_SHELL);
        --Work out how much mdef to give (highest tier dependant on level)
        --values taken from Shell scripts by Tenjou.
        local def = 0;
        if (player:getMainLvl()<37) then --before shell 2, give shell 1
            def=24;
        elseif (player:getMainLvl()<57) then --after s2, before s3
            def=36;
        elseif (player:getMainLvl()<68) then --after s3, before s4
            def=48;
        else --after s4
            def=56;
        end
        --Add shell
        player:addStatusEffect(EFFECT_SHELL,def,0,1800);
    end
elseif (option==FOV_MENU_RERAISE) then --Reraise chosen.
	--Decrease tabs
    if (tabs >= 10) then
        player:delValorPoint(10);
        --Remove any other RR
        player:delStatusEffect(EFFECT_RERAISE);
        --apply RR1, 2 hour duration.
        player:addStatusEffect(EFFECT_RERAISE,1,0,7200);
    end
elseif (option==FOV_MENU_HOME_NATION) then --Return to home nation.
	--Decrease tabs
    if (tabs >= 50) then
        player:delValorPoint(50);
        toHomeNation(player); -- Needs an entry in /scripts/globals/teleports.lua?
    end
elseif (option == FOV_MENU_DRIED_MEAT) then -- Dried Meat: STR+4, Attack +22% (caps at 63)
	if (tabs >= 50) then
		if (HAS_FOOD == true or HAS_SUPPORT_FOOD == true) then
			player:messageBasic(246);
		else
			player:delValorPoint(50);
			player:addStatusEffectEx(EFFECT_FIELD_SUPPORT_FOOD, 251, 1, 0, 1800);
		end
	end
elseif (option == FOV_MENU_SALTED_FISH) then -- Salted Fish: VIT+2 DEF+30% (Caps at 86)
	if (tabs >= 50) then
		if (HAS_FOOD == true or HAS_SUPPORT_FOOD == true) then
			player:messageBasic(246);
		else
			player:delValorPoint(50);
			player:addStatusEffectEx(EFFECT_FIELD_SUPPORT_FOOD, 251, 2, 0, 1800);
		end
	end
elseif (option == FOV_MENU_HARD_COOKIE) then --- Hard Cookie: INT+4, MaxMP+30
	if (tabs >= 50) then
		if (HAS_FOOD == true or HAS_SUPPORT_FOOD == true) then
			player:messageBasic(246);
		else
			player:delValorPoint(50);
			player:addStatusEffectEx(EFFECT_FIELD_SUPPORT_FOOD, 251, 3, 0, 1800);
		end
	end
elseif (option == FOV_MENU_INSTANT_NOODLES) then -- Instant Noodles: VIT+1, Max HP+27% (caps at 75), StoreTP+5
	if (tabs >= 50) then
		if (HAS_FOOD == true or HAS_SUPPORT_FOOD == true) then
			player:messageBasic(246);
		else
			player:delValorPoint(50);
			player:addStatusEffectEx(EFFECT_FIELD_SUPPORT_FOOD, 251, 4, 0, 1800);
		end
	end
elseif(option==FOV_MENU_CANCEL_REGIME) then --Cancelled Regime.
	player:setVar("fov_regimeid",0);
	player:setVar("fov_numkilled1",0);
	player:setVar("fov_numkilled2",0);
	player:setVar("fov_numkilled3",0);
	player:setVar("fov_numkilled4",0);
	player:showText(player,msg_cancel);
elseif(option==FOV_MENU_PAGE_1) then --Page 1
	writeRegime(player,r1,msg_accept,msg_jobs,0);
elseif(option==FOV_MENU_PAGE_2) then --Page 2
	writeRegime(player,r2,msg_accept,msg_jobs,0);
elseif(option==FOV_MENU_PAGE_3) then --Page 3
	writeRegime(player,r3,msg_accept,msg_jobs,0);
elseif(option==FOV_MENU_PAGE_4) then --Page 4
	writeRegime(player,r4,msg_accept,msg_jobs,0);
elseif(option==FOV_MENU_PAGE_5) then --Page 5
	writeRegime(player,r5,msg_accept,msg_jobs,1);
elseif(option==FOV_MENU_REPEAT_REGIME1) then --Page 1 Repeat
	writeRegime(player,r1,msg_accept,msg_jobs,1);
elseif(option==FOV_MENU_REPEAT_REGIME2) then --Page 2 Repeat
	writeRegime(player,r2,msg_accept,msg_jobs,1);
elseif(option==FOV_MENU_REPEAT_REGIME3) then --Page 3 Repeat
	writeRegime(player,r3,msg_accept,msg_jobs,1);
elseif(option==FOV_MENU_REPEAT_REGIME4) then --Page 4 Repeat
	writeRegime(player,r4,msg_accept,msg_jobs,1);
elseif(option==FOV_MENU_REPEAT_REGIME5) then --Page 5 Repeat
	writeRegime(player,r5,msg_accept,msg_jobs,1);
elseif(option==FOV_MENU_ELITE_INTRO) then --Want elite, 100tabs
	--giveEliteRegime(player,ELITE_TRAINING_CHAPTER_7,100);
elseif(option==FOV_MENU_ELITE_CHAP1) then --Want elite, 150tabs
	--local tabs = player:getVar("tabs");
	--local newtabs = tabs-150;
	--player:setVar("tabs",newtabs);
elseif(option==FOV_MENU_ELITE_CHAP2) then --Want elite, 200tabs
	--local tabs = player:getVar("tabs");
	--local newtabs = tabs-200;
	--player:setVar("tabs",newtabs);
elseif(option==FOV_MENU_ELITE_CHAP3) then --Want elite, 250tabs
elseif(option==FOV_MENU_ELITE_CHAP4) then --Want elite, 300tabs
elseif(option==FOV_MENU_ELITE_CHAP5) then --Want elite, 350tabs
elseif(option==FOV_MENU_ELITE_CHAP6) then --Want elite, 400tabs
elseif(option==FOV_MENU_ELITE_CHAP7) then --Want elite, 450tabs

else
	--print("opt is "..option);
end

end

function giveEliteRegime(player,keyitem,cost)
	if(player:hasKeyItem(keyitem)) then
		--print("has");
		--player:messageBasic(98,keyitem);
	else
        player:delValorPoint(cost);
		player:addKeyItem(keyitem);
	end
end

-----------------------------------
--Writes the chosen Regime to the SQL database
-----------------------------------

function writeRegime(player,rid,msg_accept,msg_jobs,regrepeat)
	player:setVar("fov_regimeid",rid);
    player:setVar("fov_repeat",regrepeat);
    player:setVar("fov_numkilled1",0);
	player:setVar("fov_numkilled2",0);
	player:setVar("fov_numkilled3",0);
	player:setVar("fov_numkilled4",0);
    local info = getRegimeInfo(rid);
	player:setVar("fov_numneeded1",info.n1);
	player:setVar("fov_numneeded2",info.n2);
	player:setVar("fov_numneeded3",info.n3);
	player:setVar("fov_numneeded4",info.n4);

	player:showText(player,msg_accept);
	player:showText(player,msg_jobs);
end

-----------------------------------
-- killer, mob, regime ID, index in the list of mobs to kill that this mob corresponds to (1-4)
-----------------------------------

function checkRegime(killer,mob,rid,index)
    -- dead people get no point
    if(killer == nil or killer:getHP() == 0) then
        return;
    end

	partyType = killer:checkSoloPartyAlliance();

	if(killer:checkFovAllianceAllowed() == 1) then
		partyType = 1;
	end

	
	

	if(killer:getVar("fov_regimeid") == rid) then --player is doing this regime
		-- Need to add difference because a lvl1 can xp with a level 75 at ro'maeve
		local difference = math.abs(mob:getMainLvl() - killer:getMainLvl());
		
		if ((partyType < 2 and mob:checkBaseExp() and killer:checkDistance(mob) < 100 and difference <= 15) or killer:checkFovDistancePenalty() == 0) then
            --get the number of mobs needed/killed
            local needed = killer:getVar("fov_numneeded"..index);
            local killed = killer:getVar("fov_numkilled"..index);

			if(killed < needed) then --increment killed number and save.
				killed = killed+1;
				killer:messageBasic(FOV_MSG_KILLED_TARGET,killed,needed);
                killer:setVar("fov_numkilled"..index,killed);

                if(killed == needed) then
                    local fov_info = getRegimeInfo(rid);
                    local k1 = killer:getVar("fov_numkilled1");
                    local k2 = killer:getVar("fov_numkilled2");
                    local k3 = killer:getVar("fov_numkilled3");
                    local k4 = killer:getVar("fov_numkilled4");

                    if(k1==fov_info.n1 and k2==fov_info.n2 and k3==fov_info.n3 and k4==fov_info.n4) then
                        --complete regime
                        killer:messageBasic(FOV_MSG_COMPLETED_REGIME);
                        local reward = getFoVregimeReward(rid);
                        local tabs = (math.floor(reward/10)*TABS_RATE);
                        local VanadielEpoch = vanaDay();

                        -- Award gil and tabs once per day.
                        if (killer:getVar("fov_LastReward") < VanadielEpoch) then
                           killer:messageBasic(FOV_MSG_GET_GIL,reward);
                           killer:addGil(reward);
                           killer:addValorPoint(tabs);
                           killer:messageBasic(FOV_MSG_GET_TABS,tabs,killer:getValorPoint()); -- Careful about order.
                           if (REGIME_WAIT == 1) then
                              killer:setVar("fov_LastReward",VanadielEpoch);
                           end
                        end

                        --TODO: display msgs (based on zone annoyingly, so will need killer:getZone() then a lookup)
                        killer:addExp(reward);
                        if (k1 ~= 0) then killer:setVar("fov_numkilled1",0); end
                        if (k2 ~= 0) then killer:setVar("fov_numkilled2",0); end
                        if (k3 ~= 0) then killer:setVar("fov_numkilled3",0); end
                        if (k4 ~= 0) then killer:setVar("fov_numkilled4",0); end
                        if(killer:getVar("fov_repeat") ~= 1) then
                            killer:setVar("fov_regimeid",0);
                            killer:setVar("fov_numneeded1",0);
                            killer:setVar("fov_numneeded2",0);
                            killer:setVar("fov_numneeded3",0);
                            killer:setVar("fov_numneeded4",0);
                        else
                           killer:messageBasic(FOV_MSG_BEGINS_ANEW);
                        end
                    end
                end
            end
		end
	end
end

-------------------------------------
-- GREASY'S Mog Card Trade
-------------------------------------

function mogCardTrade(player,npc,trade)
	
	local job = player:getMainJob();
	local gearSet;
	local minTradeLvl = 1;
	local isAFCards = false;
	
	-- Tier 1 
	if(trade:hasItemQty(961,1) == true and trade:hasItemQty(974,1) == true and trade:hasItemQty(987,1) == true and trade:hasItemQty(1000,1) == true and trade:getGil() == 0 and trade:getItemCount() == 4) then 
		
		if(job == 1 or job == 7 or job == 8 or job == 9 or job == 12 or job == 13 or job == 14 or job == 22) then
			gearSet =
			{
			0x31A1, -- (1) Brass Mittens
			0x32A1, -- (2) Brass Leggings
			0x30A1, -- (3) Brass Cap
			0x3121, -- (4) Brass Harness
			0x3221  -- (5) Brass Subligar
			}
			
		elseif(job == 2 or job == 3 or job == 4 or job == 5 or job == 6 or job == 10 or job == 11 or job == 15 or job == 16 or job == 17 or job == 18 or job == 19 or job == 20 or job == 21) then
			gearSet =
			{
			0x31B0, -- (1) Gloves
			0x32B0, -- (2) Gaiters
			0x30B0, -- (3) Headgear
			0x3130, -- (4) Doublet
			0x3230  -- (5) Brais
			}
			
		end;
		
		minTradeLvl = 1;
	
	-- Tier 2
	elseif(trade:hasItemQty(983,1) == true and trade:hasItemQty(970,1) == true and trade:hasItemQty(996,1) == true and trade:hasItemQty(1009,1) == true and trade:getGil() == 0 and trade:getItemCount() == 4) then 
		
		if(job == 1 or job == 7 or job == 8 or job == 9 or job == 12 or job == 13 or job == 14 or job == 22) then
			gearSet =
			{
			0x31A7, -- (1) Beetle Mittens
			0x32A7, -- (2) Beetle Leggings
			0x30A7, -- (3) Beetle Cap
			0x3127, -- (4) Beetle Harness
			0x3223  -- (5) Beetle Subligar
			}
			
		elseif(job == 2 or job == 3 or job == 4 or job == 5 or job == 6 or job == 10 or job == 11 or job == 15 or job == 16 or job == 17 or job == 18 or job == 19 or job == 20 or job == 21) then
			gearSet =
			{
			0x31B1, -- (1) Cotton Gloves
			0x32B1, -- (2) Cotton Gaiters
			0x30B1, -- (3) Cotton Headgear
			0x3131, -- (4) Cotton Doublet
			0x3231  -- (5) Cotton Brais
			}
			
		end;
		
		minTradeLvl = 20;
		
	-- Tier 3
	elseif(trade:hasItemQty(984,1) == true and trade:hasItemQty(971,1) == true and trade:hasItemQty(997,1) == true and trade:hasItemQty(1010,1) == true and trade:getGil() == 0 and trade:getItemCount() == 4) then 
		
		if(job == 1 or job == 7 or job == 8 or job == 9 or job == 12 or job == 13 or job == 14 or job == 22) then
			gearSet =
			{
			0x3196, -- (1) Ctr. F. Gauntlets
			0x3296, -- (2) Ctr. Greaves
			0x3096, -- (3) Centurion's Visor
			0x3116, -- (4) Ctr. Scale Mail
			0x3216  -- (5) Ctr. Cuisses
			}
			
		elseif(job == 2 or job == 3 or job == 4 or job == 5 or job == 6 or job == 10 or job == 11 or job == 15 or job == 16 or job == 17 or job == 18 or job == 19 or job == 20 or job == 21) then
			gearSet =
			{
			0x31B6, -- (1) Mrc. Cpt. Gloves
			0x32B6, -- (2) Mrc. Cpt. Gaiters
			0x30B6, -- (3) Mrc. Cpt. Headgear
			0x3136, -- (4) Mrc. Cpt. Doublet
			0x3236  -- (5) Mrc. Cpt. Hose
			}
			
		end;
		
		minTradeLvl = 30;
		
	-- Teir 4
	elseif(trade:hasItemQty(985,1) == true and trade:hasItemQty(972,1) == true and trade:hasItemQty(998,1) == true and trade:hasItemQty(1011,1) == true and trade:getGil() == 0 and trade:getItemCount() == 4) then 
		
		if(job == 1 or job == 7 or job == 8 or job == 9 or job == 12 or job == 13 or job == 14 or job == 22) then
			gearSet =
			{
			0x319B, -- (1) Cuir Gloves
			0x329B, -- (2) Cuir Highboots
			0x309B, -- (3) Cuir Bandana
			0x311B, -- (4) Cuir Bouilli
			0x37A3  -- (5) Iron Cuisses
			}
			
		elseif(job == 2 or job == 3 or job == 4 or job == 5 or job == 6 or job == 10 or job == 11 or job == 15 or job == 16 or job == 17 or job == 18 or job == 19 or job == 20 or job == 21) then
			gearSet =
			{
			0x31BB, -- (1) Velvet Cuffs
			0x32BB, -- (2) Ebony Sabots
			0x30BB, -- (3) Velvet Hat
			0x313B, -- (4) Velvet Robe
			0x323B  -- (5) Velvet Slops
			}
			
		end;
		
		minTradeLvl = 40;
		
		
	-- Teir 5 !!!!!!! AF !!!!!!!
	elseif(trade:hasItemQty(986,1) == true and trade:hasItemQty(973,1) == true and trade:hasItemQty(999,1) == true and trade:hasItemQty(960,1) == true and trade:getGil() == 0 and trade:getItemCount() == 4) then 
		
		if not(job == 21 or job == 22) then
			
			local head = {	12511,12512,13855,13856,12513,-- WAR,MNK,WHM,BLM,RDM,
							12514,12515,12516,12517,13857,-- THF,PLD,DRK,BST,BRD,
							12518,13868,13869,12519,12520,-- RNG,SAM,NIN,DRG,SMN
							15265,15266,15267,16138,16140,-- BLU,COR,PUP,DNC,SCH,
							-- GEO,RUN
						};
			
			local hands = {	13961,13962,13963,13964,13965,-- WAR,MNK,WHM,BLM,RDM,
							13966,13967,13968,13969,13970,-- THF,PLD,DRK,BST,BRD,
							13971,13972,13973,13974,13975,-- RNG,SAM,NIN,DRG,SMN
							14928,14929,14930,15002,15004,-- BLU,COR,PUP,DNC,SCH,
							-- GEO,RUN
						};
			
			local body = {	12638,12639,12640,12641,12642,-- WAR,MNK,WHM,BLM,RDM,
							12643,12644,12645,12646,12647,-- THF,PLD,DRK,BST,BRD,
							12648,13781,13782,12649,12650,-- RNG,SAM,NIN,DRG,SMN
							14521,14522,14523,14578,14580,-- BLU,COR,PUP,DNC,SCH,
							-- GEO,RUN
						};
			
			local legs = {	14214,14215,14216,14217,14218,-- WAR,MNK,WHM,BLM,RDM,
							14219,14220,14221,14222,14223,-- THF,PLD,DRK,BST,BRD,
							14224,14225,14226,14227,14228,-- RNG,SAM,NIN,DRG,SMN
							15600,15601,15602,15659,16311,-- BLU,COR,PUP,DNC,SCH,
							-- GEO,RUN
						};
			
			local feet = {	14089,14090,14091,14092,14093,-- WAR,MNK,WHM,BLM,RDM,
							14094,14095,14096,14097,14098,-- THF,PLD,DRK,BST,BRD,
							14099,14100,14101,14102,14103,-- RNG,SAM,NIN,DRG,SMN
							15684,15685,15686,15746,15748,-- BLU,COR,PUP,DNC,SCH,
							-- GEO,RUN
						};
			
			if(job == 19 and player:getRace() == 2 or player:getRace() == 4 or player:getRace() == 6 or player:getRace() ==7) then
				head[job] = head[job] +1 ;
				hands[job] = hands[job] + 1;
				body[job] = body[job] + 1;
				legs[job] = legs[job] +1;
				feet[job] = feet[job] +1;
			end;
			
			gearSet = { head[job], hands[job], body[job], legs[job], feet[job] };
			
		else
			player:PrintToPlayer("This job does not have an artifact armor set");
		end;
		
		minTradeLvl = 50;
		
	end;
	
	-----------------------
	-- Give Items
	-----------------------
	if(player:getMainLvl() >= minTradeLvl) then --check player level
		if(player:getFreeSlotsCount() >= 5) then --check free slots
			local i = 1;
			while gearSet[i] do
				player:tradeComplete();
				player:addItem(gearSet[i]);
				player:messageSpecial(ITEM_OBTAINED,gearSet[i]);
				i = i + 1;
			end;
		else
			player:PrintToPlayer("Not enough inventory space. Please try again with at least 5 free slots.");
		end;
	else
		player:PrintToPlayer(string.format("Those cards require a minimum level of %s.", minTradeLvl));
	end;

end
