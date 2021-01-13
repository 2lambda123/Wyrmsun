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

DefineLanguageWord("Flodu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2.
	Language = "northwest-germanic", -- said in the source to belong to the Runic "language", which is clarified here to be Northwest Germanic: http://www.utexas.edu/cola/centers/lrc/general/ie-lg/Germanic.html
	Type = "noun",
	Meanings = {"Flood"}, -- presumably, since the word it comes from has that meaning
	DerivesFrom = {"proto-germanic", "noun", "Flōduz"}
})

DefineLanguageWord("Horna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "northwest-germanic", -- from the Gallehus inscription, probably Northwest Germanic as per the description here: http://www.utexas.edu/cola/centers/lrc/general/ie-lg/Germanic.html
	Type = "noun",
	Meanings = {"Horn"},
	DerivesFrom = {"proto-germanic", "noun", "Hurna"} -- presumably
})
