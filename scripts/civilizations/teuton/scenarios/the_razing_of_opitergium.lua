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
	SetPlayerData(0, "Resources", "copper", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Faction", "rome")
	SetPlayerData(1, "Resources", "copper", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")

	local rome_player = GetFactionPlayer("Rome")
	SetPlayerData(rome_player, "Allow", "upgrade-masonry", "R")
	SetPlayerData(0, "Faction", "marcomanni_tribe")

--	unit = CreateUnit("unit-suebi-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")}) -- add Ballomar here later

	unit = CreateUnit("unit-suebi-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	unit = CreateUnit("unit-suebi-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	unit = CreateUnit("unit-teuton-archer", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
end

-- The Razing of Opitergium introduction
AddTrigger("the-razing-of-opitergium-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Destroy Opitergium") == false) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Leaving a trail of destruction behind us, we have reached Italy under the leadership of our chieftain Ballomar, and now lay siege to the Roman city of Opitergium.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"The time has come to show the Romans what we are truly made of, and force them to provide us with riches and suitable lands.",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Defeat your rivals")
					AddPlayerObjective(player, "- Destroy Opitergium")
				end}
			)
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

AddTrigger("the-razing-of-opitergium-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("marcomanni_tribe") and PlayerHasObjective(GetFactionPlayer("marcomanni_tribe"), "- Destroy Opitergium") and GetPlayerData(GetFactionPlayer("rome"), "TotalNumUnitsConstructed") <= 0) then
			player = GetFactionPlayer("marcomanni_tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Opitergium became naught but ashes. Our next goal, Aquileia, would soon be besieged by our warriors.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"But the Romans resisted. They managed to put off our siege, and pursued us until we had been driven beyond the Danube. That, however, was not enough for the Roman Emperor Marcus Aurelius - he desired to make a new Roman province out of our lands. Fortunately, domestic troubles forced him to turn his attention elsewhere, leaving us to our own devices. The Marcomanni live on!",
				player,
				{"~!Continue"},
				{function(s)
					if (player == GetThisPlayer()) then
						ActionVictory()
						if (GrandStrategy == false) then
							SetQuestCompleted("the-razing-of-opitergium", GameSettings.Difficulty)
						end
					end
				end},
				nil,
				nil,
				GrandStrategy
			)
			end}
		)
		return false
	end
)
