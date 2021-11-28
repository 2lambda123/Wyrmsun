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

DefineFaction("abasgi-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Abasgi Tribe",
	Adjective = "Abasgi",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "blue"
})

DefineFaction("alan-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Alan Tribe",
	Adjective = "Alan",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "purple"
})

DefineFaction("alazone-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Alazone Tribe",
	Adjective = "Alazone",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "orange"
})

DefineFaction("aorsi-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Aorsi Tribe",
	Adjective = "Aorsi",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "violet"
})

DefineFaction("heniochi-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Heniochi Tribe",
	Adjective = "Heniochi",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "violet"
})

DefineFaction("iazyge-tribe", {
	Name = "Iazyge Tribe",
	Adjective = "Iazyge",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "violet",
	HistoricalDiplomacyStates = {
		171, "rome", "war", -- the Iazyges entered conflict with the Romans in (apparently) 171; Source: "Ancient Warfare VII.6", 2013, pp. 7-8.
		175, "rome", "peace" -- in 175 the Romans defeated the Iazyges and forced them to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("mede-tribe", {
	Name = "Mede Tribe",
	Adjective = "Mede",
	Civilization = "persian",
	Type = "tribe",
	Color = "brown"
})

DefineFaction("navari-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Navari Tribe",
	Adjective = "Navari",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "blue"
})

DefineFaction("roxolani-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Roxolani Tribe",
	Adjective = "Roxolani",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "red"
})

DefineFaction("sarmatian-tribe", {
	Name = "Sarmatian Tribe",
	Adjective = "Sarmatian",
	Civilization = "persian",
	Type = "tribe",
	Color = "red"
})

DefineFaction("scythian-tribe", {
	Name = "Scythian Tribe",
	Adjective = "Scythian",
	Civilization = "persian",
	Type = "tribe",
	Color = "green"
})

DefineFaction("sindi-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Sindi Tribe",
	Adjective = "Sindi",
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "white"
})

DefineFaction("media", {
	Name = "Media",
	Adjective = "Median",
	Civilization = "persian",
	Type = "polity",
	Color = "yellow",
	DefaultTier = "kingdom",
	HistoricalCapitals = {
		-600, "ecbatana" -- Ecbatana was the capital of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	}
})

DefineFaction("parthia", {
	Name = "Parthia",
	Adjective = "Parthian",
	Civilization = "persian",
	Type = "polity",
	Color = "purple",
	DefaultTier = "kingdom",
	HistoricalCapitals = {
--		161, "Mesopotamia" -- Ctesiphon was the capital of Parthia in 161; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalDiplomacyStates = {
		161, "armenia", "war", -- in the autumn of 161 Parthia invaded Armenia, a vassal state of Rome; Source: "Ancient Warfare VII.6", 2013, p. 6.
		161, "rome", "war"
	}
})

DefineFaction("persia", {
	Name = "Persia",
	Adjective = "Persian",
	Civilization = "persian",
	Type = "polity",
	Color = "yellow",
	DefaultTier = "kingdom",
	HistoricalCapitals = {
		0, "persepolis"
	}
})

-- Non-Playable

DefineFaction("agraei-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Agraei Tribe",
	Adjective = "Agraei",
	Civilization = "persian", -- should be Arabic?
	Type = "tribe",
	Color = "yellow",
	Playable = false
})

DefineFaction("arab-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Arab Tribe",
	Adjective = "Arab",
	Civilization = "persian", -- should be Arabic
	Type = "tribe",
	Color = "green",
	Playable = false
})

DefineFaction("gaetuli-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Gaetuli Tribe",
	Adjective = "Gaetuli",
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Color = "black",
	Playable = false
})

DefineFaction("garamantes-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Garamantes Tribe",
	Adjective = "Garamantes",
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Color = "yellow",
	Playable = false
})

DefineFaction("mauri-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Mauri Tribe",
	Adjective = "Mauri",
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Color = "green",
	Playable = false
})

DefineFaction("musulamii-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Musulamii Tribe",
	Adjective = "Musulamii",
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Color = "brown",
	Playable = false
})

DefineFaction("nabataei-tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Name = "Nabataei Tribe",
	Adjective = "Nabataei",
	Civilization = "persian", -- should be Arabic?
	Type = "tribe",
	Color = "black",
	Playable = false
})

-- according to one scholar, the Seringas and Sercingas of Widsith are Caucasian peoples; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 120.