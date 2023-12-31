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

DefineUpgrade("upgrade-germanic-broad-sword", {
	Parent = "upgrade-broad-sword",
	Icon = "icon-germanic-broad-sword",
	Civilization = "germanic",
	Description = "While the earlier short swords relied mostly on stabbing attacks, the enlarged width of the broad swords allowed germanic swordsmen to deal devastating slashing attacks.\n\nEffect: +2 Damage for swordwielders. Allows Broad Swords to be sold at the Market.",
	Background = "A number of bronze age swords have been found in Denmark. They were used by men not only in combat, but also as a symbol of social status.",
	Item = "unit-broad-sword"
})

DefineUpgrade("upgrade-germanic-long-spear", {
	Parent = "upgrade-long-spear",
	Civilization = "teuton", -- change to Germanic when they get spearmen
	Description = "With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies.\n\nEffect: +2 Damage for Spearmen. Allows Long Spears to be sold at the Market.",
	Item = "unit-long-spear"
})

DefineUpgrade("upgrade-germanic-bronze-shield", {
	Parent = "upgrade-bronze-shield",
	Icon = "icon-germanic-bronze-shield",
	Civilization = "germanic",
	Description = "Although earlier shields were made of simpler materials, the arrival of bronzeworking technologies allows Germanic craftsmen to produce bronze shields for the warriors, improving their personal protection.\n\nEffect: +2 Armor for melee infantry and cavalry. Allows Bronze Shields to be sold at the Market.",
	Background = "A number of bronze shields have been found preserved in Danish bogs, belonging to the archaeological period known as the Nordic Bronze Age (during which many scholars posit that the linguistic change from the Proto-Indo-European to Proto-Germanic happened). Those shields were actually probably not used in battle, but in rituals related to the sun and the seasons.",
	Item = "unit-bronze-shield"
})

DefineUpgrade("upgrade-germanic-barbed-arrow", {
	Name = "Barbed Arrow",
	Parent = "upgrade-ranged-projectile-1",
	Icon = "icon-germanic-barbed-arrow",
	Civilization = "germanic",
	Description = "An improvement over the basic triangular-shaped arrow, the barbed arrow is much harder to be removed from the wound after puncturing an enemy.\n\nEffect: +2 Damage for archers, strongholds and guard towers. Allows Barbed Arrows to be sold at the Market.",
	Arrows = true,
	Item = "unit-barbed-arrows"
})

DefineModifier("upgrade-germanic-broad-sword",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-germanic-spearman"},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-teuton-knight-lord"},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"},
	{"apply-to", "unit_gaulish_swordsman"}, {"apply-to", "unit_gaulish_veteran_swordsman"}, {"apply-to", "unit_gaulish_chieftain"},
	{"apply-to", "unit-latin-legionary"}, {"apply-to", "unit-latin-veteran-legionary"}, {"apply-to", "unit-latin-centurion"},
	{"apply-to", "unit-slavic-swordsman"}
)

DefineModifier("upgrade-germanic-long-spear",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-germanic-bronze-shield",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-germanic-spearman"},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit_suebi_swordsman"}, {"apply-to", "unit_suebi_veteran_swordsman"}, {"apply-to", "unit_suebi_chieftain"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-teuton-knight-lord"},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"},
	{"apply-to", "unit_gaulish_swordsman"}, {"apply-to", "unit_gaulish_veteran_swordsman"}, {"apply-to", "unit_gaulish_chieftain"},
	{"apply-to", "unit-latin-legionary"}, {"apply-to", "unit-latin-veteran-legionary"}, {"apply-to", "unit-latin-centurion"},
	{"apply-to", "unit-slavic-swordsman"}
)

DefineModifier("upgrade-germanic-barbed-arrow",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}, {"apply-to", "unit-teuton-archer"},
	{"apply-to", "unit-teuton-stronghold"}, {"apply-to", "unit-teuton-guard-tower"}
)

DefineModifier("upgrade_teutonic_civilization",
	{"change-civilization-to", "teuton"}
)
