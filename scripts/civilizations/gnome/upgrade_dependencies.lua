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
--      (c) Copyright 2014-2021 by Andrettin
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

DefinePredependency("unit_gnomish_worker",
	{"upgrade-faction-acthnic-tribe", 0, "upgrade-faction-derro-tribe", 0}
)

DefinePredependency("unit-gnomish-recruit",
	{"upgrade-faction-acthnic-tribe", 0, "upgrade-faction-derro-tribe", 0}
)

DefinePredependency("unit-gnomish-herbalist",
	{"upgrade-faction-acthnic-tribe", 0}
)

DefinePredependency("unit_deep_gnomish_worker",
	{"upgrade-faction-acthnic-tribe"}
)

DefinePredependency("unit-deep-gnomish-recruit",
	{"upgrade-faction-acthnic-tribe"}
)

DefinePredependency("unit-deep-gnomish-herbalist",
	{"upgrade-faction-acthnic-tribe"}
)

DefinePredependency("unit_derro_worker",
	{"upgrade-faction-derro-tribe"}
)

DefinePredependency("unit-derro-thug",
	{"upgrade-faction-derro-tribe"}
)

DefinePredependency("unit-gnomish-caravan",
	{"upgrade-gnomish-civilization"}
)
