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
--      (c) Copyright 2013-2021 by Andrettin
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

DefinePredependency("unit-dwarven-axefighter",
	{"upgrade-dwarven-civilization", "upgrade_faction_surghan_mercenaries", 0}
)

DefinePredependency("unit-surghan-mercenary-axefighter",
	{"upgrade_faction_surghan_mercenaries"}
)

DefinePredependency("unit-dwarven-guard",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-scout",
	{"upgrade-dwarven-civilization", "upgrade-faction-goldhoof-clan", 0, "upgrade-faction-eikinskjaldi-clan", 0, "upgrade-faction-joruvellir", 0, "upgrade-faction-yawning-yales", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-joruvellir-scout",
	{"upgrade-faction-goldhoof-clan"},
	"or", {"upgrade-faction-eikinskjaldi-clan"},
	"or", {"upgrade-faction-joruvellir"},
	"or", {"upgrade-faction-yawning-yales"}
)

DefinePredependency("unit-dwarven-thunderer",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-ballista-tower",
	{"upgrade_gunpowder", 0}
)

DefinePredependency("unit-dwarven-cannon-tower",
	{"upgrade_gunpowder"}
)

DefineDependency("unit-dwarven-cannon-tower",
	{"unit-dwarven-lumber-mill", "unit-dwarven-smithy", "upgrade-masonry", "upgrade-engineering", "upgrade_gunpowder"},
	"or", {"unit-dwarven-lumber-mill", "unit-brising-smithy", "upgrade-masonry", "upgrade-engineering", "upgrade_gunpowder"}
)

DefinePredependency("unit-dwarven-wall",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-ballista",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-yale-pen",
	{"upgrade-dwarven-civilization", "upgrade-faction-goldhoof-clan", 0, "upgrade-faction-eikinskjaldi-clan", 0, "upgrade-faction-joruvellir", 0, "upgrade-faction-yawning-yales", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-joruvellir-yale-pen",
	{"upgrade-faction-goldhoof-clan"}, "or", {"upgrade-faction-eikinskjaldi-clan"}, "or", {"upgrade-faction-joruvellir"}, "or", {"upgrade-faction-yawning-yales"}
)

DefinePredependency("unit-dwarven-yale-rider",
	{"upgrade-dwarven-civilization", "upgrade-faction-goldhoof-clan", 0, "upgrade-faction-eikinskjaldi-clan", 0, "upgrade-faction-joruvellir", 0, "upgrade-faction-yawning-yales", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-joruvellir-yale-rider",
	{"upgrade-faction-goldhoof-clan"},
	"or", {"upgrade-faction-eikinskjaldi-clan"},
	"or", {"upgrade-faction-joruvellir"},
	"or", {"upgrade-faction-yawning-yales"}
)

DefinePredependency("unit-dwarven-town-hall",
	{"upgrade-dwarven-civilization"}
)

DefinePredependency("unit-dwarven-mushroom-farm",
	{"upgrade-dwarven-civilization"}
)

DefinePredependency("unit-dwarven-barracks",
	{"upgrade-dwarven-civilization"}
)

DefinePredependency("unit-dwarven-lumber-mill",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-masons-shop",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-temple",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-market",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-academy",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-witness",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}
)

DefinePredependency("unit_dwarven_dock",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit_dwarven_miner",
	{"upgrade-faction-brising-clan", 0, "upgrade-faction-lyr", 0}
)

DefinePredependency("unit_brising_miner",
	{"upgrade-faction-brising-clan"}, "or", {"upgrade-faction-lyr"}
)

DefinePredependency("unit-dwarven-smithy",
	{"upgrade-dwarven-civilization", "upgrade-faction-brising-clan", 0, "upgrade-faction-lyr", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-brising-smithy",
	{"upgrade-faction-brising-clan"}, "or", {"upgrade-faction-lyr"}
)

DefinePredependency("unit-dwarven-sentry-tower",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)
