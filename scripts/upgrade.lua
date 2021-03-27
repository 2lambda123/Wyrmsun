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
--      (c) Copyright 2001-2021 by Lutz Sammer, Jimmy Salmon and Andrettin
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

DefineUpgrade("upgrade-melee-weapon-1", {
	Name = "Melee Weapon 1",
	Class = "melee-weapon-1",
	Weapon = true
})

DefineUpgrade("upgrade-broad-sword", {
	Name = "Broad Sword",
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "copper", 800}
})

DefineUpgrade("upgrade-broad-axe", {
	Name = "Broad Axe",
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "copper", 500, "lumber", 300}
})

DefineUpgrade("upgrade-melee-weapon-2", {
	Name = "Melee Weapon 2",
	Class = "melee-weapon-2",
	Weapon = true
})

DefineUpgrade("upgrade-long-sword", {
	Name = "Long Sword",
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "copper", 2400},
	RequirementsString = "Broad Sword and Ironworking"
})

DefineUpgrade("upgrade-great-axe", {
	Name = "Great Axe",
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "copper", 1500, "lumber", 900}
})

DefineUpgrade("upgrade-long-spear", {
	Name = "Long Spear",
	Class = "long-spear",
	Description = "With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies.",
	Icon = "icon-long-spear",
	Weapon = true,
	Costs = {"time", 200, "copper", 400, "lumber", 400}
})

DefineUpgrade("upgrade-pike", {
	Name = "Pike",
	Class = "pike",
	Description = "Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.",
	Icon = "icon-pike",
	Weapon = true,
	Costs = {"time", 250, "copper", 1200, "lumber", 1200},
	RequirementsString = "Long Spear and Ironworking"
})

DefineUpgrade("upgrade-bronze-shield", {
	Name = "Bronze Shield",
	Class = "bronze-shield",
	Shield = true,
	Costs = {"time", 200, "copper", 300, "lumber", 900}
})

DefineUpgrade("upgrade-iron-shield", {
	Name = "Iron Shield",
	Class = "iron-shield",
	Shield = true,
	Costs = {"time", 250, "copper", 900, "lumber", 1500}
})

DefineUpgrade("upgrade-ranged-projectile-1", {
	Name = "Ranged Projectile 1",
	Class = "ranged-projectile-1",
	Costs = {"time", 200, "copper", 300, "lumber", 900}
})

DefineUpgrade("upgrade-ranged-projectile-2", {
	Name = "Ranged Projectile 2",
	Class = "ranged-projectile-2",
	Costs = {"time", 250, "copper", 900, "lumber", 1500}
})

DefineUpgrade("upgrade-siege-projectile-1", {
	Name = "Siege Projectile 1",
	Class = "siege-projectile-1"
})

DefineUpgrade("upgrade-catapult-granite-projectile", {
	Name = "Granite Catapult Projectile",
	Parent = "upgrade-siege-projectile-1",
	Icon = "icon-catapult-projectile-2",
	Costs = {"time", 250, "copper", 1000, "stone", 500},
	RequirementsString = "Lumber Mill and Engineering"
})

DefineUpgrade("upgrade-broadhead-ballista-bolt", {
	Name = "Broadhead Ballista Bolt",
	Parent = "upgrade-siege-projectile-1",
	Costs = {"time", 250, "copper", 1000, "lumber", 500},
	RequirementsString = "Lumber Mill and Engineering"
})

DefineUpgrade("upgrade-siege-projectile-2", {
	Name = "Siege Projectile 2",
	Class = "siege-projectile-2"
})

DefineUpgrade("upgrade-catapult-metal-projectile", {
	Name = "Metal Catapult Projectile",
	Parent = "upgrade-siege-projectile-2",
	Icon = "icon-catapult-projectile-3",
	Costs = {"time", 250, "copper", 4000},
	RequirementsString = "Lumber Mill, Catapult Granite Projectile and Ironworking"
})

DefineUpgrade("upgrade-penetrating-ballista-bolt", {
	Name = "Penetrating Ballista Bolt",
	Parent = "upgrade-siege-projectile-2",
	Costs = {"time", 250, "copper", 3000, "lumber", 1000},
	RequirementsString = "Lumber Mill, Broadhead Ballista Bolt and Ironworking"
})

DefineUpgrade("upgrade-alchemy", {
	Name = "Alchemy",
	Class = "alchemy",
	Icon = "icon-cauldron",
	Description = "Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.",
	RequirementsString = "Philosophy, Mathematics and Ironworking",
	Costs = {"time", 250, "copper", 4000}
})

DefineUpgrade("upgrade-printing-press", {
	Name = "Printing Press",
	Class = "printing-press",
	Civilization = "neutral",
	--Description = "The invention of the printing press allowed knowledge to be more quickly and efficiently spread.",
	Icon = "icon-printing-press",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000},
	GrandStrategyProductionEfficiencyModifier = {"research", 25}
})

DefineUpgrade("upgrade-mathematics", {
	Name = "Mathematics",
	Class = "mathematics",
	Civilization = "neutral",
	Icon = "icon-mathematics",
	Description = "The understanding of even a basic level of mathematics has significant benefits for a civilization, particularly in matters such as keeping account of trade.",
	RequirementsString = "Writing",
	Costs = {"time", 250, "copper", 2000}
})

DefineUpgrade("upgrade-engineering", {
	Name = "Engineering",
	Class = "engineering",
	Civilization = "neutral",
	Icon = "icon-engineering",
	Description = "The development of engineering allows the creation of more complex mechanisms.\n\nEffect: Allows siege engines, railroads and minecarts.",
	RequirementsString = "Mathematics, Masonry and Ironworking",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000}
})

DefineModifier("upgrade_ironworking",
	{"improve-production", "iron", 10},
	{"improve-production", "mithril", 10},
	{"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"},
	{"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-germanic-smithy"},
	{"apply-to", "unit-latin-smithy"},
	{"apply-to", "unit-norse-smithy"},
	{"apply-to", "unit-teuton-smithy"}
)

DefineModifier("upgrade-mathematics",
	{"TradeCost", -5},
	{"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-germanic-market"},
	{"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-norse-market"},
	{"apply-to", "unit-teuton-market"}
)

DefineModifier("upgrade-engineering", -- dummy upgrade modifier to change the variation
	{"apply-to", "unit-gold-mine"}
)

DefineModifier("upgrade_gunpowder",
	{"apply-to", "unit-dwarven-ballista-tower"}, {"convert-to", "unit-dwarven-cannon-tower"}
)

-- Load the faction type upgrades
Load("scripts/upgrade_faction_types.lua")

-- Load the deity upgrades
Load("scripts/upgrade_deities.lua")

-- Military doctrine upgrades
Load("scripts/upgrade_military_doctrines.lua")

-- Load the upgrades of the different civilizations
Load("scripts/civilizations/dwarf/upgrade.lua")
Load("scripts/civilizations/germanic/upgrade.lua")
Load("scripts/civilizations/anglo_saxon/upgrade.lua")
Load("scripts/civilizations/english/upgrade.lua")
Load("scripts/civilizations/frankish/upgrade.lua")
Load("scripts/civilizations/goblin/upgrade.lua")
Load("scripts/civilizations/goth/upgrade.lua")
Load("scripts/civilizations/latin/upgrade.lua")
Load("scripts/civilizations/norse/upgrade.lua")
Load("scripts/civilizations/slav/upgrade.lua")
Load("scripts/civilizations/suebi/upgrade.lua")
Load("scripts/civilizations/teuton/upgrade.lua")

Load("scripts/upgrade_faction.lua")
Load("scripts/upgrade_dependencies.lua")

-- miscellaneous individual upgrades

DefineUpgrade("upgrade-child", {
	Name = "Child",
	Icon = "icon-level-up"
})

DefineUpgrade("upgrade-bee-child", {
	Name = "Bee Child",
	Icon = "icon-level-up"
})

DefineUpgrade("upgrade-gryphon-child", {
	Name = "Gryphon Child",
	Icon = "icon-level-up"
})

DefineUpgrade("upgrade-wyrm-child", {
	Name = "Wyrm Child",
	Icon = "icon-level-up"
})

DefineModifier("upgrade-child",
	{"BasicDamage", -2}
)

DefineModifier("upgrade-bee-child",
	{"BasicDamage", -1}
)

DefineModifier("upgrade-gryphon-child",
	{"BasicDamage", -8}
)

DefineModifier("upgrade-wyrm-child",
	{"BasicDamage", -24}
)

Load("scripts/item_prefixes.lua")
Load("scripts/item_suffixes.lua")
Load("scripts/item_suffixes_runic.lua")
Load("scripts/item_sets.lua")
Load("scripts/province_modifiers.lua")
Load("scripts/traits.lua")
Load("scripts/elixirs.lua")
Load("scripts/works.lua")
