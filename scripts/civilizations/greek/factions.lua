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
--      (c) Copyright 2015-2021 by Andrettin
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

-- tribes

DefineFaction("chaoni-tribe", {
	Name = "Chaoni Tribe",
	Adjective = "Chaoni",
	Civilization = "greek",
	Type = "tribe",
	Color = "yellow"
})

DefineFaction("dolopes-tribe", {
	Name = "Dolopes Tribe",
	Adjective = "Dolopes",
	Civilization = "greek",
	Type = "tribe",
	Color = "green"
})

-- polities

DefineFaction("argos", {
	Name = "Argos",
	Civilization = "greek",
	Type = "polity",
	Color = "green",
	DefaultTier = "county",
	Adjective = "Argoan",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "county", "Archon",
		"ruler", "none", "republic", "county", "Archon"
	}
})

DefineFaction("athens", {
	Name = "Athens",
	Civilization = "greek",
	Type = "polity",
	Color = "red",
	DefaultTier = "county",
	Adjective = "Athenian",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "county", "Archon",
		"ruler", "none", "republic", "county", "Archon"
	},
	HistoricalDiplomacyStates = {
		-450, "argos", "alliance", -- Argos was allied with Athens as of c. 450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
		-431, "argos", "peace" -- Argos was neutral in the beginning of the Peloponnesian War in 431 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.
	}
})

DefineFaction("cimmerian-bosphorus", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Cimmerian Bosphorus",
	Adjective = "Bosphorean",
	Civilization = "greek", -- accurate?
	Type = "polity",
	Color = "green",
	DefaultTier = "kingdom" -- Kingdom of the Cimmerian Bosphorus
})

DefineFaction("corinth", {
	Name = "Corinth",
	Civilization = "greek",
	Type = "polity",
	Color = "black",
	DefaultTier = "county",
	Adjective = "Corinthian",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "county", "Archon",
		"ruler", "none", "republic", "county", "Archon"
	},
	HistoricalDiplomacyStates = {
		-431, "athens", "war" -- Corinth was allied with Sparta against Athens in 431 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.
	}
})

DefineFaction("epirus", {
	Name = "Epirus",
	Adjective = "Epirote",
	Civilization = "greek",
	Type = "polity",
	Color = "yellow",
	DefaultTier = "kingdom"
})

DefineFaction("ionia", {
	Name = "Ionia",
	Adjective = "Ionian",
	Civilization = "greek",
	Type = "polity",
	Color = "black",
	DefaultTier = "kingdom"
})

DefineFaction("krete", {
	Name = "Krete",
	Adjective = "Cretan",
	Civilization = "greek",
	Type = "polity",
	Color = "yellow",
	DefaultTier = "kingdom"
})

DefineFaction("macedon", {
	Name = "Macedon",
	Adjective = "Macedonian",
	Civilization = "greek",
	Type = "polity",
	Color = "brown",
	DefaultTier = "kingdom",
	HistoricalDiplomacyStates = {
		-431, "athens", "war" -- Macedon was allied with Sparta against Athens in 431 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.
	}
})

DefineFaction("mycenae", {
	Name = "Mycenae",
	Civilization = "greek",
	Type = "polity",
	Color = "orange",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "county", "Archon",
		"ruler", "none", "republic", "county", "Archon"
	},
	HistoricalCapitals = {
		-1450, "mycenae" -- Mycenae was the center of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineFaction("sparta", {
	Name = "Sparta",
	Adjective = "Spartan",
	Civilization = "greek",
	Type = "polity",
	Color = "brown",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "county", "Archon",
		"ruler", "none", "republic", "county", "Archon"
	},
	HistoricalDiplomacyStates = {
		-431, "corinth", "alliance", -- Corinth was allied with Sparta against Athens in 431 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.
		-431, "macedon", "alliance" -- Macedon was allied with Sparta against Athens in 431 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.
	}
})

DefineFaction("thebes", {
	Name = "Thebes",
	Adjective = "Theban",
	Civilization = "greek",
	Type = "polity",
	Color = "blue",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "county", "Archon",
		"ruler", "none", "republic", "county", "Archon"
	},
	HistoricalDiplomacyStates = {
		-450, "athens", "alliance", -- Thebes was allied with Athens as of c. 450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
		-431, "sparta", "alliance", -- Thebes was allied with Sparta against Athens in 431 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.
		-431, "athens", "war"
	}
})

DefineFaction("thrace", {
	Name = "Thrace",
	Adjective = "Thracian",
	Civilization = "greek",
	Type = "polity",
	Color = "orange",
	DefaultTier = "kingdom"
})

-- Non-Playable

DefineFaction("armenia", {
	Name = "Armenia",
	Adjective = "Armenian",
	Civilization = "greek",
	Type = "polity",
	Color = "brown",
	DefaultTier = "kingdom",
	Playable = false,
	HistoricalCapitals = {
--		161, "Armenia" -- Vagharshapat was the capital of (apparently) Armenia in 161; Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})
