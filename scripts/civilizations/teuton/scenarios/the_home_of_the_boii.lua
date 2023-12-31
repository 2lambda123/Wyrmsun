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
--      (c) Copyright 2015-2022 by Andrettin
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

if (LoadedGame == false) then
	SetPlayerData(0, "Faction", "marcomannia")
	SetPlayerData(1, "Faction", "boii-tribe")
	SetPlayerData(2, "RaceName", "goth")
	SetPlayerData(2, "Faction", "vandalia")
	SetPlayerData(3, "RaceName", "suebi")
	SetPlayerData(3, "Faction", "suebia")
	SetPlayerData(4, "RaceName", "teuton")
	SetPlayerData(4, "Faction", "lombardy")
	SetPlayerData(0, "Resources", "copper", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Resources", "copper", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")
	SetPlayerData(PlayerNumNeutral, "RaceName", "neutral")
	
	if (GrandStrategy == false) then
		unit = CreateUnit("unit_suebi_swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
		SetUnitVariable(unit, "Character", "marbod")
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit_suebi_swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit_gaulish_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false) -- set town defender to passive AI (so that they do not participate in attacks)
		unit = CreateUnit("unit_gaulish_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit_gaulish_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit_gaulish_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit_gaulish_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit_gaulish_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
	end
	
	-- create allied Germanic forces
	-- Vandals (Lugii)
	local player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, CMap:get():get_info():get_map_height() - 1)
	SetStartView(2, player_spawn_point[1], player_spawn_point[2])
	unit = CreateUnit("unit-teuton-swordsman", 2, {GetPlayerData(2, "StartPosX"), GetPlayerData(2, "StartPosY")})
	unit = CreateUnit("unit-teuton-swordsman", 2, {GetPlayerData(2, "StartPosX"), GetPlayerData(2, "StartPosY")})
	unit = CreateUnit("unit-teuton-archer", 2, {GetPlayerData(2, "StartPosX"), GetPlayerData(2, "StartPosY")})
	unit = CreateUnit("unit-teuton-ritter", 2, {GetPlayerData(2, "StartPosX"), GetPlayerData(2, "StartPosY")})

	-- Suebi (Semnones)
	player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, CMap:get():get_info():get_map_height() - 1)
	SetStartView(3, player_spawn_point[1], player_spawn_point[2])
	unit = CreateUnit("unit_suebi_swordsman", 3, {GetPlayerData(3, "StartPosX"), GetPlayerData(3, "StartPosY")})
	unit = CreateUnit("unit_suebi_swordsman", 3, {GetPlayerData(3, "StartPosX"), GetPlayerData(3, "StartPosY")})
	unit = CreateUnit("unit-teuton-archer", 3, {GetPlayerData(3, "StartPosX"), GetPlayerData(3, "StartPosY")})
	unit = CreateUnit("unit-teuton-ritter", 3, {GetPlayerData(3, "StartPosX"), GetPlayerData(3, "StartPosY")})

	-- Lombards
	player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, CMap:get():get_info():get_map_height() - 1)
	SetStartView(4, player_spawn_point[1], player_spawn_point[2])
	unit = CreateUnit("unit-teuton-swordsman", 4, {GetPlayerData(4, "StartPosX"), GetPlayerData(4, "StartPosY")})
	unit = CreateUnit("unit-teuton-swordsman", 4, {GetPlayerData(4, "StartPosX"), GetPlayerData(4, "StartPosY")})
	unit = CreateUnit("unit-teuton-archer", 4, {GetPlayerData(4, "StartPosX"), GetPlayerData(4, "StartPosY")})
	unit = CreateUnit("unit-teuton-ritter", 4, {GetPlayerData(4, "StartPosX"), GetPlayerData(4, "StartPosY")})
end

-- The Home of the Boii introduction
AddTrigger("the-home-of-the-boii-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("marcomannia") and PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii") == false) then
			player = GetFactionPlayer("marcomannia")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"The Roman incursions through the Rhine into Germania have been devastating for the Marcomanni. Their chieftain, Marbod, has decided to lead them into new, safer lands. The Celtic tribe of the Boii seems weak - making the plains they occupy a prime target for Marbod's designs.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("marbod"),
				"Germania is under ever-greater peril from the Romans. My warriors, there is no turning back - we must take the Boii's lands, or perish!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("marbod"),
					"Warriors from a few other tribes have come to our aid, let us gather forces with them.",
					player,
					{"~!Continue"},
					{function(s)
						RemovePlayerObjective(player, "- Defeat your rivals")
						AddPlayerObjective(player, "- Defeat the Boii")
						AddPlayerObjective(player, "- Find the warriors of the other tribes (optional)")
						AddPlayerObjective(player, "- Marbod must survive")
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

-- Marbod speaks about his ambition to found a great realm, and the difficulties of doing so nearer to the Romans
AddTrigger("the-home-of-the-boii-marbods-ambition",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("marcomannia") and PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii") and GetPlayerData(GetFactionPlayer("marcomannia"), "UnitTypesCount", "unit-teuton-farm") >= 4) then
			player = GetFactionPlayer("marcomannia")
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("marbod"),
			"So near the Romans as we used to be, no realm could succeed and become great. But here... we have a chance.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

-- Marbod speaks about his time in Rome
AddTrigger("the-home-of-the-boii-marbods-time-in-rome",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			GetFactionExists("marcomannia")
			and PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii")
			and GetPlayerData(GetFactionPlayer("marcomannia"), "UnitTypesCount", "unit-teuton-farm") >= 4
			and GetPlayerData(GetFactionPlayer("marcomannia"), "UnitTypesCount", "unit-teuton-barracks") >= 1
			and (GetPlayerData(GetFactionPlayer("marcomannia"), "UnitTypesCount", "unit-teuton-swordsman") + GetPlayerData(GetFactionPlayer("marcomannia"), "UnitTypesCount", "unit_suebi_swordsman")) >= 8
		) then
			player = GetFactionPlayer("marcomannia")
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("marbod"),
			"Much did I learn about statecraft and military organization during my younger years in Rome. Already, we have a disciplined army to pursue our dangerous - albeit rewarding - task. The Boii shall be no match for us!",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-home-of-the-boii-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("marcomannia") and PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii") and GetNumRivals(GetFactionPlayer("marcomannia")) == 0) then
			player = GetFactionPlayer("marcomannia")
			return true
		end
		return false
	end,
	function() 
		Event(
			FindHero("marbod"),
			"The Boii's capital has become naught but a burning ruin. On its ashes we shall build our own settlement of Bubienum, the center of our new Marcomannic kingdom!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("the-home-of-the-boii", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)

-- if Marbod dies, the quest is lost
AddTrigger("the-home-of-the-boii-marbod-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("marcomannia") and PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Marbod must survive") and FindHero("marbod", GetFactionPlayer("marcomannia")) == nil) then
			return true
		end
		return false
	end,
	function()
		if (GetFactionPlayer("marcomannia") == GetThisPlayer()) then
			ActionDefeat()
		end
		return false
	end
)

-- dialogue when the Marcomanni find the Vandals (Lugii)
AddTrigger("the-home-of-the-boii-vandals-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("vandalia"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("marcomannia"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("marcomannia")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local vandal_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("vandalia"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("marcomannia")) then
						vandal_unit = uncount[unit1]
						break
					end
				end
			end
		end
		
		if (not vandal_unit) then
			return true
		end
			
		Event(
			vandal_unit,
			"Chieftain Marbod of the Marcommani! As promised, we have come to help you in your fight against the Celts.",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					FindHero("marbod"),
					"Tough you are, Vandal warriors! Let us crush some Boii skulls.",
					player,
					{"~!Continue"},
					{function(s)
					end}
				)
			end}
		)
		return false
	end
)

-- dialogue when the Marcomanni find the Suebi (Semnones)
AddTrigger("the-home-of-the-boii-suebi-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("suebia"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("marcomannia"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("marcomannia")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local suebi_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("suebia"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("marcomannia")) then
						suebi_unit = uncount[unit1]
						break
					end
				end
			end
		end
		
		if (not suebi_unit) then
			return true
		end
			
		Event(
			FindHero("marbod"),
			"Ah, there you are! Warriors of the Semnones, our tribes are Suebic kin. It is only right that we join forces in war.",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					suebi_unit,
					"We are ready for battle, Marbod!",
					player,
					{"~!Continue"},
					{function(s)
					end}
				)
			end}
		)
		return false
	end
)


-- dialogue when the Marcomanni find the Lombards
AddTrigger("the-home-of-the-boii-lombards-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("marcomannia"), "- Defeat the Boii")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("lombardy"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("marcomannia"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("marcomannia")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local lombard_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("lombardy"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("marcomannia")) then
						lombard_unit = uncount[unit1]
						break
					end
				end
			end
		end
		
		if (not lombard_unit) then
			return true
		end
			
		Event(
			lombard_unit,
			"We, Lombard warriors, have come from beyond the Elbe to join you in battle!",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					FindHero("marbod"),
					"Your help is most appreciated, and you shall share in our booty!",
					player,
					{"~!Continue"},
					{function(s)
					end}
				)
			end}
		)
		return false
	end
)
