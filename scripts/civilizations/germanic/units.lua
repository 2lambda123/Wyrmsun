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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-germanic-warrior", {
	Name = "Erala", -- Erala = "Warrior" in Proto-Germanic, according to the "Wortschatz der Germanischen Spracheinheit" by August Fick
	Parent = "unit-template-infantry",
	Civilization = "germanic",
	Description = "Germanic tribes are known for their fierceness in combat, and these sword-wielding warriors act accordingly.",
	Quote = "\"His spear he shook, his shield he brandished,\nHis horse he spurred, with his sword he hewed;\nWars he raised, and reddened the field,\nWarriors slew he, and land he won.\"\n- <a href='literary_text:rigsthula'>Rigsthula</a>",
	Background = "\"Erala\" is the Proto-Germanic word for \"warrior\". The warrior's helmet is based on the Nordic Bronze Age Viksø helmets, which were used for ceremonial occasions.",
	Image = {"file", "germanic/units/warrior.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-germanic-warrior",
	ButtonKey = "e",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Costs = {"time", 50, "copper", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "blond-hair",
			"name", "Blond Hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "black-hair",
			"name", "Black Hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-warrior-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"name", "Brown Hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "gray-hair",
			"name", "Gray Hair",
			"file", "germanic/units/warrior_gray_hair.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 2
		},
		{
			"variation-id", "red-hair",
			"name", "Red Hair",
			"file", "germanic/units/warrior_red_hair.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "blond-hair",
			"file", "germanic/units/warrior_bronze_shield.png",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "black-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 2
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-veteran-warrior", {
	Name = "Kuni",
	Parent = "unit-template-veteran-infantry",
	Civilization = "germanic",
	Description = "Having honed their swordsmanship to a greater degree, high-ranking Germanic warriors are a force to be reckoned with.",
	Background = "\"Kuni\" is the Proto-Germanic word for \"noble\".",
	Image = {"file", "germanic/units/warrior.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-germanic-veteran-warrior",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "black-hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-veteran-warrior-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-veteran-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair.png",
			"icon", "icon-germanic-veteran-warrior-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 2
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair.png",
			"icon", "icon-germanic-veteran-warrior-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "blond-hair",
			"file", "germanic/units/warrior_bronze_shield.png",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "black-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-veteran-warrior-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-veteran-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair_bronze_shield.png",
			"icon", "icon-germanic-veteran-warrior-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 2
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair_bronze_shield.png",
			"icon", "icon-germanic-veteran-warrior-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-chieftain", {
	Name = "Druhtana",
	Parent = "unit-template-heroic-infantry",
	Civilization = "germanic",
	Description = "Germanic chieftains combine both martial prowess and leadership skills, bringing forth their formidable hosts into battle.",
	Background = "\"Druhtana\" is the Proto-Germanic word for \"retinue leader\" and \"prince\".",
	Image = {"file", "germanic/units/warrior.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-germanic-chieftain",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "black-hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-chieftain-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-chieftain-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair.png",
			"icon", "icon-germanic-chieftain-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 2
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair.png",
			"icon", "icon-germanic-chieftain-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-class-not-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "blond-hair",
			"file", "germanic/units/warrior_bronze_shield.png",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "black-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-chieftain-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-chieftain-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair_bronze_shield.png",
			"icon", "icon-germanic-chieftain-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 2
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair_bronze_shield.png",
			"icon", "icon-germanic-chieftain-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-class-equipped", "shield",
			"weight", 8
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-spearman", {
	Name = "Spearman",
	Parent = "unit-template-spearman",
	Civilization = "germanic",
	Class = "none", -- because the unit is not ready for being playable
--	Description = "Germanic tribes are known for their fierceness in combat, and these sword-wielding warriors act accordingly.",
--	Quote = "\"Soon grew up the sons of Jarl,\nBeasts they tamed, and bucklers rounded,\nShafts they fashioned, and spears they shook.\"\n- <a href='literary_text:rigsthula'>Rigsthula</a>",
--	Background = "\"Erala\" is the Proto-Germanic word for \"warrior\".",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/brown_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm_spear.png"},
		{"layer", "clothing", "file", "germanic/units/coat_warrior.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_spear.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "human/units/shoes.png"},
		{"layer", "weapon", "file", "human/units/spear.png"},
	},
	Animations = "animations-melee-unit-new", Icon = "icon-germanic-warrior",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Variations = {
		{
			"layer", "hair",
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "hair",
			"variation-id", "black-hair",
			"layer-file", "hair", "human/units/black_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "hair",
			"variation-id", "blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "hair",
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
		},
		{
			"layer", "hair",
			"variation-id", "red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/saxon_shield.png",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		}
	},
	HiddenInEditor = true,
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-germanic-archer", {
	Name = "Skutan",
	Parent = "unit-template-archer",
	Civilization = "germanic",
	Description = "These warriors specialize in the art of archery, which they employ against their enemies with great lethality.",
	Quote = "\"There sat the house-lord, wound strings for the bow,\nShafts he fashioned, and bows he shaped.\"\n- <a href='literary_text:rigsthula'>Rigsthula</a>",
	Background = "\"Skutan\" is the Proto-Germanic word for \"archer\".",
	Image = {"file", "human/units/body_archer.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow_archer.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/red_hair_archer.png"},
		{"layer", "left-arm", "file", "human/units/left_arm_archer.png"},
		{"layer", "right-arm", "file", "human/units/right_arm_archer.png"},
		{"layer", "clothing", "file", "germanic/units/coat_archer.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm_archer.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_archer.png"},
		{"layer", "pants", "file", "human/units/pants_archer.png"},
		{"layer", "boots", "file", "human/units/shoes_archer.png"},
		{"layer", "weapon", "file", "human/units/bow_and_bronze_knife.png"},
		{"layer", "helmet", "file", "germanic/units/wool_hat_archer.png"},
		{"layer", "backpack", "file", "human/units/quiver.png"}
	},
	Animations = "animations-goblin-archer", Icon = "icon-germanic-archer",
	DefaultEquipment = {
		{"boots", "unit-boots"},
		{"arrows", "unit-arrows"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BonusAgainstAir = 50,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	WeaponClasses = {"bow"},
	PierceDamage = true,
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	RequirementsString = "Carpenter's Shop",
	ButtonKey = "s",
	AiDrops = {"unit-composite-bow", "unit-longbow", "unit-arrows", "unit-barbed-arrows", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "red-hair",
			"name", "Red Hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"name", "Gray Hair",
			"layer-file", "hair", "human/units/gray_hair_archer.png",
			"icon", "icon-germanic-archer-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "blond-hair",
			"name", "Blond Hair",
			"layer-file", "hair", "human/units/blond_hair_archer.png",
			"icon", "icon-germanic-archer-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-priest", {
	Name = "Gudjan",
	Parent = "unit-template-priest",
	Civilization = "germanic",
	Description = "Germanic priests perform the rituals of their people, working magic to aid them.",
	Image = {"file", "germanic/units/priest.png", "size", {72, 72}},
	Animations = "animations-spellcaster-new",
	Icon = "icon-germanic-priest",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
--	WeaponClasses = {"mace"},
	BluntDamage = true,
	ButtonKey = "g",
	StartingAbilities = {"upgrade-barkskin", "upgrade-far-sight", "upgrade-inspire", "upgrade-precision", "upgrade-regeneration", "upgrade-shocking-grasp", "upgrade-slow-ability", "upgrade-wither"},
	CanCastSpell = {"spell-barkskin", "spell-far-sight", "spell-inspire", "spell-healing", "spell-precision", "spell-regeneration", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AutoCastActive = {"spell-barkskin", "spell-inspire", "spell-healing", "spell-precision", "spell-regeneration", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing", "unit_potion_of_mana"},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "fist-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-germanic-transport-ship", {
	Parent = "unit-template-transport-ship",
	Civilization = "germanic",
	Description = "Seafaring was a major element of Germanic peoples' way of life, as they sailed throughout the Baltic and beyond. The ship was a status symbol, depicted in many of their drawings, and its form was used as inspiration for the \"stone ship\" tombs scattered throughout Scandinavia.",
	Image = {"file", "germanic/units/transport_ship.png", "size", {72, 72}},
	LightImage = {"file", "germanic/units/transport_ship_water.png"},
	Icon = "icon-germanic-transport-ship",
	RequirementsString = "Carpenter's Shop",
	Sounds = {
		"help", "basic-germanic-voices-help"
	}
})

DefineUnitType("unit-germanic-town-hall", {
	Name = "Chieftain's Hall",
	Parent = "unit-template-town-hall",
	Civilization = "germanic",
	Description = "The chieftain's hall serves both as the dwelling of a Germanic tribe's chieftain and as the center of its political life.",
	Image = {"file", "germanic/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "germanic/buildings/town_hall_shadow.png", "size", {128, 128}},
	Animations = "animations-germanic-town-hall", Icon = "icon-germanic-town-hall",
	Construction = "germanic_town_hall",
	AiDrops = {"unit-boots"},
	Variations = {
		{
			"variation-id", "town-hall",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "town-hall-snow-winter",
			"file", "germanic/buildings/town_hall_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "town-hall-snow",
			"file", "germanic/buildings/town_hall_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-germanic-farm", {
	Name = "Farm",
	Parent = "unit-template-farm",
	Civilization = "germanic",
	Description = "Farms are essential for supporting a settlement's population.",
	Background = "The bronze age predecessors of the Germanic peoples had a variety of plants and animals in their farms. Wheat, millet and peas figured among the crops planted, while the most common animals were sheep and pigs. The animals bred by them were generally smaller than their modern counterparts, but they were sturdier.",
	Image = {"file", "germanic/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "germanic/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-germanic-farm",
	Variations = {
		{
			"variation-id", "farm",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "farm-snow-winter",
			"file", "germanic/buildings/farm_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "farm-snow",
			"file", "germanic/buildings/farm_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"selected", "corral-selected",
		"ready", "corral-ready",
		"help", "basic-germanic-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-germanic-barracks", {
	Name = "War Lodge",
	Parent = "unit-template-barracks",
	Civilization = "germanic",
	Description = "The Germanic war lodge serves as a gathering place for the tribe's warriors.",
	Image = {"file", "germanic/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-germanic-barracks",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-short-spear", "unit-long-spear", "unit-composite-bow", "unit-longbow", "unit-wooden-shield", "unit-bronze-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows"},
	ButtonKey = "w",
	Variations = {
		{
			"variation-id", "barracks",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "barracks-snow-winter",
			"file", "germanic/buildings/barracks_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "barracks-snow",
			"file", "germanic/buildings/barracks_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-germanic-carpenters-shop", {
	Name = "Carpenter's Shop",
	Parent = "unit-template-lumber-mill",
	Civilization = "germanic",
	Description = "Germanic carpenters work hard to provide settlements with all their woodworking needs.",
	Image = {"file", "germanic/buildings/carpenters_shop.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/carpenters_shop_shadow.png", "size", {96, 96}},
	Icon = "icon-germanic-carpenters-shop",
	ButtonKey = "a",
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-composite-bow", "unit-longbow", "unit-arrows", "unit-barbed-arrows"},
	Variations = {
		{
			"variation-id", "carpenters-shop",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "carpenters-shop-snow-winter",
			"file", "germanic/buildings/carpenters_shop_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "carpenters-shop-snow",
			"file", "germanic/buildings/carpenters_shop_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-germanic-temple", {
	Name = "Temple",
	Parent = "unit-template-temple",
	Civilization = "germanic",
	Description = "In Germanic sacred sites their priests practice various rituals, including the sacrifice of objects, livestock - and sometimes even people. Some of these locations were also used to observe celestial bodies and their movements.",
	Image = {"file", "germanic/buildings/temple.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/temple_shadow.png", "size", {96, 96}},
	Icon = "icon-germanic-temple",
	RequirementsString = "Carpenter's Shop",
	Variations = {
		{
			"variation-id", "temple",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "temple-snow-winter",
			"file", "germanic/buildings/temple_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "temple-snow",
			"file", "germanic/buildings/temple_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
})

DefineUnitType("unit-germanic-market", {
	Parent = "unit-template-market",
	Civilization = "germanic",
	Description = "Trade has brought many benefits to Germanic societies. Through exchanges with their southern Celtic neighbors, they obtained contact with new materials - such as bronze.",
	Image = {"file", "germanic/buildings/market.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/market_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-germanic-market",
	RequirementsString = "Carpenter's Shop",
	SoldUnits = {"unit-short-sword", "unit-broad-sword", "unit-composite-bow", "unit-longbow", "unit-wooden-shield", "unit-bronze-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows"},
	Variations = {
		{
			"variation-id", "market",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "market-snow-winter",
			"file", "germanic/buildings/market_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "market-snow",
			"file", "germanic/buildings/market_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )
