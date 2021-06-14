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
--      (c) Copyright 2017-2021 by Andrettin
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

DefineModifier("upgrade-faction-ampsivarii-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-faction-batavian-tribe",
	{"BasicDamage", 3},
	{"Armor", -1},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-faction-chamavi-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-faction-chatti-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-faction-frank-tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-sugambri-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-ubii-tribe",
	{"improve-production", "copper", 5}, -- the Ubii were in a central trading position, making them more advanced than other Germanic tribes
	{"improve-production", "silver", 5},
	{"improve-production", "gold", 5},
	{"apply-to", "unit_teutonic_smithy"}
)

DefineModifier("upgrade-faction-austrasia",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-burgundia",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-east-francia",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-francia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-neustria",
	{"Accuracy", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-salia",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineDependency("upgrade-faction-ampsivarii-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-batavian-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-chamavi-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-chatti-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-frank-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-sugambri-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-ubii-tribe",
	{"upgrade_ironworking"}
)
