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
--      (c) Copyright 1998-2020 by Lutz Sammer, Pali Rohár and Andrettin
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

-- For documentation see stratagus/doc/scripts/scripts.html
DebugPrint("Stratagus default config file loading ...\n")

-------------------------------------------------------------------------------
--  Version
-------------------------------------------------------------------------------

wyrmsun = {}

wyrmsun.Name = "Wyrmsun"
wyrmsun.Version = "4.0.0"
wyrmsun.Homepage = ""
wyrmsun.Licence = "GPL 2.0"
wyrmsun.Copyright = "Copyright (c) 2013-2020 by Andrettin"

-------------------------------------------------------------------------------
--  Config-Part
-------------------------------------------------------------------------------

MapDirectories = {"maps/"}
ModDirectories = {"mods/"}

if (table.getn(ListDirsInDirectory("../../workshop/content/370070/")) > 0) then
	table.insert(ModDirectories, "../../workshop/content/370070/")
end


LoadedGame = false

InitFuncs = {}
function InitFuncs:add(f)
	table.insert(self, f)
end

function InitGameVariables()
	for i=1,table.getn(InitFuncs) do
		InitFuncs[i]()
	end
end

load_database(true)
load_defines()

DefineBoolFlags("MetalImprove", "LumberImprove", "OilImprove", "StoneImprove")

--  Edit the next sections to get your look and feel.
--  Note, some of those values are overridden by user preferences,
--  see preferences.lua

--  Enter your default title screen.
SetTitleScreens(
-- FIXME: No good title image yet
--  {Image = "ui/title.png", Music = "music/battle_theme_a.ogg", Timeout = 20}
)

-------------------------------------------------------------------------------
--	Music play list -	Insert your titles here
-------------------------------------------------------------------------------

--  Set the game name. It's used so we can mantain different savegames
--  and setting. Might also be used for multiplayer.
SetGameName("wyr")
SetFullGameName(wyrmsun.Name)

SetMenuRace("dwarf")

SetSelectionStyle("corners")
Preference.ShowSightRange = false
Preference.ShowAttackRange = false
Preference.ShowReactionRange = false
Preference.AiExplores = true
Preference.IconsShift = true
Preference.MineNotifications = true
Preference.PauseOnLeave = false
Preference.GrayscaleIcons = true
Preference.SepiaForGrayscale = true

Preference.ShowOrders = 2

--  Enable/disable the short display of the orders after command.
--  FIXME: planned
--(set-order-feedback! #t)
--(set-order-feedback! #f)

-------------------------------------------------------------------------------
--  Game modification

--  Edit this to enable/disable extended features.
--    Currently enables some additional buttons.
wyrmsun.extensions = true
--wyrmsun.extensions = false

--  Edit this to enable/disable the training queues.
SetTrainingQueue(true)
--SetTrainingQueue(false)

--  Edit this to enable/disable building capture.
--SetBuildingCapture(true)
SetBuildingCapture(false)

--  Edit this to enable/disable the reveal of the attacker.
--SetRevealAttacker(true)
SetRevealAttacker(false)

-------------------------------------------------------------------------------

--  If you prefer fighters are attacking by right clicking empty space
--  uncomment this (you must comment the next).
--  FIXME: this option will be renamed
--RightButtonAttacks()

--  If you prefer fighters are moving by right clicking empty space
--  uncomment this.
--  FIXME: this option will be renamed
RightButtonMoves()

--  Set the name of the missile to use when clicking
SetClickMissile("missile-green-cross")

--  Set the name of the missile to use when displaying damage
SetDamageMissile("missile-hit")

--  Uncomment next, to reveal the complete map.
--RevealMap()

SetFogOfWarGraphics("tilesets/fogofwar.png")

-------------------------------------------------------------------------------

Load("scripts/resources.lua")

-------------------------------------------------------------------------------

--  If color-cycle-all is off (#f) only the tileset palette is color cycled.
-- Otherwise (#t) all palettes are color cycled.
SetColorCycleAll(false)
ClearAllColorCyclingRange()
AddColorCyclingRange(38, 47) -- water

-------------------------------------------------------------------------------

--  Edit next to increase the speed, for debugging.

--  Decrease the mining time by this factor.
--SetSpeedResourcesHarvest("copper", 10)
--  Decrease the time in a gold deposit by this factor.
--SetSpeedResourcesReturn("gold", 10)
--  Decrease the time for chopping a tree by this factor.
--SetSpeedResourcesHarvest("lumber", 10)
--  Decrease the time in a lumber deposit by this factor.
--SetSpeedResourcesReturn("lumber", 10)
--  Decrease the time for haul oil by this factor.
--SetSpeedResourcesHarvest("oil", 10)
--  Decrease the time in an oil deposit by this factor.
--SetSpeedResourcesReturn("oil", 10)
--  Decrease the time to build a unit by this factor.
--SetSpeedBuild(10)
--  Decrease the time to train a unit by this factor.
--SetSpeedTrain(10)
--  Decrease the time to upgrade a unit by this factor.
--SetSpeedUpgrade(10)
--  Decrease the time to research by this factor.
--SetSpeedResearch(10)

--  You can do all the above with this
InitFuncs:add(function()
	SetSpeeds(1)
end)

-------------------------------------------------------------------------------

AStar("fixed-unit-cost", 1000, "moving-unit-cost", 20, "know-unseen-terrain", "unseen-terrain-cost", 2)

-------------------------------------------------------------------------------

--  Maximum number of selectable units
SetMaxSelectable(200)

--  All player food unit limit
SetAllPlayersUnitLimit(200)
--  All player building limit
SetAllPlayersBuildingLimit(200)
--  All player total unit limit
SetAllPlayersTotalUnitLimit(400)

-------------------------------------------------------------------------------

DefineVariables(
	"Variation", {Enable = true},
	"Slow", {Max = 1000, Value = 0, Enable = true},
	"GraphicsVariation", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"LifeStage", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"LastCycle", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"CustomAIState", {Max = 99999, Value = 0, Increase = 0, Enable = true}
)

-------------------------------------------------------------------------------
-- Custom Player Data (i.e. Objectives)

	CustomPlayerData = { Player1 = { Number = 0, Objectives = {} }, Player2 = { Number = 1, Objectives = {} }, Player3 = { Number = 2, Objectives = {} }, Player4 = { Number = 3, Objectives = {} }, Player5 = { Number = 4, Objectives = {} }, Player6 = { Number = 5, Objectives = {} }, Player7 = { Number = 6, Objectives = {} }, Player8 = { Number = 7, Objectives = {} }, Player9 = { Number = 8, Objectives = {} }, Player10 = { Number = 9, Objectives = {} }, Player11 = { Number = 10, Objectives = {} }, Player12 = { Number = 11, Objectives = {} }, Player13 = { Number = 12, Objectives = {} }, Player14 = { Number = 13, Objectives = {} }, Player15 = { Number = 14, Objectives = {} }, Player16 = { Number = 15, Objectives = {} } }

-------------------------------------------------------------------------------
--  Default triggers for single player
--    (FIXME: must be combined with game types)

function SinglePlayerTriggers()
	AddTrigger("default-defeat",
		function()
			local total_units = GetPlayerData(GetThisPlayer(), "TotalNumUnitsConstructed") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-goblin-glider")
			total_units = total_units - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gold-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-silver-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-copper-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-iron-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-mithril-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-diamond-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-emerald-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-coal-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-yale-hunting-lodge")
			if (GetCivilizationClassUnitType("farm", GetPlayerData(GetThisPlayer(), "RaceName")) ~= nil) then
				total_units = total_units - GetPlayerData(GetThisPlayer(), "UnitTypesCount", GetCivilizationClassUnitType("farm", GetPlayerData(GetThisPlayer(), "RaceName")))
			end
			if (total_units <= 0 and PlayerHasObjective(GetThisPlayer(), "- Defeat the Norlunds") == false and (GameCycle > 1000 or mapinfo.description ~= "Caverns of Flame" or GetPlayerData(GetThisPlayer(), "Name") ~= "shinsplitter-clan")) then
				return true
			else
				return false
			end
		end,
		function()
			ActionDefeat()
			return true
		end
	)

	AddTrigger("default-victory",
--		function() return GetNumOpponents(GetThisPlayer()) == 0 end,
		function()
			if (GetNumRivals(GetThisPlayer()) == 0 and PlayerHasObjective(GetThisPlayer(), "- Defeat your rivals")) then
				return true
			else
				return false
			end
		end,
		function()
			ActionVictory()
			return true
		end
	)

	if (LoadedGame == false) then
		for key, value in pairs(CustomPlayerData) do
			for i=1,table.getn(CustomPlayerData[key].Objectives) do
				table.remove(CustomPlayerData[key].Objectives, i)
			end
		end

		for key, value in pairs(CustomPlayerData) do
			CustomPlayerData[key].Objectives = {}
			AddPlayerObjective(CustomPlayerData[key].Number, "- Defeat your rivals")
		end
	end
	
	if (LoadedGame) then -- if loading a game, add objectives to the display
		ClearObjectives()
		for key, value in pairs(CustomPlayerData) do
			if (CustomPlayerData[key].Number == GetThisPlayer() and table.getn(CustomPlayerData[key].Objectives) > 0) then
				for i=1,table.getn(CustomPlayerData[key].Objectives) do
					AddObjective(_(CustomPlayerData[key].Objectives[i]))
				end
			end
		end
	end
	
	CreateDecorations()

	StandardTriggers()

	if (LoadedGame == false) then
		DefineAllowNormalUnits("A")
		ApplyTechLevels()
	end

	if (GetCurrentQuest() ~= "" and GetQuestData(GetCurrentQuest(), "Scenario") ~= "") then
		if (table.getn(GetQuestData(GetCurrentQuest(), "Objectives")) > 0) then -- if quest has pre-set objectives, add them now
			RemovePlayerObjective(GetThisPlayer(), "- Defeat your rivals")
			for i=1, table.getn(GetQuestData(GetCurrentQuest(), "Objectives")) do
				AddPlayerObjective(GetThisPlayer(), GetQuestData(GetCurrentQuest(), "Objectives")[i])
			end
		end
		Load(GetQuestData(GetCurrentQuest(), "Scenario"))
	end

	if (LoadedGame == false and GetCurrentCampaign() ~= "" and GetCampaignData(GetCurrentCampaign(), "Sandbox") == false) then
		RemovePlayerObjective(GetThisPlayer(), "- Defeat your rivals")
	end
	
	-- events are limited to the campaign mode
	if (GetCurrentCampaign() ~= "") then
		EventTriggers()
	end
		
	LoadedGame = false

	LoadCivilizationUI(GetPlayerData(GetThisPlayer(), "RaceName")) -- reload the UI at start, so that all map layer buttons appear correctly
end

function StandardTriggers()
	local RandomNumber = 0

	-- Tips
	if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Level Up") == false) then
			AddTrigger("tip-level-up",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "LevelUp") >= 1 and GetUnitVariable(GetSelectedUnits()[1], "Player") == GetThisPlayer()) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Level Up", "Your unit has leveled up! Click on the \"Choose Level-Up Upgrade\" button in its command button panel to select a level-up upgrade for it.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Experience") == false) then
			AddTrigger("tip-experience",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitBoolFlag(GetSelectedUnits()[1], "Organic") and GetUnitVariable(GetSelectedUnits()[1], "Player") == GetThisPlayer()) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Experience", "Organic units you control can earn experience through combat. When an enemy is killed, experience is divided between your nearby organic units. Once enough experience has been attained, your unit will level up, allowing it to upgrade to a better unit type or to learn a new ability. After units have exhausted the available level up upgrades, they earn +15 Hit Points upon leveling up.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Persistent Heroes") == false) then
			AddTrigger("tip-persistent-heroes",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and GetUnitVariable(GetSelectedUnits()[1], "Character") ~= ""
						and GetUnitVariable(GetSelectedUnits()[1], "Player") == GetThisPlayer()
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Persistent Heroes", "Each persistent hero (with the exception of custom ones) has a unique icon. They carry over their experience level, inventory and abilities across scenarios and even game modes.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Bura") == false) then
			AddTrigger("tip-bura",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-worker") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Bura", "The Bura is the worker unit of the Germanic civilization. It is used to build structures, harvest resources and repair buildings. Buras can be trained at the Chieftain's Hall.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Erala") == false) then
			AddTrigger("tip-erala",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-warrior") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Erala", "The Erala is the melee infantry unit of the Germanic civilization. It is the most basic military unit available for it. Eralas can be trained at the War Lodge.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Skutan") == false) then
			AddTrigger("tip-skutan",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-archer") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Skutan", "The Skutan is the shooter unit of the Germanic civilization, and can attack from a distance. It is available for training at the War Lodge, if a Carpenter's Shop is built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Chieftain's Hall") == false) then
			AddTrigger("tip-chieftains-hall",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-town-hall") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Chieftain's Hall", "The Chieftain's Hall can be used to train worker units. It also serves as a place where workers can return resources to, after harvesting. This structure can only be built on top of a Settlement Site.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Lodge") == false) then
			AddTrigger("tip-war-lodge",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-barracks") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("War Lodge", "The War Lodge can be used to train military units.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Carpenter's Shop") == false) then
			AddTrigger("tip-carpenters-shop",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-carpenters-shop") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Carpenter's Shop", "The Carpenter's Shop can be used to research some technologies, and its presence gives a lumber processing bonus of 25%.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Smithy") == false) then
			AddTrigger("tip-smithy",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-smithy"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-norse-smithy"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-smithy"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-latin-smithy"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-smithy"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-brising-smithy"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Smithy", "The Smithy can be used to research technologies improving your melee units and siege weapons.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Temple") == false) then
			AddTrigger("tip-temple",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-norse-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-temple")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Temple", "Temples regenerate the health of nearby organic units.")
					return false
				end
			)
		end
		
		--[[
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Krieger") == false) then
			AddTrigger("tip-krieger",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-suebi-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-frank-swordsman"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Krieger", "The Krieger (or Kregar) is the melee infantry unit of the Anglo-Saxon, Frankish, Suebi and Teuton civilizations, replacing the Erala.")
					return false
				end
			)
		end
		--]]
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Swordsman") == false) then
			AddTrigger("tip-swordsman",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-suebi-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-frank-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-norse-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-slavic-swordsman"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Swordsman", "The Swordsman is the melee infantry unit of the Anglo-Saxon, Frankish, Norse, Suebi and Teuton civilizations, replacing the Erala.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Catapult") == false) then
			AddTrigger("tip-catapult",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-catapult") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Catapult", "The Catapult is the siege weapon of the Teuton civilization. It can attack from a long distance, and deals splash damage. It is available for training at the Barracks, if a Lumber Mill and a Smithy are built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Watch Tower") == false) then
			AddTrigger("tip-watch-tower",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-watch-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-norse-watch-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-watch-tower")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Watch Tower", "The Watch Tower provides you with extended vision, and you can use it to garrison a unit inside. A ranged unit garrisoned in a Watch Tower can perform attacks from within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Guard Tower") == false) then
			AddTrigger("tip-guard-tower",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-guard-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-guard-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-guard-tower")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Guard Tower", "The Guard Tower provides you with extended vision, as well as space for two units to garrison inside. Ranged units garrisoned in a Guard Tower can perform attacks from within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Miner") == false) then
			AddTrigger("tip-miner",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-miner"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-brising-miner"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Miner", "The Miner is the worker unit of the Dwarven civilization. It is used to build structures, harvest resources and repair buildings. Miners can be trained at the Mead Hall. Miners have a gathering rate bonus when harvesting metals, and a malus when gathering lumber.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Axefighter") == false) then
			AddTrigger("tip-axefighter",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-axefighter") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Axefighter", "The Axefighter is the melee infantry unit of the Dwarven civilization. It is the most basic military unit available for it. Axefighters can be trained at the War Hall.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Scout") == false) then
			AddTrigger("tip-scout",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-scout" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-joruvellir-scout")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Scout", "The Scout is the shooter unit of the Dwarven civilization, and can attack from a distance. It is available for training at the War Hall, if a Lumber Mill is built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Ballista") == false) then
			AddTrigger("tip-ballista",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-ballista") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Ballista", "The Ballista is the siege weapon of the Dwarven civilization. It can attack from a long distance, and deals splash damage. It is available for training at the War Hall, if a Lumber Mill and a Smithy are built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Mead Hall") == false) then
			AddTrigger("tip-mead-hall",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-town-hall")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Mead Hall", "The Mead Hall can be used to train worker units. It also serves as a place where workers can return resources to, after harvesting. This structure can only be built on top of a Settlement Site.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Hall") == false) then
			AddTrigger("tip-war-hall",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-barracks") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("War Hall", "The War Hall can be used to train military units.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Lumber Mill") == false) then
			AddTrigger("tip-lumber-mill",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-lumber-mill"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-lumber-mill"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-norse-lumber-mill"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-lumber-mill"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Lumber Mill", "The Lumber Mill can be used to research some technologies, and its presence gives a lumber processing bonus of 25%.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Sentry Tower") == false) then
			AddTrigger("tip-sentry-tower",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-sentry-tower") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Sentry Tower", "The Sentry Tower provides you with extended vision, and you can use it to garrison a unit inside. A ranged unit garrisoned in a Sentry Tower can perform attacks from within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Scavenger") == false) then
			AddTrigger("tip-scavenger",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-derro-worker")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Scavenger", "The Scavenger is the worker unit of the Gnomish civilization. It is used to build structures, harvest resources and repair buildings. Scavengers can be trained at the Town Hall.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Recruit") == false) then
			AddTrigger("tip-recruit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-recruit" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-recruit")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Recruit", "The Recruit is the melee infantry unit of the Gnomish civilization. It is the most basic military unit available for it. Recruits can be trained at the Barracks.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Herbalist") == false) then
			AddTrigger("tip-herbalist",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-herbalist" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-herbalist")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Herbalist", "The Herbalist is the priest unit of the Gnomish civilization. It can heal and see far away locations.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Machine") == false) then
			AddTrigger("tip-war-machine",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-war-machine") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("War Machine", "The War Machine is the siege weapon of the Goblin civilization. It can attack from a long distance, and deals splash damage. Although it has less HP than the siege weapons of other civilizations, the Goblin War Machine has a melee attack. It is available for training at the Barracks, if a Lumber Mill and a Fugla Forge are built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Wyrm") == false) then
			AddTrigger("tip-wyrm",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-wyrm") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Wyrm", "Wyrms are extremely dangerous creatures which can fell even a group of experienced warriors. Avoid if possible.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Mercenary Camp") == false) then
			AddTrigger("tip-mercenary-camp",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-mercenary-camp") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Mercenary Camp", "The Mercenary Camp can be used to hire thieves, as well as mercenary companies.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Gold Rock") == false) then
			AddTrigger("tip-gold-rock",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gold-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Gold Rock", "Gold rocks can be mined for gold, which when processed is converted to copper at a 400% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Gold Deposit") == false) then
			AddTrigger("tip-gold-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit_gold_deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Gold Deposit", "Gold deposits are the most durable source of gold. Build a gold mine on top of it to harvest the gold within, which when processed is converted to copper at a 400% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Silver Rock") == false) then
			AddTrigger("tip-silver-rock",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-silver-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Silver Rock", "Silver rocks can be mined for silver, which when processed is converted to copper at a 200% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Silver Deposit") == false) then
			AddTrigger("tip-silver-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit_silver_deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Silver Deposit", "Silver deposits are the most durable source of silver. Build a silver mine on top of it to harvest the silver within, which when processed is converted to copper at a 200% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Copper Rock") == false) then
			AddTrigger("tip-copper-rock",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-copper-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Copper Rock", "Copper rocks can be mined for copper.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Copper Deposit") == false) then
			AddTrigger("tip-copper-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit_copper_deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Copper Deposit", "Copper deposits are the most durable source of copper. Build a copper mine on top of it to harvest the copper within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Iron Deposit") == false) then
			AddTrigger("tip-iron-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit_iron_deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Iron Deposit", "Iron deposits serve as a source of iron. Build an iron mine on top of it to harvest the iron within, which when processed is converted to copper at a 100% rate. Iron mines require the Ironworking technology.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Mithril Deposit") == false) then
			AddTrigger("tip-mithril-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit_mithril_deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Mithril Deposit", "Mithril deposits serve as a source of mithril. Build a mithril mine on top of it to harvest the mithril within, which when processed is converted to copper at a 800% rate. Mithril mines require the Ironworking technology.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Wood Pile") == false) then
			AddTrigger("tip-wood-pile",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-wood-pile") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Wood Pile", "Wood piles can be harvested for lumber. When a building is destroyed, it has a chance to spawn a wood pile.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Stone Pile") == false) then
			AddTrigger("tip-stone-pile",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-stone-pile") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Stone Pile", "Stone piles can be harvested for stone. When a building that costs stone is destroyed, it has a chance to spawn a stone pile.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Log") == false) then
			AddTrigger("tip-log",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-log") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Log", "Logs can be harvested for lumber.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Tree Stump") == false) then
			AddTrigger("tip-tree-stump",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-tree-stump") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Tree Stump", "A unit can hide from its enemies within a tree stump. Tree stumps can also be chopped for lumber.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Hole") == false) then
			AddTrigger("tip-hole",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-hole") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Hole", "A unit can hide from its enemies within a hole.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Raft") == false) then
			AddTrigger("tip-raft",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-raft") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Raft", "Rafts can be used by units to traverse water bodies. To use a raft, place a unit on top of it, and then it will use the raft to move when ordered to pass through water.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Food") == false) then
			AddTrigger("tip-food",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-cheese" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-carrots")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Food", "Food items provide healing to units. They can be carried by units who have an inventory, or used directly by units who don't. Healing items are automatically used if the unit is low enough on health.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Potion of Healing") == false) then
			AddTrigger("tip-potion-of-healing",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-potion-of-healing") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Potion of Healing", "Potions of healing can greatly increase the survivability of your units. They can be carried by units who have an inventory, or used directly by units who don't. Healing items are automatically used if the unit is low enough on health.")
					return false
				end
			)
		end
	end
end

function GetCivilizationAvailableFactions(civilization, faction_type)
	if not (faction_type) then
		faction_type = ""
	end

	local civilization_factions = GetFactions(civilization, faction_type)

	-- remove faction names already in use
	for i=0,(PlayerMax - 2) do
		if (table.getn(civilization_factions) > 0 and GetPlayerData(i, "RaceName") == civilization) then
			RemoveElementFromArray(civilization_factions, GetPlayerData(i, "Faction"))
		end
	end
	return civilization_factions
end

function HasCivilizationAvailableFactions(civilization, faction_type)
	local available_factions = GetCivilizationAvailableFactions(civilization, faction_type)
	local players_without_faction = 0

	-- remove faction names already in use
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "RaceName") == civilization and GetPlayerData(i, "Faction") == "") then
			players_without_faction = players_without_faction + 1
		end
	end
	
	if ((table.getn(available_factions) - players_without_faction) > 0) then
		return true
	else
		return false
	end
end

function GetCivilizationExists(civilization)
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "RaceName") == civilization) then
			return true
		end
	end
	return false
end

function GetFactionExists(faction, only_living)
	for i=0,(PlayerMax - 2) do
		if (CPlayer:GetPlayer(i).Type ~= PlayerNobody and (GetPlayerData(i, "Name") == faction or GetPlayerData(i, "Faction") == faction) and (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 or not only_living)) then
			return true
		end
	end
	return false
end

function GetCivilizationPlayer(civilization)
	local loop = true
	local loop_count = 0
	local civilization_player = nil
	while (loop) do
		civilization_player = SyncRand(GetNumPlayers())
		if (GetPlayerData(civilization_player, "RaceName") == civilization) then
			loop = false
		end
		loop_count = loop_count + 1

		if (loop_count > 100) then
			return false
		end
	end
	return civilization_player
end

function GetNumCivilizationPlayers(civilization)
	local player_count = 0
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "TotalNumUnits") > 0 and GetPlayerData(i, "RaceName") == civilization) then
			player_count = player_count + 1
		end
	end
	return player_count
end

function GetFactionPlayer(faction)
	for i=0,(PlayerMax - 2) do
		if (CPlayer:GetPlayer(i).Type ~= PlayerNobody and (GetPlayerData(i, "Name") == faction or GetPlayerData(i, "Faction") == faction)) then
			return i
		end
	end
	return nil
end

function GetNumRivals(player)
	local rival_count = 0
	for i=0,(PlayerMax - 2) do
		if (player ~= i and (CPlayer:GetPlayer(i).Type == PlayerPerson or CPlayer:GetPlayer(i).Type == PlayerComputer) and (CPlayer:GetPlayer(player):IsAllied(CPlayer:GetPlayer(i)) == false or CPlayer:GetPlayer(i):IsAllied(CPlayer:GetPlayer(player)) == false) and (GetPlayerData(i, "Faction") == "" or GetFactionData(GetPlayerData(i, "Faction"), "Type") == "tribe" or GetFactionData(GetPlayerData(i, "Faction"), "Type") == "polity") and GetPlayerData(player, "HasContactWith", i)) then
			local total_units = GetPlayerData(i, "TotalNumUnitsConstructed") - GetPlayerData(i, "UnitTypesCount", "unit-goblin-glider")
			total_units = total_units - GetPlayerData(i, "UnitTypesCount", "unit-gold-mine") - GetPlayerData(i, "UnitTypesCount", "unit-silver-mine") - GetPlayerData(i, "UnitTypesCount", "unit-copper-mine") - GetPlayerData(i, "UnitTypesCount", "unit-diamond-mine") - GetPlayerData(i, "UnitTypesCount", "unit-emerald-mine") - GetPlayerData(i, "UnitTypesCount", "unit-yale-hunting-lodge")
			if (GetCivilizationClassUnitType("farm", GetPlayerData(i, "RaceName")) ~= nil) then
				total_units = total_units - GetPlayerData(i, "UnitTypesCount", GetCivilizationClassUnitType("farm", GetPlayerData(i, "RaceName")))
			end
			if (total_units > 0) then
				rival_count = rival_count + 1
			end
		end
	end
	return rival_count
end

function GetNumAllies(player)
	local ally_count = 0
	for i=0,(PlayerMax - 2) do
		if (player ~= i and (CPlayer:GetPlayer(i).Type == PlayerPerson or CPlayer:GetPlayer(i).Type == PlayerComputer) and CPlayer:GetPlayer(player):IsAllied(CPlayer:GetPlayer(i)) and CPlayer:GetPlayer(i):IsAllied(CPlayer:GetPlayer(player))) then
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0) then
				ally_count = ally_count + 1
			end
		end
	end
	return ally_count
end

function GetNumPlayers()
	local player_count = 0
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "TotalNumUnits") > 0) then
			player_count = player_count + 1
		end
	end
	return player_count
end

function DeathExplosion(unit, pixel_x, pixel_y)
	local nearby_uncount = GetUnitsAroundUnit(unit, 1, true)
	for unit1 = 1,table.getn(nearby_uncount) do 
		if (GetUnitVariable(nearby_uncount[unit1], "HitPoints") > 0) then
			local damage = 6
			damage = math.floor(damage * (100 - GetUnitVariable(nearby_uncount[unit1], "FireResistance")) / 100)
			if (GameSettings.NoRandomness) then
				damage = damage - math.floor(((damage + 2) / 2) / 2) -- if no randomness setting is used, then the damage will always return what would have been the average damage with randomness
			else
				damage = damage - SyncRand(math.floor((damage + 2) / 2))
			end
			DamageUnit(unit, nearby_uncount[unit1], damage)
		end
	end
end

function AddPlayerObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			if (player == GetThisPlayer()) then
				AddObjective(_(objective))
			end
			table.insert(CustomPlayerData[key].Objectives, objective)
		end
	end
end

function RemovePlayerObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			RemoveElementFromArray(CustomPlayerData[key].Objectives, objective)
		end
	end
	if (player == GetThisPlayer()) then
		ClearObjectives()
		for key, value in pairs(CustomPlayerData) do
			if (CustomPlayerData[key].Number == player and table.getn(CustomPlayerData[key].Objectives) > 0) then
				for i=1,table.getn(CustomPlayerData[key].Objectives) do
					AddObjective(_(CustomPlayerData[key].Objectives[i]))
				end
			end
		end
	end
end

function PlayerHasObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			return GetArrayIncludes(CustomPlayerData[key].Objectives, objective)
		end
	end
	return false
end

function GetPlayerObjectives(player)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			return CustomPlayerData[key].Objectives
		end
	end
	return nil
end

function FindUnit(unit_type, player, random_unit, last_unit, settlement)
	local uncount = 0
	
	if (player ~= nil) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	local units_found = {}
	
	if (last_unit) then
		for unit1 = table.getn(uncount), 1, -1 do
			if (GetUnitVariable(uncount[unit1], "Ident") == unit_type or (unit_type == "town_hall" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "TownHall")) or (unit_type == "any_organic" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) or unit_type == "any") then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built") and (settlement == nil or GetUnitVariable(uncount[unit1], "Settlement") == settlement)) then
					return uncount[unit1]
				end
			end
		end
	else
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == unit_type or (unit_type == "town_hall" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "TownHall")) or (unit_type == "any_organic" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) or unit_type == "any") then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built") and (settlement == nil or GetUnitVariable(uncount[unit1], "Settlement") == settlement)) then
					if (random_unit) then
						table.insert(units_found, uncount[unit1])
					else
						return uncount[unit1]
					end
				end
			end
		end
	end
	
	if (table.getn(units_found) > 0) then
		return units_found[SyncRand(table.getn(units_found)) + 1]
	end
	
	return nil
end

function FindUnitOfClass(unit_class, player, random_unit, last_unit)
	local uncount = 0
	
	if (player ~= nil) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	local units_of_class = {}
	
	if (last_unit) then
		for unit1 = table.getn(uncount), 1, -1 do
			if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == unit_class) then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built")) then
					return uncount[unit1]
				end
			end
		end
	else
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == unit_class) then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built")) then
					if (random_unit) then
						table.insert(units_of_class, uncount[unit1])
					else
						return uncount[unit1]
					end
				end
			end
		end
	end
	
	if (table.getn(units_of_class) > 0) then
		return units_of_class[SyncRand(table.getn(units_of_class)) + 1]
	end
	
	return nil
end

function FindHero(hero, player)
	local uncount = 0
	
	if (player) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1], "Character") == hero and GetUnitVariable(uncount[unit1], "CustomCharacter") == false) then
			return uncount[unit1]
		end
	end
	
	return nil
end

function FindUnique(unique, player)
	local uncount = 0
	
	if (player) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1], "Unique") == unique) then
			return uncount[unit1]
		end
	end
	
	return nil
end

function PersistencyUpdates()
	if (wyr.preferences.QuestsCompleted ~= nil) then
		for i=1, table.getn(wyr.preferences.QuestsCompleted) do
			SetQuestCompleted(wyr.preferences.QuestsCompleted[i])
		end
		wyr.preferences.QuestsCompleted = nil
		SavePreferences()
	end
	
	if (wyr.preferences.TechnologyAcquired ~= nil) then
		wyr.preferences.TechnologyAcquired = nil
		SavePreferences()
	end
	
	for i=1,table.getn(wyr.preferences.EnabledMods) do
		if not (CanAccessFile(wyr.preferences.EnabledMods[i])) then
			wyr.preferences.EnabledMods[i] = nil
		end
		SavePreferences()
	end
	
	if (wyr.preferences.Heroes ~= nil) then
		for key, value in pairs(wyr.preferences.Heroes) do
			local hero_type = GetCharacterData(wyr.preferences.Heroes[key].name, "Type")
			local hero_abilities = {}
			if (wyr.preferences.Heroes[key].upgrades ~= nil) then
				for i=1,table.getn(wyr.preferences.Heroes[key].upgrades) do
					if (string.find(wyr.preferences.Heroes[key].upgrades[i], "upgrade") ~= nil) then
						table.insert(hero_abilities, wyr.preferences.Heroes[key].upgrades[i])
					else
						hero_type = wyr.preferences.Heroes[key].upgrades[i]
					end
				end
			end
			DefineCharacter(wyr.preferences.Heroes[key].name, {
				Level = wyr.preferences.Heroes[key].level,
				Abilities = hero_abilities,
				Type = hero_type
			})
		end
		wyr.preferences.Heroes = nil
		SavePreferences()
		SaveHeroes()
	end
	
	if (wyr.preferences.SavedGrandStrategyGames ~= nil) then
		wyr.preferences.SavedGrandStrategyGames = nil
	elseif (wyr.preferences.GrandStrategySaveGames ~= nil) then
		wyr.preferences.GrandStrategySaveGames = nil
		SavePreferences()
	end
		
	if (wyr.preferences.ShowOrders ~= nil) then
		if (wyr.preferences.ShowOrders == 2) then
			wyr.preferences.ShowPathlines = true
			Preference.ShowPathlines = wyr.preferences.ShowPathlines
		end
		wyr.preferences.ShowOrders = nil
		SavePreferences()
	end
	
	if (wyr.preferences.ButtonHotKeysByPosition ~= nil) then
		if (wyr.preferences.ButtonHotKeysByPosition == true) then
			wyr.preferences.HotkeySetup = 1
		else
			wyr.preferences.HotkeySetup = 0
		end
		wyr.preferences.ButtonHotKeysByPosition = nil
		Preference.HotkeySetup = wyr.preferences.HotkeySetup
		SavePreferences()
	end
	
	local last_version = tonumber(tostring(string.gsub(wyr.preferences.LastVersionPlayed, "%.", "")))
	
	if (last_version < 354 and wyr.preferences.GameSpeed == 60) then -- fix to wrong default game speed before version 3.5.4
		wyr.preferences.GameSpeed = 30
		SetGameSpeed(wyr.preferences.GameSpeed)
		SavePreferences()
	end
	
	if (wyr.preferences.LastVersionPlayed ~= wyrmsun.Version) then
		wyr.preferences.LastVersionPlayed = wyrmsun.Version
		SavePreferences()
	end
end

function LoadHeroes()
	local i
	local f
	local u = 1

	local fileslist = ListFilesInDirectory("heroes/", true)
	for i,f in ipairs(fileslist) do
		Load("heroes/" .. f)
		u = u + 1
	end
		
	u = 1
	-- list the subdirectories in the heroes folder
	local dirlist = {}
	local dirs = ListDirsInDirectory("heroes/", true)
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	u = 1
	-- get the heroes in the subdirectories of the heroes folder
	for j=1,table.getn(dirlist) do
		fileslist = ListFilesInDirectory("heroes/" .. dirlist[j], true)
		for i,f in ipairs(fileslist) do
			Load("heroes/" .. dirlist[j] .. f)
			u = u + 1
		end
	end
end

function LoadData()
	LoadDataDirectories("data/")
	
	local dlc_dirs = ListDirsInDirectory("dlcs/")
	for i, f in ipairs(dlc_dirs) do
		CMod:SetCurrentModPath("dlcs/" .. f .. "/")
		if (CanAccessFile(CMod:GetCurrentModPath() .. "data/")) then
			LoadDataDirectories(CMod:GetCurrentModPath() .. "data/")
		end
	end
	
	for i = 1, table.getn(wyr.preferences.EnabledMods) do
		if not (string.find(wyr.preferences.EnabledMods[i], ".sms")) then
			CMod:SetCurrentModPath(wyr.preferences.EnabledMods[i])
			Load(wyr.preferences.EnabledMods[i] .. "info.lua")
			
			local has_required_dependencies = true
			if (ModDependencies ~= nil) then
				for j = 1, table.getn(ModDependencies) do
					local has_dependency = false
					for k = 1, table.getn(wyr.preferences.EnabledMods) do
						if (string.find(wyr.preferences.EnabledMods[k], "/" .. ModDependencies[j] .. "/", - (string.len(ModDependencies[j]) + 2))) then
							has_dependency = true
							break
						end
					end
					if (has_dependency == false) then
						has_required_dependencies = false
						break
					end
				end
			end
			if (has_required_dependencies) then
				if (CanAccessFile(CMod:GetCurrentModPath() .. "data/")) then
					LoadDataDirectories(CMod:GetCurrentModPath() .. "data/")
				end
			end
		end
	end
	
	CMod:SetCurrentModPath("")
end

function LoadDataDirectories(directory)
	local data_directories = {"button_levels", "time_of_day_schedules", "seasons", "season_schedules", "missile_types", "spells", "terrain_types", "planes", "worlds", "animations", "currencies", "civilizations", "factions", "unit_types", "upgrades", "deity_domains", "schools_of_magic", "religions", "pantheons", "deities", "map_templates", "sites", "characters", "buttons", "campaigns"}
	
	-- load the data files directly in the main data directory
	local fileslist = ListFilesInDirectory(directory)
	for i, f in ipairs(fileslist) do
		if (string.find(f, ".cfg")) then
			LoadConfigFile(directory .. f)
		end
	end
	
	for i = 1, table.getn(data_directories) do
		if (CanAccessFile(directory .. data_directories[i] .. "/")) then
			LoadDataFiles(directory .. data_directories[i] .. "/")
		end
	end
end

function LoadDataFiles(directory)
	-- load the data files
	local fileslist = ListFilesInDirectory(directory)
	for i, f in ipairs(fileslist) do
		if (string.find(f, ".cfg")) then
			LoadConfigFile(directory .. f)
		end
	end
	
	-- load files in subdirectories as well
	local subdirs = ListDirsInDirectory(directory)
	for i, f in ipairs(subdirs) do
		LoadDataFiles(directory .. f .. "/")
	end
end

-------------------------------------------------------------------------------
--  Tables-Part
-------------------------------------------------------------------------------

-- Andrettin: new function for checking whether array include a certain value or not
function GetArrayIncludes(array, item, ignore_case)
    for key, value in pairs(array) do
		if (type(item) == "string" and type(value) == "string" and ignore_case) then
			if (string.lower(value) == string.lower(item)) then
				return true
			end
		else
			if (value == item) then
				return true
			end
        end
    end
    return false
end

function GetElementIndexFromArray(array, item)
	for i=1,table.getn(array) do
		if (array[i] == item) then
			return i
		end
	end
	return nil
end

function GetTableKeyIndex(table, desired_key, f)
	local count = 1
	for key, value in pairsByKeys(table, f) do
		if (key == desired_key) then
			return count
		end
		count = count + 1
	end

	return nil
end

function GetTableIndexKey(table, index, f)
	local count = 1
	for key, value in pairsByKeys(table, f) do
		if (count == index) then
			return key
		end
		count = count + 1
	end

	return nil
end

function GetTableSize(table)
	local count = 0
	for key in pairs(table) do
		count = count + 1
	end
	return count
end

function RemoveElementFromArray(array, element)
	if (GetArrayIncludes(array, element)) then
		local element_number = -1
		table.foreachi(array, function(k,v)
			if (v == element) then
				element_number = k
			end
		end)
		if (element_number ~= -1) then
			table.remove(array, element_number)
		end
	end
end

function pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local i = 0 -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end

function copy(obj, seen)
	if type(obj) ~= 'table' then return obj end
	if seen and seen[obj] then return seen[obj] end
	local s = seen or {}
	local res = setmetatable({}, getmetatable(obj))
	s[obj] = res
	for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
	return res
end

-------------------------------------------------------------------------------
--  Math Functions
-------------------------------------------------------------------------------

function round(num)
	return math.floor(num + 0.5)
end

function rspread(a, b)
	if (a > b) then
		local t = a
		a = b
		b = t
	end
	return SyncRand(b - a + 1) + a
end

function dice(number, sides)
	local total = 0
	for i=1,number do
		total = total + SyncRand(sides) + 1
	end
	return total
end

function sign(number)
	if (number < 0) then
		return -1
	elseif (number > 0) then
		return 1
	else
		return 0
	end
end

-- return the middle value of 3 numbers
function middle(n1, n2, n3)
	if (n1 < n2) then
		if (n2 < n3) then
			return n2
		elseif (n1 < n3) then
			return n3
		else
			return n1
		end
	elseif (n1 < n3) then
		return n1
	elseif (n2 < n3) then
		return n3
	else
		return n2
	end
end

-------------------------------------------------------------------------------
--  String Functions
-------------------------------------------------------------------------------

function FullyCapitalizeStringAndCreateSpaces(str)
	str = string.gsub(str, "_", " ")
	str = string.gsub(str, "-", " ")
	str = (str:gsub("^%l", string.upper))
	str = (str:gsub(" %l", string.upper))
    return str
end

function FullyCapitalizeString(str)
	str = (str:gsub("^%l", string.upper))
	str = (str:gsub(" %l", string.upper))
    return str
end

function CapitalizeString(str)
    return (str:gsub("^%l", string.upper))
end

local function CompleteMissingValues(table, defaultTable)
	for key, defaultValue in pairs(defaultTable) do
		if table[key] == nil then table[key] = defaultValue end
	end
end

wyr = {preferences = {}}
if (CanAccessFile("preferences.lua")) then
	Load("preferences.lua")
end

local defaultPreferences = {
	DoubleClickDelayInMs = 300,     --  For the wanted double-click delay (in ms).
	EffectsEnabled = true,
	EffectsVolume = 128,
	EnableKeyboardScrolling = true, --  Enable/disable keyboard scrolling.
	EnableMouseScrolling = true,    --  Enable/disable mouse scrolling.
	FogOfWar = true,
	FogOfWarOpacity = 128,
	GameSpeed = 30,
	GameTranslation = "",
	GrabMouse = false,              --  Enable/disable grabbing the mouse.
	GroupKeys = "0123456789`",
	HoldClickDelayInMs = 1000,      --  For the wanted hold-click delay (in ms).
	LeaveStopScrolling = true,      --  Enable/disable stopping scrolling when mouse leave.
	MaxOpenGLTexture = 256,
	MouseScrollSpeed = 1,
	MouseScrollSpeedControl = 15,   --  Same as above if Control is pressed
	MouseScrollSpeedDefault = 4,    --  While middle-mouse is pressed: Pixels to move per scrolled mouse pixel, negative = reversed
	KeyScrollSpeed = 1,
	MusicEnabled = true,
	MusicVolume = 128,
	PlayerName = "Player",
	ShowCommandKey = true,
	ShowTips = true,
	StratagusTranslation = "",
	TipNumber = 0,
	VideoFullScreen = false,
	VideoHeight = 600,
	VideoWidth = 1066,
	ShowMessages = true,
	ShowPathlines = false,
	Language = "English",
	ShowResourceBar = false,
	ShowHeroSymbol = false,
	Autosave = true,
	PlayerColorCircle = false,
	HotkeySetup = 0,
	NoRandomness = false,
	NoTimeOfDay = false,
	AutomaticBattles = false,
	Difficulty = DifficultyNormal,
	TipsShown = {},
	LastVersionPlayed = "0.0.0",
	EnabledMods = {},
	SortSaveGamesByTime = false
}

CompleteMissingValues(wyr.preferences, defaultPreferences)

local function UpdateObsoletePreferences()
	-- enforce minimum resolution
	if (wyr.preferences.VideoWidth < 1024) then
		wyr.preferences.VideoWidth = 1024
	end
	if (wyr.preferences.VideoHeight < 600) then
		wyr.preferences.VideoHeight = 600
	end
end

UpdateObsoletePreferences()

SetDoubleClickDelay(wyr.preferences.DoubleClickDelayInMs)
SetEffectsEnabled(wyr.preferences.EffectsEnabled)
SetEffectsVolume(wyr.preferences.EffectsVolume)
SetFogOfWar(wyr.preferences.FogOfWar)
SetFogOfWarOpacity(wyr.preferences.FogOfWarOpacity)
SetGameSpeed(wyr.preferences.GameSpeed)
SetGrabMouse(wyr.preferences.GrabMouse)
SetGroupKeys(wyr.preferences.GroupKeys)
SetHoldClickDelay(wyr.preferences.HoldClickDelayInMs)
SetKeyScroll(wyr.preferences.EnableKeyboardScrolling)
SetLeaveStops(wyr.preferences.LeaveStopScrolling)
SetLocalPlayerName("") -- Andrettin: in single-player games the local player shouldn't use his nick
SetMaxOpenGLTexture(wyr.preferences.MaxOpenGLTexture)
SetMouseScroll(wyr.preferences.EnableMouseScrolling)
SetMouseScrollSpeed(wyr.preferences.MouseScrollSpeed)
SetMouseScrollSpeedControl(wyr.preferences.MouseScrollSpeedControl)
SetMouseScrollSpeedDefault(wyr.preferences.MouseScrollSpeedDefault)
SetKeyScrollSpeed(wyr.preferences.KeyScrollSpeed)
SetMusicEnabled(wyr.preferences.MusicEnabled)
SetMusicVolume(wyr.preferences.MusicVolume)
SetTranslationsFiles(wyr.preferences.StratagusTranslation, wyr.preferences.GameTranslation)
SetVideoFullScreen(wyr.preferences.VideoFullScreen)
SetVideoResolution(wyr.preferences.VideoWidth, wyr.preferences.VideoHeight)
CUserInterface:get().ButtonPanel.ShowCommandKey = wyr.preferences.ShowCommandKey

Preference.ShowPathlines = wyr.preferences.ShowPathlines
Preference.ShowMessages = wyr.preferences.ShowMessages
if (wyr.preferences.Autosave) then
	Preference.AutosaveMinutes = 5
else
	Preference.AutosaveMinutes = 0
end
Preference.PlayerColorCircle = wyr.preferences.PlayerColorCircle
Preference.HotkeySetup = wyr.preferences.HotkeySetup

if not (CanAccessFile("preferences.lua")) then
	SavePreferences()
end

--- Uses Stratagus Library path!
DefiningData = true
LoadData() -- only initialize the data by ident, but don't actually process it
DefiningData = false

Units = {
	"upgrade-holy-order", "upgrade-mercenary-company", "upgrade-trading-company",
	"upgrade-mathematics", "upgrade-engineering",
	"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion",
	"unit-latin-javelineer",
	"unit-latin-town-hall", "unit-latin-farm", "unit-latin-barracks", "unit-latin-smithy", "unit-latin-stables",
	"upgrade-faction-asa-tribe", "upgrade-faction-jarling-tribe", "upgrade-faction-karling-tribe", "upgrade-faction-skeldung-tribe", "upgrade-faction-thielung-tribe", "upgrade-faction-thralling-tribe", "upgrade-faction-yngling-tribe",
	"unit-germanic-worker", "unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
	"unit-germanic-priest",
	"unit-germanic-transport-ship",
	"unit-germanic-town-hall", "unit-germanic-farm", "unit-germanic-barracks",
	"unit-germanic-carpenters-shop", "unit-germanic-smithy", "unit-germanic-temple", "unit-germanic-market",
	"unit-germanic-dock",
	"upgrade-germanic-broad-sword", "upgrade-germanic-long-spear", "upgrade-germanic-bronze-shield",
	"upgrade-germanic-barbed-arrow",
	"upgrade-faction-dane-tribe", "upgrade-faction-geat-tribe", "upgrade-faction-gute-tribe", "upgrade-faction-sitone-tribe", "upgrade-faction-swede-tribe",
	"upgrade-faction-denmark", "upgrade-faction-gautland", "upgrade-faction-gotland", "upgrade-faction-norway", "upgrade-faction-sweden",
	"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
--	"unit-norse-longship",
	"unit-norse-town-hall",
	"unit-norse-farm", "unit-norse-barracks",
	"unit-norse-lumber-mill", "unit-norse-smithy",
	"unit-norse-temple", "unit-norse-market",
	"unit-norse-watch-tower",
	"unit-norse-dock",
	"unit-norse-palisade",
	"unit-slavic-swordsman",
	"upgrade-faction-bavarian-tribe",
	"upgrade-faction-saxon-tribe", "upgrade-faction-chauci-tribe", "upgrade-faction-cherusci-tribe", "upgrade-faction-varini-tribe",
	"upgrade-faction-frisian-tribe",
	"upgrade-faction-lombard-tribe",
	"upgrade-faction-austria", "upgrade-faction-bavaria", "upgrade-faction-carinthia",
	"upgrade-faction-thuringia",
	"upgrade-faction-baden", "upgrade-faction-swabia", "upgrade-faction-switzerland", "upgrade-faction-wurtemberg",
	"upgrade-faction-cologne", "upgrade-faction-franconia", "upgrade-faction-hesse",
	"upgrade-faction-saxony", "upgrade-faction-brandenburg", "upgrade-faction-bremen", "upgrade-faction-brunswick", "upgrade-faction-magdeburg", "upgrade-faction-mecklenburg", "upgrade-faction-prussia", "upgrade-faction-westphalia",
	"upgrade-faction-friesland",
	"upgrade-faction-brabant", "upgrade-faction-drenthe", "upgrade-faction-holland", "upgrade-faction-netherlands", "upgrade-faction-overijssel",
	"upgrade-faction-lombardy",
	"upgrade-faction-holy-rome",
	"unit-teuton-worker", "unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman",
	"unit-teuton-spearman",
	"unit-teuton-archer",
	"unit-teuton-gunpowder-infantry",
	"unit-teuton-ritter", "unit-teuton-knight-lord",
	"unit-teuton-priest", 
	"unit-teuton-catapult",
	"unit-teuton-kogge",
	"unit-norse-longship",
	"unit-teuton-town-hall", "unit-teuton-stronghold",
	"unit-teuton-farm", "unit-teuton-barracks",
	"unit-teuton-lumber-mill", "unit-teuton-smithy", "unit-teuton-masons-shop",
	"unit-teuton-stables", "unit-teuton-temple", "unit-teuton-market", "unit-teuton-university",
	"unit-teuton-watch-tower", "unit-teuton-guard-tower", "unit-teuton-catapult-tower",
	"unit-teuton-dock",
	"unit-teuton-wall",
	"upgrade-teuton-spatha", "upgrade-frank-spatha", "upgrade-teuton-pike", "upgrade-teuton-iron-shield", "upgrade-teuton-bodkin-arrow",
	"upgrade-teuton-catapult-projectile-1", "upgrade-teuton-catapult-projectile-2",
	"upgrade-teuton-alchemy",
	"upgrade-faction-angle-tribe", "upgrade-faction-avione-tribe", "upgrade-faction-bernice-tribe", "upgrade-faction-charude-tribe", "upgrade-faction-cantware-tribe", "upgrade-faction-dere-tribe", "upgrade-faction-gumeninga-tribe", "upgrade-faction-jute-tribe", "upgrade-faction-lindisfaran-tribe", "upgrade-faction-mierce-tribe", "upgrade-faction-teuton-tribe",
	"upgrade-faction-bernicia", "upgrade-faction-deira", "upgrade-faction-east-anglia", "upgrade-faction-englaland", "upgrade-faction-essex", "upgrade-faction-jutland", "upgrade-faction-kent", "upgrade-faction-mercia", "upgrade-faction-middle-anglia", "upgrade-faction-middlesex", "upgrade-faction-northumbria", "upgrade-faction-sussex", "upgrade-faction-wessex",
	"upgrade-faction-england", "upgrade-faction-scotland",
	"upgrade-faction-suebi-tribe", "upgrade-faction-semnone-tribe",
	"upgrade-faction-marcomanni-tribe", "upgrade-faction-quadi-tribe", "upgrade-faction-buri-tribe",
	"upgrade-faction-alamanni-tribe",
	"upgrade-faction-hermunduri-tribe", "upgrade-faction-thuringian-tribe",
	"upgrade-faction-galicia",
	"unit-suebi-swordsman", 
	"upgrade-faction-ampsivarii-tribe", "upgrade-faction-batavian-tribe", "upgrade-faction-chamavi-tribe", "upgrade-faction-chatti-tribe", "upgrade-faction-frank-tribe", "upgrade-faction-sugambri-tribe", "upgrade-faction-ubii-tribe",
	"upgrade-faction-austrasia", "upgrade-faction-burgundia", "upgrade-faction-east-francia", "upgrade-faction-francia", "upgrade-faction-neustria", "upgrade-faction-salia",
	"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman", "unit-frank-spearman",
	"unit-frank-horseman", "unit-frank-knight-lord",
	"upgrade-faction-bastarnae-tribe", "upgrade-faction-burgundian-tribe", "upgrade-faction-gepidae-tribe", "upgrade-faction-goth-tribe", "upgrade-faction-herulian-tribe", "upgrade-faction-lugii-tribe", "upgrade-faction-ostrogoth-tribe", "upgrade-faction-rugian-tribe", "upgrade-faction-silingae-tribe", "upgrade-faction-turcilingian-tribe", "upgrade-faction-vandal-tribe", "upgrade-faction-visigoth-tribe",
	"upgrade-faction-burgundy", "upgrade-faction-gothia", "upgrade-faction-ostrogothia", "upgrade-faction-vandalia", "upgrade-faction-visigothia", 
	"unit-gothic-horse-rider", "unit-gothic-horse-lord",
	"unit-celt-farm",
	"upgrade-faction-norlund-clan", "upgrade-faction-oinling-clan", "upgrade-faction-shadowcharm-clan", "upgrade-faction-shinsplitter-clan", "upgrade-faction-shorbear-clan", "upgrade-faction-whitesteel-clan", 
	"upgrade-faction-kal-kartha", "upgrade-faction-knalga",
	"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
	"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
	"unit-dwarven-militia",
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
	"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
	"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
	"unit-dwarven-thunderer",
	"unit-dwarven-yale-rider", "unit-dwarven-yale-lord", "unit-dwarven-ballista",
	"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
	"unit-dwarven-gryphon-rider",
	"unit-dwarven-transport-ship", "unit-dwarven-ballista-warship",
	"unit-dwarven-town-hall", "unit-dwarven-stronghold",
	"unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
	"unit-dwarven-lumber-mill", "unit-dwarven-smithy", "unit-dwarven-masons-shop",
	"unit-dwarven-yale-pen", "unit-dwarven-temple", "unit-dwarven-market",
	"unit-dwarven-academy",
	"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower", "unit-dwarven-ballista-tower", "unit-dwarven-cannon-tower",
	"unit-dwarven-wall",
	"upgrade-dwarven-broad-axe", "upgrade-dwarven-great-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-shield-2",
	"upgrade-dwarven-long-spear", "upgrade-dwarven-pike",
	"upgrade-dwarven-sharp-throwing-axe", "upgrade-dwarven-bearded-throwing-axe", "upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
	"upgrade-dwarven-runewriting", "upgrade-dwarven-alchemy",
	"upgrade-faction-brising-clan", "upgrade-faction-lyr",
	"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner", "unit-brising-militia",
	"unit-brising-smithy",
	"upgrade-faction-eikinskjaldi-clan", "upgrade-faction-goldhoof-clan", "upgrade-faction-joruvellir", "upgrade-faction-yawning-yales",
	"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
	"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
	"unit-joruvellir-yale-pen",
	"upgrade-faction-surghan-mercenaries",
	"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"upgrade-faction-acthnic-tribe", "upgrade-faction-derro-tribe", "upgrade-faction-sagan-tribe",
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist", "unit-gnomish-caravan",
	"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
	"unit-deep-gnomish-worker", "unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
	"unit-derro-worker", "unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
	"upgrade-faction-aelak-tribe", "upgrade-faction-issudru-tribe", "upgrade-faction-mabom-tribe", "upgrade-faction-sigre-tribe",
	"upgrade-faction-aurvangling-tribe", "upgrade-faction-dreadskull-tribe", "upgrade-faction-khag-tribe", "upgrade-faction-lggi-tribe", "upgrade-faction-prideblade-tribe", "upgrade-faction-wildfang-tribe",
	"upgrade-faction-aurvang", "upgrade-faction-driftwood", "upgrade-faction-ezmarria", "upgrade-faction-myridia", "upgrade-faction-stilgar", "upgrade-faction-tenebris",
	"unit-goblin-worker", "unit-goblin-militia", "unit-goblin-magnate",
	"unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
	"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
	"unit-goblin-gunpowder-infantry",
	"unit-goblin-thief", "unit-goblin-shaman",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-goblin-transport-ship", "unit-goblin-warship",
	"unit-goblin-town-hall", "unit-goblin-stronghold",
	"unit-goblin-mess-hall", "unit-goblin-farm", "unit-goblin-lumber-mill", "unit-goblin-smithy", "unit-goblin-masons-shop",
	"unit-goblin-temple", "unit-goblin-market", "unit-goblin-academy",
	"unit-goblin-watch-tower", "unit-goblin-guard-tower", "unit-goblin-catapult-tower",
	"unit-goblin-dock",
	"unit-goblin-wall",
	"unit-goblin-banner",
	"upgrade-goblin-broad-sword", "upgrade-goblin-long-sword", "upgrade-goblin-rimmed-shield", "upgrade-goblin-embossed-shield",
	"upgrade-goblin-long-spear", "upgrade-goblin-pike",
	"upgrade-goblin-barbed-arrow", "upgrade-goblin-bodkin-arrow",
	"upgrade-goblin-catapult-projectile-1", "upgrade-goblin-catapult-projectile-2",
	"upgrade-goblin-alchemy",
	"unit-kobold-footpad", "unit-kobold-slasher", "unit-kobold-champion",
	"unit-elven-swordsman", "unit-elven-priest", 
	"unit-orc-spearthrower", "unit-orc-sea-orc", "unit-orc-shaman",
	"unit-ettin",
	"unit-ettin-town-hall",
	"unit-caravan",
	"unit-minecart",
--	"unit-adelobasileus-cromptoni", "unit-galerix-exilis", "unit-megacricetodon-collongensis", "unit-rat",
	"unit-adelobasileus-cromptoni", "unit-galerix-exilis", "unit-rat",
	"unit-goat", "unit-boar", "unit-horse",
	"unit-wolf",
	"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm", "unit-water-elemental",
	"unit-unicorn",
	"unit-settlement-site",
	"unit-gold-rock", "unit-gold-mine",
	"unit-silver-rock", "unit-silver-mine",
	"unit-copper-rock", "unit-copper-mine",
	"unit-iron-mine",
	"unit-mithril-mine",
	"unit-coal-mine",
	"unit-diamond-rock", "unit-diamond-deposit", "unit-diamond-mine",
	"unit-emerald-rock", "unit-emerald-deposit", "unit-emerald-mine",
	"unit-yale-cave", "unit-yale-hunting-lodge",
	"unit-mercenary-camp",
--	"unit-cavern-entrance",
--	"unit-portal",
	"unit-road", "unit-railroad",
	"unit-carrots", "unit-cheese", "unit-wyrm-heart", "unit-potion-of-healing", "unit-elixir-of-dexterity", "unit-elixir-of-intelligence", "unit-elixir-of-strength", "unit-elixir-of-vitality",
	"upgrade-shield-wall", "upgrade-svinfylking",
	"upgrade-deity-odin", "upgrade-deity-thor", "upgrade-deity-loki", "upgrade-deity-heimdall", "upgrade-deity-hel", "upgrade-deity-tyr",
	"upgrade-deity-gathaarl",
	"upgrade-deity-christian-god",
	"upgrade-magic-domain-air", "upgrade-magic-domain-earth", "upgrade-magic-domain-fire", "upgrade-magic-domain-water", "upgrade-magic-domain-aether", "upgrade-magic-domain-metal", "upgrade-magic-domain-wood", "upgrade-magic-domain-ice", "upgrade-magic-domain-lightning", "upgrade-magic-domain-death", "upgrade-magic-domain-life", "upgrade-magic-domain-sun", "upgrade-magic-domain-moon",
	"upgrade-magic-domain-illusion", "upgrade-magic-domain-transmutation"
}

Load("scripts/dlc_file_equivalencies.lua")
Load("scripts/icons.lua")
Load("scripts/languages.lua")
Load("scripts/terrain_types.lua")
Load("scripts/world_map_terrain_types.lua")
Load("scripts/species.lua")
Load("scripts/civilizations.lua")
Load("scripts/music.lua")
Load("scripts/sound.lua")
Load("scripts/missiles.lua")
Load("scripts/upgrade_functions.lua")
Load("scripts/abilities.lua")
Load("scripts/spells.lua")
Load("scripts/units.lua")
Load("scripts/upgrade.lua")
Load("scripts/ability_dependencies.lua")
Load("scripts/religions.lua")
Load("scripts/deities.lua")
Load("scripts/wyr.lua")
Load("scripts/fonts.lua")
Load("scripts/buttons.lua")
Load("scripts/ai.lua")
Load("scripts/commands.lua")
Load("scripts/cheats.lua")
Load("scripts/map_generation.lua")
Load("scripts/provinces.lua")
Load("scripts/terrain_features.lua")
Load("scripts/unique_items.lua")
Load("scripts/map_templates.lua")
Load("scripts/settlements.lua")
Load("scripts/characters.lua")
Load("scripts/dialogues.lua")
Load("scripts/quests.lua")
Load("scripts/pathways.lua")
Load("scripts/campaigns.lua")
Load("scripts/events.lua")
Load("scripts/achievements.lua")
Load("scripts/texts.lua")
Load("scripts/ui.lua")

DebugPrint("... ready!\n")