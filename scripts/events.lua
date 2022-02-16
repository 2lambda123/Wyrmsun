--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2014-2022 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

function EventTriggers()
	Load("scripts/triggers.lua")

	-- Greebo's Shinies
	-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
	-- only appears in terrains which exist in Nidavellir (substitute for checking if there is a goblin faction, as a goblin civilization hasn't yet been implemented)
	-- Greebo inhabits a cave, so he can only appear in the map if there is a sufficient number of rocks in it
	if ((GetCurrentTileset() == "swamp" or GetCurrentTileset() == "cave") and GetTileTerrainFlagCount("rock") >= 2048) then
		AddTrigger("greebos-shinies",
			function()
				if (GameCycle == 0) then
					return false
				end
				-- requires the existence of a sufficient number of farms which would be the origin of Greebo's loot
				if ((SyncRand(100) + 1) <= 1 and GetNumUnitsAt(-1, "unit-dwarven-mushroom-farm", {0, 0}, {MaxMapWidth, MaxMapHeight}) >= 10) then
					player = GetThisPlayer()
					return true
				end
				return false
			end,
			function() 
				Event(
					"Greebo's Shinies",
					"A goblin has been seen hoarding stolen loot some distance from here. Clearing this threat would have the added benefit of giving us the opportunity to add his gold to our coffers.",
					player,
					{"~!OK"},
					{function(s)
						local greebo_player = FindUnusedPlayerSlot()
						SetPlayerData(greebo_player, "Type", PlayerComputer)
						local greebo_spawnpoint = FindAppropriateTileTypeSpawnPoint("Rock")
						unit = CreateUnit("unit-goblin-banner", greebo_player, greebo_spawnpoint)
						unit = CreateUnit("unit-goblin-spearman", greebo_player, greebo_spawnpoint)
						SetUnitVariable(unit, "Active", false)
						SetUnitVariable(unit, "Character", "greebo")
						for i=0,(PlayerMax - 2) do
							if (i ~= greebo_player) then
								SetDiplomacy(greebo_player, "enemy", i)
								SetDiplomacy(i, "enemy", greebo_player)
								AddPlayerObjective(i, "- Kill Greebo (optional)")
							end
						end
						SetPlayerData(greebo_player, "Name", "Greebo")
					end},
					nil
				)

				-- Greebo's speech
				AddTrigger("greebo-speech",
					function()
						if (PlayerHasObjective(GetThisPlayer(), "- Kill Greebo (optional)")) then
							local uncount = 0
							uncount = GetUnits(GetFactionPlayer("Greebo"))
							for unit1 = 1,table.getn(uncount) do 
								if (GetUnitVariable(uncount[unit1], "Character") == "greebo") then
									local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
									if (unit_quantity > 0) then
										player = GetThisPlayer()
										return true
									end
								end
							end
						end
						return false
					end,
					function()
						if (GetPlayerData(player, "RaceName") == "dwarf") then
							Event(
								"Greebo",
								"Greebo keeps shinies safe from nasty kobolds. And 'specially stinking dwarves.",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"goblin/icons/swordsman.png"
							)
						elseif (GetPlayerData(player, "RaceName") == "gnome") then
							Event(
								"Greebo",
								"Greebo keeps shinies safe from nasty kobolds. And 'specially stinking gnomes.",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"goblin/icons/swordsman.png"
							)
						end

						-- Greebo's End
						-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
						AddTrigger("greebos-end",
							function()
								if (GameCycle == 0) then
									return false
								end
								for i=0,(PlayerMax - 2) do
									if (GetPlayerData(i, "Name") == "Greebo" and FindHero("greebo", i) == nil) then
										player = GetThisPlayer()
										return true
									end
								end
								return false
							end,
							function() 
								Event(
									"",
									"The goblin looter is dead. He doesn't seem to have much with him. Must be hard times.",
									player,
									{"~!OK"},
									{function(s)
										SetPlayerData(player, "Resources", "copper", GetPlayerData(player, "Resources", "copper") + 400)
										for i=0,(PlayerMax - 2) do
											if (GetPlayerData(i, "Name") ~= "Greebo") then
												RemovePlayerObjective(i, "- Kill Greebo (optional)")
											end
										end
									end}
								)
								return false
							end
						)
						return false
					end
				)
				return false
			end
		)

	end
	
	if (GetNumUnitsAt(-1, "unit-long-swordsman", {0, 0}, {MaxMapWidth, MaxMapHeight}) >= 1) then
		-- Soldier offers training
		AddTrigger("swordsman-freed",
			function()
				if (GetNumUnitsAt(-1, "unit-long-swordsman", {0, 0}, {MaxMapWidth, MaxMapHeight}) >= 1) then
					local uncount = 0
					uncount = GetUnits("any")
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-long-swordsman") then
							local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
							if (unit_quantity > 0) then
								player = GetThisPlayer()
								return true
							end
						end
					end
				end
				return false
			end,
			function()
				Event(
					FindUnit("unit-long-swordsman"),
					"Thanks for freeing me from my captors. They imprisoned me hoping to ransom me for gold, but it turns out I am naught but a wandering knight, with no baron of a father to pay for my freedom. So they just left me here to rot... I can't reward you with gold, but I will teach you what I know about personal combat.",
					player,
					{"~!OK (+100 XP)"},
					{function(s)
						local uncount = 0
						uncount = GetUnits(GetThisPlayer())
						for unit1 = 1,table.getn(uncount) do 
							SetUnitVariable(uncount[unit1], "Xp", GetUnitVariable(uncount[unit1], "Xp", "Max") + 100, "Max")
							SetUnitVariable(uncount[unit1], "Xp", GetUnitVariable(uncount[unit1], "Xp", "Max"))
						end
					end}
				)
				
				return false
			end
		)
	end
				
	-- Varva Burns
	AddTrigger("varva-burns",
		function()
			if (GameCycle == 0) then
				return false
			end
			if (GetFactionExists("Varva")) then
				if (GetPlayerData(GetFactionPlayer("Varva"), "TotalNumUnitsConstructed") == 0) then
					for i=0,(PlayerMax - 2) do
						if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
							player = i
							return true
						end
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"Varva Burns",
				"We have fulfilled the king's wishes and burnt down the farm of Varva... Unfortunately, the king Dag himself has died at the raid, killed by a serf. His son Agne will now be our king and lord.",
				player,
				{"~!OK"},
				{function(s)
				end}
			)
			return false
		end
	)

	if (CMap:get():get_info():get_name() == "East Prussia") then
		-- The Fall of the Island Fortress briefing; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 343.
		AddTrigger("the-fall-of-the-island-fortress",
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,(PlayerMax - 2) do
					if (GetPlayerData(i, "RaceName") == "teuton") then
						player = i
						return true
					end
				end
				return false
			end,
			function() 
				Event(
					"",
					"Our Order has made many advances towards the east over the years, and now the time has come for us to consolidate our hold over the land of the Prusai. Their island fortress of Elk stands in our way. It shall fall to our hands!",
					player,
					{"~!OK"},
					{function(s)
						AddPlayerObjective(player, "- Destroy the Prusai fortress of Elk")
					end}
				)
				return false
			end
		)
	end
end

function Event(speaker, event_description, player, options, option_effects, event_icon, event_image, continue_automatically, arg)
	if not (arg) then
		arg = {}
	end
	
	local icon_frame = 0

	if (
		GameRunning and GetThisPlayer() == player
		and (continue_automatically == nil or continue_automatically == false)
	) then
		if (GameRunning and not IsNetworkGame()) then
			SetGamePaused(true)
		end
		
		if (GameRunning) then
			menu = WarGameMenu(panel(5))
		else
			menu = WarGrandStrategyGameMenu(panel(5))
			menu:setDrawMenusUnder(true)
		end
		menu:resize(352 * get_scale_factor(), 352 * get_scale_factor())
		
		if (speaker == nil) then
			speaker = ""
		end

		local title_label = ""
		if (type(speaker) == "number") then
			if (GetUnitVariable(speaker, "Name") ~= "") then
				title_label = GetUnitVariable(speaker, "Name")
			else
				title_label = GetUnitTypeData(GetUnitVariable(speaker, "Ident"), "Name")
			end
		elseif (type(speaker) == "string") then
			title_label = speaker
		end
		if (title_label ~= "") then
			menu:addLabel(_(title_label), 176 * get_scale_factor(), 11 * get_scale_factor())
		end

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324 * get_scale_factor(), 324 * get_scale_factor())
		l:setLineWidth(324 * get_scale_factor())
		if (event_icon == nil and type(speaker) == "string") then
			--if (title_label ~= "") then
				menu:add(l, 14 * get_scale_factor(), 76 * get_scale_factor())
			--else
			--	menu:add(l, 14 * get_scale_factor(), 38 * get_scale_factor())
			--end
		else
			menu:add(l, 14 * get_scale_factor(), 112 * get_scale_factor())
		end
		
		l:setCaption(_(event_description))

		local b
		if (type(speaker) == "number") then
			event_icon = GetIconData(GetUnitVariable(speaker, "Icon"), "File")
			icon_frame = GetIconData(GetUnitVariable(speaker, "Icon"), "Frame")
			b = PlayerColorImageButton("", GetPlayerData(GetUnitVariable(speaker, "Player"), "Color"))
			menu:add(b, 153 * get_scale_factor(), 48 * get_scale_factor())
		elseif (event_icon ~= nil) then
			icon_frame = GetIconData(event_icon, "Frame")
			event_icon = GetIconData(event_icon, "File")
			b = PlayerColorImageButton("", "gray")
			menu:add(b, 153 * get_scale_factor(), 48 * get_scale_factor())
		end
		if (b) then
			b:setNormalImage(event_icon)
			b:setPressedImage(event_icon)
			b:setDisabledImage(event_icon)
			b:set_frame(icon_frame)
			b:setSize(46 * get_scale_factor(), 38 * get_scale_factor())
			b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
			b:setIconFrameImage()
		end

		for i=1,table.getn(options) do
			local option_hotkey = ""		
			if (string.find(_(options[i]), "~!") ~= nil) then
				option_hotkey = string.sub(string.match(_(options[i]), "~!%a"), 3)
				option_hotkey = string.lower(option_hotkey)
			end

			local option_b = menu:addFullButton(_(options[i]), option_hotkey, (176 - (224 / 2)) * get_scale_factor(), (352 - 40 - 32 * (table.getn(options) - i)) * get_scale_factor(),
				function(s)
					if (GameRunning and not IsNetworkGame()) then
						SetGamePaused(false)
					end
					menu:stop()
					option_effects[i]()
				end
			)
			
			if (arg.OptionTooltips ~= nil) then
				option_b:setTooltip(_(arg.OptionTooltips[i]))
			end
		end
		
		if (table.getn(options) == 1) then -- for events with just one option, allow enter to be used as a way to close the event dialogue
			menu:addButton("", "return", -1, -1,
				function(s)
					if (GameRunning and not IsNetworkGame()) then
						SetGamePaused(false)
					end
					menu:stop()
					option_effects[1]()
				end,
				{0, 0}
			)
		end

		if (GameRunning) then
			menu:run(false)
		else
			menu:run()
		end
	else -- AIs always choose the first option
--		option_effects[SyncRand(table.getn(option_effects)) + 1]()
		option_effects[1]()
	end
end

function Tip(tip_name, tip_description)
	if (GetArrayIncludes(wyr.preferences.TipsShown, tip_name)) then
		return
	end

	if (GameRunning and not IsNetworkGame()) then
		SetGamePaused(true)
	end
	
	local menu
	
	if (GameRunning) then
		menu = WarGameMenu(panel(2))
	else
		menu = WarGrandStrategyGameMenu(panel(2))
		menu:setDrawMenusUnder(true)
	end
	menu:resize(288 * get_scale_factor(), 256 * get_scale_factor())

	menu:addLabel(_(tip_name), 144 * get_scale_factor(), 11 * get_scale_factor())

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(260 * get_scale_factor(), (128 + 36) * get_scale_factor())
	l:setLineWidth(260 * get_scale_factor())
	menu:add(l, 14 * get_scale_factor(), 35 * 1.5 * get_scale_factor())
	l:setCaption(_(tip_description))

	if (tip_name ~= "" and GetArrayIncludes(wyr.preferences.TipsShown, tip_name) == false) then
		table.insert(wyr.preferences.TipsShown, tip_name)
		SavePreferences()
	end
			
	menu:addHalfButton(_("~!Close"), "c", (288 / 2 - (106 / 2)) * get_scale_factor(), (256 - 40) * get_scale_factor(),
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			menu:stop()
		end
	)
	
	menu:addButton("", "return", -1, -1,
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			menu:stop()
		end,
		{0, 0}
	)	
	
	if (GameRunning) then
		menu:run(false)
	else
		menu:run()
	end
end

function GenericDialog(title, message, tooltip, icon, player_color, frame)
	if (GameRunning and not IsNetworkGame()) then
		SetGamePaused(true)
	end
	
	local menu
	local icon_graphics
	
	if (not frame) then
		frame = 0
	end
	
	if (icon) then
		icon_graphics = GetIconData(icon, "File")
	end
	
	
	if (GameRunning or CEditor:get():is_running()) then
		menu = WarGameMenu(panel(1))
	else
		menu = WarGrandStrategyGameMenu(panel(1))
		menu:setDrawMenusUnder(true)
	end

	menu:addLabel(_(title), 128 * get_scale_factor(), 11 * get_scale_factor())
	
	if (icon) then
		if not (player_color) then
			player_color = "red"
		end
		local icon_widget = PlayerColorImageButton("", player_color)
		menu:add(icon_widget, 105 * get_scale_factor(), 48 * get_scale_factor())
		icon_widget:setNormalImage(icon_graphics)
		icon_widget:setPressedImage(icon_graphics)
		icon_widget:setDisabledImage(icon_graphics)
		icon_widget:set_frame(frame)
		icon_widget:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		icon_widget:setIconFrameImage()
	end

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(228 * get_scale_factor(), 256 * get_scale_factor())
	l:setLineWidth(228 * get_scale_factor())
	if (icon) then
		menu:add(l, 14 * get_scale_factor(), 112 * get_scale_factor())
	else
		menu:add(l, 14 * get_scale_factor(), 35 * get_scale_factor())
	end
	l:setCaption(_(message))

	local ok_button = menu:addFullButton(_("~!OK"), "o", 16 * get_scale_factor(), (248 - (36 * 0)) * get_scale_factor(),
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			menu:stop()
		end
	)
	if (tooltip) then
		ok_button:setTooltip(_(tooltip))
	end
	
	menu:addButton("", "return", -1, -1,
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			menu:stop()
		end,
		{0, 0}
	)	
	
	if (GameRunning or CEditor:get():is_running()) then
		menu:run(false)
	else
		menu:run()
	end
end
