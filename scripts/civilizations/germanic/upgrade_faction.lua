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
--      upgrade.ccl - Define the germanic dependencies and upgrades.
--
--      (c) Copyright 2014-2022 by Andrettin
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

DefineModifier("upgrade_faction_asa_tribe",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade_faction_jarling_tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade_faction_karling_tribe",
	{"Supply", 1},
	{"apply-to", "unit-germanic-farm"}
)

DefineModifier("upgrade_faction_skeldung_tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade_faction_thralling_tribe",
	{"improve-production", "lumber", 5},
	{"apply-to", "unit-germanic-carpenters-shop"}
)

DefineModifier("upgrade_faction_yngling_tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}
)
