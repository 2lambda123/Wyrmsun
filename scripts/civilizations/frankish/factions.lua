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

DefineFaction("austrasia", {
	Name = "Austrasia",
	Adjective = "Austrasian",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Color = "pink",
	DefaultTier = "kingdom", -- correct?
	FactionUpgrade = "upgrade-faction-austrasia",
	Icon = "icon-flag-five-black-birds-on-purple",
	MinisterTitles = {
		--"head-of-government", "none", "monarchy", "none", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	},
	HistoricalCapitals = {
		0, "reims"
	}
})

DefineFaction("east-francia", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	Name = "East Francia",
	Adjective = "East Frankish",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Color = "blue",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-east-francia",
	Icon = "icon-flag-five-white-birds-on-red",
	-- East Francia existed in 869, when it conquered Moravia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	--[[
	HistoricalDiplomacyStates = {
		871, "moravia", "war", -- Moravia rose against East Frankish rule in 871; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		874, "moravia", "overlord", -- Moravia submitted as a vassal (paying an annual tribute) to the East Franks in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "bohemia", "overlord" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
	--]]
})

DefineFaction("neustria", {
	Name = "Neustria",
	Adjective = "Neustrian",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Color = "orange",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-neustria",
	Icon = "icon-flag-five-orange-birds-on-black",
	MinisterTitles = {
		--"head-of-government", "none", "monarchy", "none", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	},
	HistoricalCapitals = {
		0, "paris"
	}
})

DefineFaction("salia", {
	HistoricalCapitals = {
		0, "soissons"
	}
})

DefineFaction("burgundia", { -- Frankish kingdom of Burgundy (not to be confused with the original Kingdom of the Burgundians - an East Germanic people - or the French region)
	Name = "Burgundia",
	Adjective = "Burgundian",
	Civilization = "frankish",
	ParentFaction = "francia",
	Type = "polity",
	Color = "green",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-burgundia",
	Icon = "icon-flag-five-purple-birds-on-green",
	HistoricalCapitals = {
		0, "orleans"
	}
})
