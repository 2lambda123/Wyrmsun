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

DefineLanguageWord("Armada", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, pp. 8, 13.
	Language = "castillian",
	Type = "noun",
	Meanings = {"Naval Force"}
})

DefineLanguageWord("Batalla", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 3.
	Language = "castillian",
	Type = "noun",
	Meanings = {"Battle"},
	DerivesFrom = {"latin", "noun", "Battālia"}
})

DefineLanguageWord("Burges", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "castillian",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"late-latin", "noun", "Burgus"}
})

DefineLanguageWord("Burgo", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "castillian",
	Type = "noun",
	Meanings = {"Small Town", "Borough"},
	DerivesFrom = {"gothic", "noun", "Baúrgs"}, -- the source gives it as being of Germanic origin (then going on to list a series of Germanic words including this Gothic one); presumably from the Gothic in Spanish since they were the Germanic people who settled in Spain
	NumberCaseInflections = {
		"plural", "nominative", "Burgos"
	}
})

DefineLanguageWord("Guerra", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "castillian",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Hueste", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 12.
	Language = "castillian",
	Type = "noun",
	Meanings = {"Army"},
	DerivesFrom = {"late-latin", "noun", "Hostis"}
})

DefineLanguageWord("Rico", {
	Language = "castillian",
	Type = "adjective",
	Meanings = {"Rich"},
	DerivesFrom = {"gothic", "adjective", "Reiks"} -- Source: http://www.cnrtl.fr/definition/riche
})

DefineLanguageWord("Soldado", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 17.
	Language = "castillian",
	Type = "noun",
	Meanings = {"Soldier"},
	DerivesFrom = {"latin", "noun", "Solidatus"}
})
