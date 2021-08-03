----------------
--//定时执行
---------------
local TimedCallFunc =
{
	-- ["00:00"] = {name = "变量数据重置", call = function () OnGlobalNewDay() end},
	-- ["00:30"] = {name = "遗忘废墟(跨服)", call = function () OnshenmoBossCome() end},
	-- ["01:30"] = {name = "遗忘废墟(跨服)踢人", call = function () OnshenmoBoosExit() end},
	-- -- ["05:30"] = {name = "合服BOSS", call = function () OnCombineBossCome() end},
	-- ["11:00"] = {name = "遗忘废墟(跨服)", call = function () OnshenmoBossCome() end},
	-- ["12:00"] = {name = "永生BOSS", call = function () OnYongshengBossCome() end},
	-- ["12:30"] = {name = "BOSS降临", call = function () OnSixpulsesactivityBossCome() end},
	-- ["13:00"] = {name = "遗忘废墟(跨服)踢人", call = function () OnshenmoBoosExit() end},
	-- ["14:00"] = {name = "跨服1v1结束", call = function () closekuafupvp() end},
	-- ["15:00"] = {name = "遗忘废墟(跨服)", call = function () OnshenmoBossCome() end},
	-- ["17:01"] = {name = "遗忘废墟(跨服)踢人", call = function () OnshenmoBoosExit() end},
	-- ["18:00"] = {name = "永生BOSS", call = function () OnYongshengBossCome() end},
	
	-- -- ["17:30"] = {name = "合服BOSS", call = function () OnCombineBossCome() end},
	-- ["19:00"] = {name = "六脉BOSS刷新", call = function () OnSixpulsesactivityBossCome() end},
	-- ["19:30"] = {name = "BOSS降临", call = function () OnBossCome() end},
	-- ["20:00"] = {name = "跨服1v1结束", call = function () closekuafupvp() end},
	-- ["20:29"] = {name = "25v25提前", call = function () On25vs25AdvanceCome() end},
	-- ["20:30"] = {name = "25v25", call = function () On25vs25Come() end},
	-- ["21:00"] = {name = "玛雅神殿(跨服)", call = function () OnMayaBossCome() end},
	-- ["22:00"] = {name = "1v1结算", call = function () Send1v1PVPRankAward() end},
	-- ["23:00"] = {name = "玛雅神殿(跨服)结束", call = function () OnMayaBoosExit() OnYongshengBossCome() end},
	-- ["23:59"] = {name = "全局变量数据重置", call = function () OnGGlobalNewDay() end},
	adasdasdas
	gggg
}

function AddPlayerSomeValue()
	local playersTbl = GetPlayersInWorld()
	if playersTbl ~= nil then
		local cur_time = os.time()
		-- for _,player in pairs(playersTbl) do

		-- 	--在线时长
		-- 	local i_value = player:get_param(498)
		-- 	i_value = i_value + 60
		-- 	player:set_param(498, i_value)
			
		-- 	if math.hasbit(player:get_param(370),8) and player:get_param(587) < 500 then
		-- 		local Godblessing_value = player:get_param(372)--天官赐福专用不清理
		-- 		if (Godblessing_value < 600) then
		-- 			Godblessing_value = Godblessing_value + 60
		-- 			player:set_param(372, Godblessing_value)
		-- 		end
		-- 	end

		-- 	if i_value > 3600 then
		-- 		NewServiceActivityTarget(player,3)
		-- 	end

		-- 	--增加竞技场次数
		-- 	if cur_time - 7200 >= player:get_param(255) then
		-- 		if player:get_param(246) < 4 then
		-- 			if player:get_param(248) < 6 then
		-- 				player:set_param(246, player:get_param(246) + 1)
		-- 				player:set_param(248, player:get_param(248) + 1)
		-- 			end
		-- 			player:set_param(255, cur_time)
		-- 		end
		-- 	end

		-- 	local callFun = 
		-- 	{ 
		-- 		TargetTimeRefresh,
		-- 	}
		-- 	for i, v in pairs(callFun) do
		-- 		SafeCall(v,player)
		-- 	end

		-- 	--神秘商店普通刷新
		-- 	check_ShopRefresh(player)
		-- 	if player:get_param(264) > cur_time then
		-- 		MysteryShopRefresh(player)
		-- 	end
		-- 	--每日豪礼神秘商店普通刷新
		-- 	if cur_time - player:get_param(1208) >= 7200 then
		-- 		DayhaolisteryShopRefresh(player)
		-- 	end
		-- 	if player:get_param(1208) > cur_time then
		-- 		DayhaolisteryShopRefresh(player)
		-- 	end
		-- 	--周末神秘商店普通刷新
		-- 	check_WeekendShopRefresh(player)
		-- 	--活跃度触发解锁条件3
		-- 	if player:get_param(549) >= 800 and not math.hasbit(player:get_param(1000), 3) then 
		-- 		player:set_param(1000, math.addbit(player:get_param(1000), 3))
		-- 	end	
		-- 	--5W钻石提取卡过期
		-- 	if player:get_param(1136) > 0 then
		-- 		if cur_time - player:get_param(1136) >= 86400 then
		-- 			player:set_param(1135,0)
		-- 			player:set_param(1136,0)
		-- 			if player:num_item(12262) >= 1 then
		-- 				player:remove_item(12262, 1, "100元钻石提取卡过期")
		-- 			end
		-- 			player:SendMailToLocalServer("100元钻石提取卡过期","本期任务未完成，您的100元钻石提取卡过期已经到期",1, nil)
		-- 		end
		-- 	end
		-- 	--如果在跨服中心则踢人
		-- 	local mapid = player:GetMapId()
		-- 	if g_is_cross_center() then
		-- 		-- if mapid ~= 800 and mapid ~= 801 and mapid ~= 823 and mapid ~= 840 and mapid ~=841 and mapid ~= 842 and mapid ~= 843 then--不在1v1或25v25或永生冰宫
		-- 			local notKickPlayerMapTable = {800,801,975,976,977,978,979}
		-- 			local canKick  = true
		-- 			for _, v in ipairs(notKickPlayerMapTable) do
		-- 				if v == mapid then
		-- 					canKick = false
		-- 				end
		-- 			end
		-- 			if canKick then
		-- 				player:exit_cluster()
		-- 			end
		-- 		-- end
		-- 	end
		-- 	-- print("1mapid"..mapid)
		-- 	if mapid == 707 then
		-- 		if chencjiqingpaodian(player) == 0 then
		-- 			if g_is_cross_center() then
		-- 				player:exit_cluster()
		-- 			else 
		-- 				gotoHome(player)
		-- 			end
		-- 		end
		-- 	end

		-- 	if mapid>=975 and mapid<=979 then
		-- 			if ForverBingGong(player) then
		-- 					if g_is_cross_center() then
		-- 						player:exit_cluster()
		-- 					else
		-- 						gotoHome(player)
		-- 					end
		-- 			end
		-- 	end

		-- 	--更新战力接口
		-- 	local zhanli = player:GetUInt32Value(EUnitFields.PLAYER_AMMO_ID)
		-- 	if player:get_param(736) < zhanli then
		-- 		player:set_param(736,zhanli)
		-- 	end
		-- 	--长生钟加经验
		-- 	--ChangshengMinCall(player)
		-- 	ChristmasOnlineUpdate(player)
		-- 	GodKingOnlineUpdate(player)
		-- 	WeekEndOnlineUpdate(player) 
		-- 	YuandanOnlineUpdate(player)  
		-- 	SiegeWarUpdate(player)
		-- 	--幸运日常在线时间
		-- 	luckytask_time(player)
		-- 	FeiJianOnlineUpdate(player)
		-- 	ChunJieTimeUpdate(player)
		-- 	ShenMoOnlineUpdate(player)
		-- 	SystemOnlineUpdate(player)
		-- 	ShiwuSystemOnlineUpdate(player)
			
		-- 	--只能在本服刷新自身排名
		-- 	if not g_isCrossServer() then
		-- 		if g_get_playerRankByGuid then
		-- 			local isUpdate = false
		-- 			local rank = g_get_playerRankByGuid(EPlayerRankType.RANKING_VALUE_LEVEL, player:GetLowGUID())
		-- 			if rank > 0 and player:get_param(1859) ~= rank then
		-- 				player:set_param(1859, rank)
		-- 				isUpdate = true
						
		-- 			end

		-- 			rank = g_get_playerRankByGuid(EPlayerRankType.RANKING_VALUE_POWER, player:GetLowGUID())
		-- 			if rank > 0 and player:get_param(1860) ~= rank then
		-- 				player:set_param(1860, rank)
		-- 				isUpdate = true
		-- 			end

		-- 			rank = g_get_playerRankByGuid(EPlayerRankType.RANKING_VALUE_CHARMING, player:GetLowGUID())
		-- 			if rank > 0 and player:get_param(1861) ~= rank then
		-- 				player:set_param(1861, rank)
		-- 				isUpdate = true
		-- 			end

		-- 			if isUpdate then
		-- 				SetPlayerScriptAttribute(player)
		-- 			end
		-- 		end
		-- 	end

		-- 	if not math.hasbit(player:get_param(1371), 21) then
		-- 		-- local HOME_LEVEL = 2452
		-- 		-- curAddCount = { [1]=2470, [2]=2471, [3]=2472 }, --家园产出奖励当前累计次数
		-- 		-- curAddTime ={ [1]=2474, [2]=2475, [3]=2476 }, --家园产出奖励当前累计时间
		-- 		-- curGetState ={ [1]=2473, [2]=2477, [3]=2478 }, --家园产出奖励当前领取状态
		-- 		-- initTimeState = 2483, -- 家园产出时间初始化时间标志
		-- 		-- CutDay={ [1]=2487, [2]=2488, [3]=2489 }, --家园产出当前领取奖励时间
		-- 		-- frontgetCount={ [1]=2490, [2]=2491, [3]=2492 }, --家园产出8次前领取奖励的的上次次数
		-- 		local homeLevel = player:get_param(2452)
		-- 		if (homeLevel > 20) then
		-- 			player:set_param(2483, 1)
		
		-- 			player:set_param(2470, 0)
		-- 			player:set_param(2471, 0)
		-- 			player:set_param(2472, 0)
					
		-- 			local tm = os.time()
		-- 			player:set_param(2474, tm)
		-- 			player:set_param(2475, tm)
		-- 			player:set_param(2476, tm)
		
		-- 			player:set_param(2473, 0)
		-- 			player:set_param(2477, 0)
		-- 			player:set_param(2478, 0)
		
		-- 			player:set_param(2487, 0)
		-- 			player:set_param(2488, 0)
		-- 			player:set_param(2489, 0)
					
		-- 			player:set_param(2490, 0)
		-- 			player:set_param(2491, 0)
		-- 			player:set_param(2492, 0)
		-- 		end
			
		-- 		player:set_param(1371, math.addbit(player:get_param(1371), 21))
		-- 	end
		-- 	if g_is_cluster_connected() then
		-- 		kuafu_huodongopen(player)
		-- 	end
		-- end
	end
end

local function timeToString(hour,min)
	local h = tostring(hour)
	if string.len(h) == 1 then
		h = "0"..h
	end
	local m = tostring(min)
	if string.len(m) == 1 then
		m = "0"..m
	end
	return h..":"..m
end

function OnTimeEvent(hour,min)	
	AddPlayerSomeValue()
	-- OnGuildTime(hour,min)

	local time = timeToString(hour,min)
	local timeFunc = TimedCallFunc[time]
	if timeFunc then
		timeFunc.call()
	end

	--活动定时回调
	-- timingCheckActivity(time)

	-- -- CheckStrangerBegin()
	-- --海神宫殿活动
	-- CheckPoseidonTempleBoss(hour,min)
	-- --永生神殿
	-- OnYongshengBingGongBossCome(hour,min,false)
	-- --灵兽神殿刷怪
	-- -- SpiritBeaastRandomMon(hour,min)
	-- --神魔大陆
	-- -- checkShenMoBoss()
	-- --全民夺宝
	-- SnatchTreasureCreateMon()
	-- if g_isCrossServer() then
	-- 	return
	-- end
	-- --竞技场
	-- PVPArenaAutrun(hour,min)
	-- --如意宝罐
	-- if min == 00 then
	-- 	OnTreasurePotCome()
	-- end
end
RegisterServerHook(44,"OnTimeEvent")
