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
--      (c) Copyright 2015-2020 by Andrettin
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

-- Tribes

DefineFaction("aequian-tribe", {
	Name = "Aequian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "teal"
})

DefineFaction("elymian-tribe", {
	Name = "Elymian Tribe",
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Color = "yellow"
})

DefineFaction("frentanian-tribe", {
	Name = "Frentanian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "orange"
})

DefineFaction("iapygian-tribe", {
	Name = "Iapygian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "teal"
})

DefineFaction("latin-tribe", {
	Name = "Latin Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "red",
	Adjective = "Latin"
})

DefineFaction("marsian-tribe", {
	Name = "Marsian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "brown"
})

DefineFaction("messapian-tribe", {
	Name = "Messapian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "green"
})

DefineFaction("oenotrian-tribe", {
	Name = "Oenotrian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "blue"
})

DefineFaction("picentian-tribe", {
	Name = "Picentian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "green"
})

DefineFaction("sabellian-tribe", {
	Name = "Sabellian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "white"
})

DefineFaction("sabine-tribe", {
	Name = "Sabine Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "blue"
})

DefineFaction("samnite-tribe", {
	Name = "Samnite Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "yellow"
})

DefineFaction("sicanian-tribe", {
	Name = "Sicanian Tribe",
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Color = "yellow"
})

DefineFaction("sicel-tribe", {
	Name = "Sicel Tribe",
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Color = "red"
})

DefineFaction("umbrian-tribe", {
	Name = "Umbrian Tribe",
	Civilization = "latin",
	Type = "tribe",
	Color = "pink"
})

DefineFaction("venetian-tribe", {
	Name = "Venetian Tribe",
	Civilization = "latin", -- is not correct, but they could be reasonably close to justify it for game purposes
	Type = "tribe",
	Color = "teal"
})

-- Polities

DefineFaction("rome", {
	Name = "Rome",
	Civilization = "latin",
	Type = "polity",
	Color = "red",
	DefaultTier = "kingdom",
	DefaultGovernmentType = "republic",
	DevelopsFrom = {"latin-tribe"},
	HistoricalGovernmentTypes = {
		-500, "republic", -- correct?
		-27, "monarchy" -- Augustus assumed power in Rome; was this the date in which he actually became emperor?
	},
	HistoricalTiers = {
		-27, "empire" -- Rome was an empire under Augustus
	},
	HistoricalCapitals = {
		-500, "rome" -- Rome was Rome's capital by 500 BC (this may seem like a silly remark, but even city-states may happen to change their capitals from their namesake to other cities); Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalUpgrades = {
		0, "upgrade-writing", true, -- polities must have writing
		-264, "upgrade-masonry", true, -- Rome should already have masonry technology by then
		-58, "upgrade-teuton-coinage", true, -- Silver currency existent in the Roman Republic during Caesar's time, and he issued gold currency during his campaigns in Gaul; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 190.
		395, "upgrade-deity-christian-god", true -- Christianity was already widespread in the Roman Empire around 395 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	HistoricalDiplomacyStates = {
		-54, "eburones-tribe", "war", -- the Eburones attacked the Romans in 54 BC (instigated by the Treviri, of whom they were clients); Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-224.
		-54, "nervii-tribe", "war", -- the Nervii allied with the Eburones to attack the Romans in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-224.
		161, "armenia", "overlord" -- in 161 Armenia was a vassal state of Rome; Source: "Ancient Warfare VII.6", 2013, p. 6.
	}
})

-- Mercenary Companies

DefineFaction("mamertines", {
	Name = "Mamertines",
	Civilization = "latin",
	Type = "mercenary-company",
	Color = "red",
	DefaultTier = "duchy"
})
