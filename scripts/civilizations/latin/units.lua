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
--      (c) Copyright 2016-2021 by Andrettin
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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-latin-legionary", {
	Name = "Legionary",
	Parent = "unit-template-infantry",
	Civilization = "latin",
	Description = "Roman infantry is renowned for its discipline and adaptability. Fighting in tight formations, the Roman legions are a force to be reckoned with.",
	Image = {"file", "latin/units/legionary.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-latin-legionary",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	Armor = 3, -- +1 armor
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	ButtonKey = "l",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Sounds = {
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-latin-veteran-legionary", {
	Name = "Veteran Legionary",
	Parent = "unit-template-veteran-infantry",
	Civilization = "latin",
	Description = "With the engagement of the Roman legions in multiple battlefields, the surviving legionaries become hardened by the experience, learning how to best avoid death at the hands of the their enemies.",
	Image = {"file", "latin/units/legionary.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-latin-veteran-legionary",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	Armor = 3, -- +1 armor
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Sounds = {
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-latin-centurion", {
	Name = "Centurion",
	Parent = "unit-template-heroic-infantry",
	Civilization = "latin",
	Description = "A centurion commands a \"centuria\" - a unit of legionaries which in principle contains a hundred soldiers, though in practice the number varies.",
	Image = {"file", "latin/units/legionary.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-latin-centurion",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	Armor = 3, -- +1 armor
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Sounds = {
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-latin-javelineer", {
	Name = "Javelineer",
	Parent = "unit-template-javelineer",
	Civilization = "latin",
	Description = "Roman javelineers were an effective skirmish force, often arrayed so as to throw a rain of spears at the start of a battle.",
	Image = {"file", "latin/units/javelineer.png", "size", {72, 72}},
	Animations = "animations-weapon-thrower", Icon = "icon-latin-javelineer",
	DefaultEquipment = {
		{"weapon", "unit-pilum"},
		{"boots", "unit-boots"}
	},
	Missile = "missile-javelin",
	FireMissile = "missile-javelin",
	Corpse = "unit-human-dead-body",
	ButtonKey = "j",
	AiDrops = {"unit-pilum", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	Sounds = {
		"fire-missile", "throw-weapon",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-latin-town-hall", {
	Name = "Forum",
	Parent = "unit-template-town-hall",
	Civilization = "latin",
	Description = "The forum is the main political gathering place in Latin communities.",
	Image = {"file", "latin/buildings/forum.png", "size", {128, 128}},
	Shadow = {"file", "latin/buildings/forum_shadow.png", "size", {128, 128}},
	Icon = "icon-latin-forum",
	ButtonKey = "u",
	AiDrops = {"unit-boots"},
	Sounds = {
--		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-latin-farm", {
	Parent = "unit-template-farm",
	Civilization = "latin",
	Description = "Farms are essential for supporting a settlement's population.",
	Image = {"file", "latin/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "latin/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-latin-farm",
	Sounds = {
--		"help", "basic-germanic-voices-help-town",
	}
} )

DefineUnitType("unit-latin-barracks", {
	Parent = "unit-template-barracks",
	Civilization = "latin",
	Description = "The Latin barracks is the training place for their formidable legionary troops.",
	Image = {"file", "latin/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "latin/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-latin-barracks",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-pilum", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots"},
	Sounds = {
--		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-latin-smithy", {
	Parent = "unit-template-smithy",
	Civilization = "latin",
	Description = "Latin smithies provide the javelins, swords and other equipment that legionaries require in battle.",
	Image = {"file", "latin/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "latin/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-latin-smithy",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield"},
	Sounds = {
--		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-latin-stables", {
	Parent = "unit-template-stables",
	Civilization = "latin",
	Description = "Roman stables provide horses for their cavalry troops, as well as for several other uses, as in agriculture.",
	Image = {"file", "latin/buildings/stables.png", "size", {96, 96}},
	Shadow = {"file", "latin/buildings/stables_shadow.png", "size", {96, 96}},
	Icon = "icon-latin-stables",
	Drops = {"unit-horse"},
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )
