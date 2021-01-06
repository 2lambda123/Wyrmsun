
function RunResultsMenu()
	local background
	local result

	if (GameResult == GameVictory) then
		result = "Victory!"
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
			background = GetBackground("backgrounds/yale.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
			background = GetBackground("backgrounds/yale.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "kobold") then
			background = GetBackground("backgrounds/wyrm.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
			background = GetBackground("backgrounds/wyrm.png")
		else
			background = GetBackground("backgrounds/gryphon.png")
		end
		play_victory_music()
	elseif (GameResult == GameDefeat) then
		result = "Defeat!"
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
			background = GetBackground("backgrounds/wyrm.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
			background = GetBackground("backgrounds/wyrm.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
			background = GetBackground("backgrounds/yale.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "kobold") then
			background = GetBackground("backgrounds/yale.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "anglo_saxon" or GetPlayerData(GetThisPlayer(), "RaceName") == "english" or GetPlayerData(GetThisPlayer(), "RaceName") == "frankish" or GetPlayerData(GetThisPlayer(), "RaceName") == "goth" or GetPlayerData(GetThisPlayer(), "RaceName") == "norse" or GetPlayerData(GetThisPlayer(), "RaceName") == "suebi" or GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
			background = GetBackground("backgrounds/wyrm.png")
		else
			background = GetBackground("backgrounds/wyrm.png")
		end
		play_defeat_music()
	elseif (GameResult == GameDraw) then
		result = "Draw!"
		background = GetBackground("backgrounds/gullinburst.png")
	else
		return -- quit to menu
	end

	local menu = WarMenu(nil, background)
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

--	local names_font = Fonts["small-title"]
	local names_font = Fonts["large"]
	local top_offset = 57 * get_scale_factor()
	local bottom_offset = 178 * get_scale_factor()
	local description_offset = 30 * get_scale_factor()

	local c = 0
	for i=0,7 do
		if (GetPlayerData(i, "TotalUnits") > 0 and CPlayer:GetPlayer(i).Type ~= PlayerRescuePassive and CPlayer:GetPlayer(i).Type ~= PlayerRescueActive) then
			c = c + 1
		end
	end

	local line_spacing = (432 * get_scale_factor() - bottom_offset - description_offset) / c
	local player_name_spacing = 104 * get_scale_factor() / c
	menu:addLabel(_("Outcome"), offx + 106 * get_scale_factor(), offy + top_offset)
--	menu:addLabel(result, offx + 106, offy + top_offset + 21, Fonts["large-title"])
	menu:addLabel(_(result), offx + 106 * get_scale_factor(), offy + top_offset + 21 * get_scale_factor(), Fonts["large"])

	menu:addLabel(_("Units"), offx + 50 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Buildings"), offx + 140 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Copper"), offx + 230 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Lumber"), offx + 320 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Stone"), offx + 410 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
--	menu:addLabel("Oil", offx + 410, offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Kills"), offx + 500 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)
	menu:addLabel(_("Razings"), offx + 590 * get_scale_factor(), offy + bottom_offset, Fonts["large"], true)

	c = 0
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "TotalUnits") > 0 and CPlayer:GetPlayer(i).Type ~= PlayerRescuePassive and CPlayer:GetPlayer(i).Type ~= PlayerRescueActive and GetPlayerData(CPlayer:GetThisPlayer().Index, "HasContactWith", i)) then
			local name = _(GetPlayerData(i, "Name"))
			if (CPlayer:GetThisPlayer().Index == i) then
				name = name .. " - " .. _("You")
			elseif (CPlayer:GetThisPlayer():IsAllied(CPlayer:GetPlayer(i))) then
				name = name .. " - " .. _("Ally")
			elseif (CPlayer:GetThisPlayer():IsEnemy(CPlayer:GetPlayer(i))) then
				name = name .. " - " .. _("Enemy")
			else
				name = name .. " - " .. _("Neutral")
			end
			menu:addLabel(name, offx + 320 * get_scale_factor(),
				offy + bottom_offset + description_offset + player_name_spacing + line_spacing * c + 5 * get_scale_factor(),
				names_font, true)
			menu:addLabel(GetPlayerData(i, "TotalUnits"), offx + (10 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalBuildings"), offx + (100 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "copper"), offx + (190 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "lumber"), offx + (280 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalResources", "stone"), offx + (370 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
--			menu:addLabel(GetPlayerData(i, "TotalResources", "oil"), offx + 370 + 40,
--				offy + bottom_offset + description_offset + line_spacing * c + 5,
--			  Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalKills"), offx + (460 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)
			menu:addLabel(GetPlayerData(i, "TotalRazings"), offx + (550 + 40) * get_scale_factor(),
				offy + bottom_offset + description_offset + line_spacing * c + 5 * get_scale_factor(),
				Fonts["large"], true)

			c = c + 1
			
			if (c >= 8) then
				break
			end
		end
	end

--	menu:addFullButton("~!Save Replay", "s", offx + 150, offy + 440,
--		function() RunSaveReplayMenu() end)

--	menu:addFullButton(_("~!Continue"), "c", offx + 400, offy + 440,
	menu:addFullButton(_("~!Continue"), "c", (Video.Width / 2) - 112 * get_scale_factor(), offy + 440 * get_scale_factor(),
		function()
			CleanPlayers()
			play_menu_music();
			menu:stop()
		end)

	menu:run()
end
