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

if (LoadedGame == false) then
	SetPlayerData(0, "Faction", "suebi_tribe")
	SetPlayerData(0, "Resources", "copper", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Faction", "aeduia")
	SetPlayerData(1, "Resources", "copper", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetAiType(1, "land-attack")
	SetPlayerData(2, "Faction", "sequania")
	SetPlayerData(2, "Resources", "copper", 0)
	SetPlayerData(2, "Resources", "lumber", 0)
	SetPlayerData(2, "Resources", "stone", 0)
	SetAiType(2, "passive")
	
	SetPlayerData(GetFactionPlayer("sequania"), "Allow", "unit-teuton-barracks", "F")
	
	if (GrandStrategy == false) then
		unit = CreateUnit("unit-suebi-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-suebi-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit-teuton-swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
		SetUnitVariable(unit, "Active", false)
	end
	
	SetDiplomacy(0, "allied", 2)
	SetSharedVision(0, true, 2)
	SetDiplomacy(2, "allied", 0)
	SetSharedVision(2, true, 0)
end

-- The Battle of Magetobria introduction
AddTrigger("the-battle-of-magetobria-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Suebi Tribe") and PlayerHasObjective(GetFactionPlayer("Suebi Tribe"), "- Defeat the Aedui") == false) then
			player = GetFactionPlayer("Suebi Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"We, the Suebi, have been hired by the Sequani and Arverni tribes to come into Gaul and help them defeat their enemies, the Aedui. We are now positioned in a Sequani settlement, Magetobria, and an Aedui army approaches...",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your rivals")
				AddPlayerObjective(player, "- Defeat the Aedui")
			end}
		)
		return false
	end
)

AddTrigger("the-battle-of-magetobria-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Suebi Tribe") and PlayerHasObjective(GetFactionPlayer("Suebi Tribe"), "- Defeat the Aedui") and GetNumRivals(GetFactionPlayer("Suebi Tribe")) == 0) then
			player = GetFactionPlayer("Suebi Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The Aedui have been crushed, victory is ours!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"We were granted land in Gaul by the Sequani and the Arverni. However, our chieftain Ariovistus wanted more. Not only did he begin to lord over the Aedui, but much of the Sequani's lands was taken for settlement, with our kinsmen being brought from beyond the Rhine. The Gaulish tribes lied prostate before us.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"It would not be long, however, until an intervening force would sweep our warriors back across the Rhine into Germania: Caesar's Legions. The brilliant general bested Ariovistus in the field, forcing the chieftain to abandon his plans to conquer Gaul for the Suebi.",
					player,
					{"~!Continue"},
					{function(s)
						if (player == GetThisPlayer()) then
							ActionVictory()
							if (GrandStrategy == false) then
								SetQuestCompleted("the-battle-of-magetobria", GameSettings.Difficulty)
							end
						end
					end},
					nil,
					nil,
					GrandStrategy
				)
				end}
			)
			end}
		)
		return false
	end
)
