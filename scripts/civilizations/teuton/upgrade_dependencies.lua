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
--      (c) Copyright 2014-2020 by Andrettin
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

DefinePredependency("upgrade-teuton-spatha",
	{"upgrade-frankish-civilization", 0}
)

DefineDependency("upgrade-teuton-spatha",
	{"upgrade-germanic-broad-sword", "upgrade_ironworking"}
)

DefinePredependency("upgrade-frank-spatha",
	{"upgrade-frankish-civilization"}
)

DefineDependency("upgrade-frank-spatha",
	{"upgrade-germanic-broad-sword", "upgrade_ironworking"}
)

DefineDependency("upgrade-teuton-pike",
	{"upgrade-germanic-long-spear", "upgrade_ironworking"}
)

DefineDependency("upgrade-teuton-iron-shield",
	{"upgrade-germanic-bronze-shield", "upgrade_ironworking"}
)

DefineDependency("upgrade-teuton-bodkin-arrow",
	{"upgrade-germanic-barbed-arrow", "upgrade_ironworking"}
)

DefineDependency("upgrade-teuton-catapult-projectile-1",
	{"unit-teuton-lumber-mill", "upgrade-engineering"}, "or", {"unit-norse-lumber-mill", "upgrade-engineering"}, "or", {"upgrade-mercenary-company", "upgrade-engineering"}
)

DefineDependency("upgrade-teuton-catapult-projectile-2",
	{"unit-teuton-lumber-mill", "upgrade-teuton-catapult-projectile-1", "upgrade_ironworking"}, "or", {"unit-norse-lumber-mill", "upgrade-teuton-catapult-projectile-1", "upgrade_ironworking"}, "or", {"upgrade-mercenary-company", "upgrade-teuton-catapult-projectile-1", "upgrade_ironworking"}
)

DefineDependency("unit-teuton-stronghold",
	{"unit-teuton-barracks", "upgrade-masonry"}, "or", {"unit-norse-barracks", "upgrade-masonry"}, "or", {"unit-latin-barracks", "upgrade-masonry"}
)

DefineDependency("upgrade-teuton-coinage",
	{"unit-teuton-smithy"}, "or", {"unit-latin-smithy"}, "or", {"unit-norse-smithy"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-teuton-alchemy",
	{"upgrade-philosophy", "upgrade-mathematics", "upgrade_ironworking"}
)

DefineDependency("unit-teuton-priest",
	{"upgrade-deity-christian-god"}, "or", {"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}, "or", {"upgrade-deity-frey"}
)
