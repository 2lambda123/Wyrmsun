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
--      (c) Copyright 2016-2021 by Andrettin
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

DefineCharacter("radbod", { -- Frisian ruler defeated by Charles Martel in 718; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 403.
	Name = "Radbod",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "teuton",
	Faction = "friesland",
	StartDate = 704,
	HistoricalTitles = {
		"ruler", 704, 0, "friesland" -- king of the Frisians as of 716; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 168.
	},
	Deities = {"odin", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "friesland") then
			return true
		end
		return false
	end
})

DefineCharacter("bubo", { -- Frisian ruler defeated by Charles Martel in 736; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 403.
	Name = "Bubo",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "teuton",
	Faction = "friesland",
	Deities = {"odin", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "friesland") then
			return true
		end
		return false
	end
})

DefineCharacter("liudger", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 175.
	Name = "Liudger",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "teuton", -- Frisian
	Faction = "northumbria",
	Deities = {"christian-god"},
	-- became the first bishop of Münster
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "friesland") then
			return true
		end
		return false
	end
})

