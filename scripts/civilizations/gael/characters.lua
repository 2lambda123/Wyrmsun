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
--      (c) Copyright 2016-2022 by Andrettin
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

DefineCharacter("aedan-mac-gabrain", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
	Name = "Aedan", -- the king of a kingdom founded in Argyll by Irish settlers
	ExtraName = "mac Gabrain",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "gael",
	Faction = "argyll",
	StartDate = 574, -- became king
	-- attacked the Bernicians in 603 AD
	HistoricalTitles = {
		"ruler", 574, 0, "argyll"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "argyll") then
			return true
		end
		return false
	end
})

DefineCharacter("aidan", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 118.
	Name = "Aidan",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "gael", -- monk from Iona, a northern Irish or Pictish monastery
	Faction = "northumbria",
	StartDate = 634, -- arrived in 634 in Northumbria with a group of monks, and they went to live in the island of Lindisfarne
	DeathDate = 651, -- died
	Deities = {"christian-god"}
})

DefineCharacter("finan", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 120, 122.
	Name = "Finan",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "gael", -- monk from Iona, a northern Irish or Pictish monastery
	Faction = "northumbria",
	StartDate = 651, -- succeeded Aidan
	DeathDate = 660, -- died; as given on page 122, on page 120 Stenton gives him as having lived until 661
	Deities = {"christian-god"}
})

DefineCharacter("bruide-mac-beli", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 87-88.
	Name = "Bruide",
	ExtraName = "mac Beli";
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "gael",
	Faction = "pict-tribe",
	-- son of the king of Strathclyde
	StartDate = 672,
	DeathDate = 693, -- died
	HistoricalTitles = {
		"ruler", 672, 693, "pict-tribe" -- became king of the Picts in 672
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "pict-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("dicuil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 40.
	Name = "Dicuil", -- Irish monk who became notable for his scholarship
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "gael",
	StartDate = 825, -- wrote "De Mensura Orbis Terrae"
	Deities = {"christian-god"},
	AuthoredWorks = {"upgrade-work-de-mensura-orbis-terrae"}
})
