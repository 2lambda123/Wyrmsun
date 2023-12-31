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
--      (c) Copyright 2013-2022 by Andrettin
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

DefineQuest("on_the_vanaquisl", {
	Name = "On the Vanaquisl",
	Icon = "icon-germanic-warrior",
	Civilization = "germanic",
	PlayerColor = "orange",
	AcceptEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "on_the_vanaquisl") then
			local vana_defender_quantity = 0
			if (GameSettings.Difficulty == DifficultyEasy) then -- if difficulty is easy
				vana_defender_quantity = 4
			elseif (GameSettings.Difficulty == DifficultyNormal) then -- if difficulty is normal
				vana_defender_quantity = 9
			elseif (GameSettings.Difficulty == DifficultyHard) then -- if difficulty is hard
				vana_defender_quantity = 18
			elseif (GameSettings.Difficulty == DifficultyBrutal) then -- if difficulty is brutal
				vana_defender_quantity = 36
			end
			CreateCreeps(GetFactionPlayer("vana_tribe"), "unit-germanic-warrior", vana_defender_quantity, 4732 - EarthStartX, 935 - EarthStartY, 4782 - EarthStartX, 964 - EarthStartY)
			CallDialogue("on_the_vanaquisl_introduction", trigger_player)
			CallDialogue("asa-raid", GetFactionPlayer("vana_tribe"))
		end
	end,
	CompletionEffects = function(s)
		CallDialogue("on_the_vanaquisl_victory", trigger_player)
	end,
	ObjectiveStrings = {"Wodanaz must survive"},
	Objectives = {
		{
			"objective-type", "destroy_units",
			"objective-string", "Destroy Vanaland's Chieftain's Hall",
			"quantity", 1,
			"unit-type", "unit-germanic-town-hall",
			"faction", "vana_tribe"
		}
	},
	HeroesMustSurvive = {"voden"},
	Rewards = "Unlock the Westward Migration scenario",
	Unobtainable = true
})

DefineQuest("westward_migration", { -- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
	Name = "Westward Migration",
	Icon = "germanic_worker",
	Civilization = "germanic",
	PlayerColor = "orange",
	AcceptEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "westward_migration") then
			local gardarike_warrior_quantity = 0
			if (GameSettings.Difficulty == DifficultyEasy) then -- if difficulty is easy
				gardarike_warrior_quantity = 16
			elseif (GameSettings.Difficulty == DifficultyNormal) then -- if difficulty is normal
				gardarike_warrior_quantity = 48
			elseif (GameSettings.Difficulty == DifficultyHard) then -- if difficulty is hard
				gardarike_warrior_quantity = 96
			elseif (GameSettings.Difficulty == DifficultyBrutal) then -- if difficulty is brutal
				gardarike_warrior_quantity = 192
			end
			CreateCreeps(GetFactionPlayer("uralic-tribe"), "unit-germanic-warrior", gardarike_warrior_quantity, 4369 - EarthStartX, 643 - EarthStartY, 4547 - EarthStartX, 770 - EarthStartY)
			CreateCreeps(GetFactionPlayer("uralic-tribe"), "unit-germanic-archer", gardarike_warrior_quantity, 4369 - EarthStartX, 643 - EarthStartY, 4547 - EarthStartX, 770 - EarthStartY)
			CallDialogue("westward_migration_introduction", trigger_player)
		end
	end,
	ObjectiveStrings = {"Bring a Bura to the southwestern edge of the map", "Wodanaz must survive"},
	HeroesMustSurvive = {"voden"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("the-good-seasons", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 225.
	Name = "The Good Seasons", -- the Swedes believed their chieftain Yngve (identified with Freyr) provided them good seasons
	Icon = "icon-germanic-farm",
	Description = "My chieftain, our lands have been blessed with good seasons, which our people ascribe to you. We should build more farms to take advantage of these fortunate times.",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "blue",
	Conditions = function(s)
--		if (GetPlayerData(trigger_player, "Faction") == "yngling_tribe" or GetPlayerData(trigger_player, "Faction") == "asa_tribe") then
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit_germanic_worker") > 0 and CheckDependency(trigger_player, "unit-germanic-farm")) then -- allow for all Germanic tribes for now, since they don't have quests
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
	end,
	Rewards = "+1000 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build_units",
			"objective-string", "Build 2 Farms",
			"quantity", 2,
			"unit-type", "unit-germanic-farm"
		}
	}
})

DefineQuest("thralls-hut", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 19-20; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 206-207.
	Name = "Thrahila's Hut", -- in the Song of Rig, Rig (the god Heimdall), Thrall's ten sons shore up the hut of their parents and grandparents, afterwards tending to goats and pigs near it
	Icon = "icon-germanic-farm",
	Description = "The hard-working serf Thrahila timidly proposes that a new hut for him and his family be built. It would house him, his wife and their twelve sons and nine daughters, who would tend to goats and pigs in its environs.", -- his wife was Thir; their sons were: Fjosnir, Klur, Hreim, Klajja (Crossley-Holland gives "kreggi", while Bellows gives "kleggi", both with the meaning of horse-fly; "kleggi" is listed by Fick also as meaning horse-fly, and as a reflex of Proto-Germanic "klajja(n)"), Kefsir, Fulnir, Drumb, Digraldi, Drott, Leggjaldi, Lut and Hosvir; their daughters were: Drumba, Kumba, Okkvinkalfa, Arinnefja, Ysja, Ambott, Eikintjasna, Totrughypja and Tronubeina; it would be nice if the description of the quest also listed their names, as we manage to convert them to Proto-Germanic
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "HasHero", "thrahila")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 750)
	end,
	Rewards = "+750 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build_units",
			"objective-string", "Build a Farm",
			"quantity", 1,
			"unit-type", "unit-germanic-farm"
		}
	}
})

DefineQuest("karls-farm", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
	Name = "Karla's Farm", -- in the Song of Rig, Rig (the god Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "karl" is a reflex of Proto-Germanic "karla"
	Icon = "icon-germanic-farm",
	Description = "The young peasant Karla, son of Aban and Ammon, is a rapid learner. He is mastering the construction of huts and farms, and proposes the erection of a new farm to complete his learning process.", -- his parents were "Afi" and "Amma" in the Old Norse original, which are (respectively) reflexes of Proto-Germanic "Aban" and "Ammôn"
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "HasHero", "karla")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 750)
	end,
	Rewards = "+750 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build_units",
			"objective-string", "Build a Farm",
			"quantity", 1,
			"unit-type", "unit-germanic-farm"
		}
	}
})

DefineQuest("heimdalls_progeny", {
	Name = "Haimadala's Progeny",
	Icon = "icon-jarl",
	Civilization = "germanic",
	PlayerColor = "yellow",
	AcceptEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "heimdalls_progeny") then
			CallDialogue("jarl-speaks-of-his-destiny", trigger_player)
		end
	end,
	ObjectiveStrings = {"Conquer all of your home peninsula", "Erala must survive"},
	HeroesMustSurvive = {"erala"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("jarls-hall", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
	Name = "Erala's Hall", -- in the Song of Rig, Rig (the god Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "jarl" is a reflex of Proto-Germanic "erala"
	Icon = "icon-germanic-town-hall",
	Description = "The fierce warrior Erala seeks to establish a hall for himself.",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	CompletionEffects = function(s)
		CallDialogue("jarls-hall-is-complete", trigger_player)
	end,
	ObjectiveStrings = {"Acquire some Buras"},
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Chieftain's Hall button to build the structure required for this quest.",
	Objectives = {
		{
			"objective-type", "build_units",
			"objective-string", "Build a Chieftain's Hall",
			"quantity", 1,
			"unit-type", "unit-germanic-town-hall"
		}
	},
	HeroesMustSurvive = {"erala"},
	Unobtainable = true,
	Unfailable = true
})

DefineQuest("jarls-retainers", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 24.
	Name = "Erala's Retainers",
	Icon = "icon-germanic-warrior",
	Description = "The young warrior Erala was fast to master the art of the sword. He proposes to train a few brave warriors to protect our homeland.",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	CompletionEffects = function(s)
	end,
	Unobtainable = true,
	Unfailable = true,
	Hint = "Select a War Lodge and then click on the Train Erala button to train the unit required for this quest.",
	Objectives = {
		{
			"objective-type", "build_units",
			"objective-string", "Train 5 Eralas",
			"quantity", 5,
			"unit-type", "unit-germanic-warrior"
		}
	},
	HeroesMustSurvive = {"erala"}
})

DefineQuest("temple-to-heimdall", {
	Name = "Temple to Haimadala",
	Icon = "icon-germanic-temple",
	Description = "Our tribe's chieftain traces descent from the god Haimadala. We would do well to build a temple honoring the mighty deity.",
	PlayerColor = "yellow",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "jarling_tribe" or GetPlayerData(trigger_player, "Faction") == "karling_tribe" or GetPlayerData(trigger_player, "Faction") == "thralling_tribe") then -- must belong to one of the three factions whose progenitor is a son of Heimdall in the Rigsthula: the Jarlings/Eralings, Karlings and Thrallings/Thrahilings
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2000)
	end,
	Rewards = "+2000 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Temple button to build the structure required for this quest. Once the Temple has been built, click on it, and the Worship Haimadala button will be visible. In order for Haimadala to be available, a major deity (such as Wodanaz or Thunraz) will have to be chosen for worship first.",
	Objectives = {
		{
			"objective-type", "build_units",
			"objective-string", "Build a Temple",
			"quantity", 1,
			"unit-type", "unit-germanic-temple"
		},
		{
			"objective-type", "research_upgrade",
			"objective-string", "Worship Haimadala",
			"upgrade", "upgrade-deity-heimdall"
		}
	}
})

DefineQuest("journey-to-heimdalls-stones", {
	Name = "Journey to Haimadala's Stones",
	Icon = "icon-germanic-temple",
	Description = "Rumors have reached Erala's ears of a holy site called Haimadala's Stones. A visit to that location could grant him new insights into the god he holds to be his father.",
	PlayerColor = "yellow",
	Conditions = function(s)
		if (
			GetUniqueItemData("heimdalls-stones", "CanDrop") == false -- Heimdall's Stones must exist
		) then
			return true
		end
		return false
	end,
	AcceptEffects = function(s)
		local heimdalls_stones_unit = FindUnique("heimdalls-stones")
		unit = CreateUnit("unit-revealer", trigger_player, {GetUnitVariable(heimdalls_stones_unit, "PosX"), GetUnitVariable(heimdalls_stones_unit, "PosY")}, GetUnitVariable(heimdalls_stones_unit, "MapLayer"))
		SetUnitVariable(unit, "TTL", 600)
	end,
	CompletionEffects = function(s)
		SetUnitVariable(trigger_unit, "Xp", GetUnitVariable(trigger_unit, "Xp", "Max") + 500, "Max")
		SetUnitVariable(trigger_unit, "Xp", GetUnitVariable(trigger_unit, "Xp", "Max"))
	end,
	ObjectiveStrings = {"Visit Haimadala's Stones with Erala"},
	Rewards = "+500 XP for Erala",
	Hint = "A transport ship will likely be needed for Erala to reach Haimadala's Stones.",
	HeroesMustSurvive = {"erala"},
	Uncompleteable = true, -- completed by trigger
	Competitive = true
})

DefineQuest("subjugate-the-karlings", {
	Name = "Subjugate the Karlings",
	Icon = "germanic_worker",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	ObjectiveStrings = {"Subjugate the Karlings"},
	HeroesMustSurvive = {"erala"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true
})

DefineQuest("neutralize-the-hersings", {
	Name = "Neutralize the Hersings",
	Icon = "icon-germanic-chieftain",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	ObjectiveStrings = {"Ally with or defeat the Hersings"},
	HeroesMustSurvive = {"erala"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true
})

DefineQuest("slay-the-berserker-brides-at-hlesey", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
	Name = "Slay the Wild Folk at Hlesey",
	Icon = "icon-germanic-warrior",
	Description = "The wild folk at Hlesey have been attacking passing ships. The priests of Thunraz urge us to eliminate this threat, and restore safe passage in those waters.",
	PlayerColor = "black",
	Conditions = function(s)
		if (
			GetPlayerData(trigger_player, "UnitTypesCount", "unit_germanic_dock") > 0 -- the player must have a dock
			and GetPlayerData(trigger_player, "Allow", "upgrade-deity-thor") == "R" -- must be a worshipper of Thor/Thunraz
			and GetNumUnitsAt(trigger_player, "buildings", {GetSiteData("hlesey", "MapPosX") - 128, GetSiteData("hlesey", "MapPosY") - 128}, {GetSiteData("hlesey", "MapPosX") + 128, GetSiteData("hlesey", "MapPosY") + 128}, GetSiteData("hlesey", "MapLayer")) > 0 -- the player must have a building relatively close to Hlesey
		) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1500)
		if (GetCurrentCampaign() == "thors_servant") then
			CallDialogue("thors-servant-berserker-brides-killed", trigger_player)
		end
	end,
	Rewards = "+1500 Copper",
	Objectives = {
		{
			"objective-type", "destroy_faction",
			"objective-string", "Destroy the Hlesings",
			"faction", "hlesing_tribe"
		}
	},
	Competitive = true
})
