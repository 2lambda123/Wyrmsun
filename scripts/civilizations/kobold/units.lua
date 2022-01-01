--			 _________ __								 __
--			/	 _____//	|_____________ _/	|______		 ____	__ __	______
--			\_____	\\	 __\_	__ \__	\\	 __\__	\	 / ___\|	|	\/	___/
--			/				\|	|	|	| \// __ \|	|	/ __ \_/ /_/	>	|	/\___ \
--		 /_______	/|__|	|__|	(____	/__| (____	/\___	/|____//____	>
--						 \/									\/					\//_____/						\/
--	______________________													 ______________________
--												T H E	 W A R	 B E G I N S
--				 Stratagus - A free fantasy real time strategy game engine
--
--			(c) Copyright 2014-2022 by Andrettin
--
--			This program is free software; you can redistribute it and/or modify
--			it under the terms of the GNU General Public License as published by
--			the Free Software Foundation; either version 2 of the License, or
--			(at your option) any later version.
--
--			This program is distributed in the hope that it will be useful,
--			but WITHOUT ANY WARRANTY; without even the implied warranty of
--			MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
--			GNU General Public License for more details.
--
--			You should have received a copy of the GNU General Public License
--			along with this program; if not, write to the Free Software
--			Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA	02111-1307	USA
--

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-kobold-footpad", {
	Name = "Footpad",
	Parent = "unit-template-infantry",
	Civilization = "kobold",
	Image = {"file", "kobold/units/kobold_footpad.png", "size", {72, 72}},
	Description = "Stealthy and fierce, kobold footpads are the warriors of their race. They roam the tunnels of Nidavellir, abhorring to fight in the open. They call their swords \"fangs\" in homage to the power of a wyrm's bite.",
	Animations = "animations-goblin-spearman", Icon = "icon-kobold-footpad",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-goblin-wooden-shield"},
		{"boots", "unit-boots"}
	},
	HitPoints = 50,
	Accuracy = 12,
	Evasion = 12,
	Gender = "none", -- don't set gender for Kobolds: since they are reptilian creatures, their graphics can represent both genders)
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	ButtonKey = "f",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-goblin-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit_meat", "unit-potion-of-healing"},
	Corpse = "unit-kobold-dead-body",
	Variations = {
		{
			"variation-id", "brown-scales"
		},
		{
			"variation-id", "blue-scales",
			"file", "kobold/units/kobold_footpad_blue_scales.png"
		},
		{
			"variation-id", "purple-scales",
			"file", "kobold/units/kobold_footpad_purple_scales.png"
		},
		{
			"variation-id", "red-scales",
			"file", "kobold/units/kobold_footpad_red_scales.png"
		},
		{
			"variation-id", "yellow-scales",
			"file", "kobold/units/kobold_footpad_yellow_scales.png"
		}
	},
	Sounds = {
		"selected", "click",
--		"selected", "basic-goblin-voices-selected-group",
--		"acknowledge", "basic-goblin-voices-acknowledge",
--		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-kobold-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-kobold-slasher", {
	Name = "Slasher",
	Parent = "unit-template-veteran-infantry",
	Civilization = "kobold",
	Description = "Kobold slashers are hardened scimitar fighters, veterans of past tribal conflicts, or even large-scale wars.",
	Image = {"file", "kobold/units/kobold_footpad.png", "size", {72, 72}},
	Animations = "animations-goblin-spearman", Icon = "icon-kobold-slasher",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-goblin-wooden-shield"},
		{"boots", "unit-boots"}
	},
	HitPoints = 65,
	Accuracy = 12,
	Evasion = 12,
	Gender = "none", -- don't set gender for Kobolds: since they are reptilian creatures, their graphics can represent both genders)
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-goblin-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit_meat", "unit-potion-of-healing"},
	Corpse = "unit-kobold-dead-body",
	Variations = {
		{
			"variation-id", "brown-scales"
		},
		{
			"variation-id", "blue-scales",
			"file", "kobold/units/kobold_footpad_blue_scales.png"
		},
		{
			"variation-id", "purple-scales",
			"file", "kobold/units/kobold_footpad_purple_scales.png"
		},
		{
			"variation-id", "red-scales",
			"file", "kobold/units/kobold_footpad_red_scales.png"
		},
		{
			"variation-id", "yellow-scales",
			"file", "kobold/units/kobold_footpad_yellow_scales.png"
		}
	},
	Sounds = {
		"selected", "click",
--		"selected", "basic-goblin-voices-selected-group",
--		"acknowledge", "basic-goblin-voices-acknowledge",
--		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-kobold-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-kobold-champion", {
	Name = "Champion",
	Parent = "unit-template-heroic-infantry",
	Civilization = "kobold",
	Description = "The elite warriors of kobold society, champions utilize savage swordfighting techniques to eliminate their foes.",
	Image = {"file", "kobold/units/kobold_footpad.png", "size", {72, 72}},
	Animations = "animations-goblin-spearman", Icon = "icon-kobold-champion",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-goblin-wooden-shield"},
		{"boots", "unit-boots"}
	},
	HitPoints = 80,
	Accuracy = 12,
	Evasion = 12,
	Gender = "none", -- don't set gender for Kobolds: since they are reptilian creatures, their graphics can represent both genders)
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-goblin-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit_meat", "unit-potion-of-healing"},
	Corpse = "unit-kobold-dead-body",
	Variations = {
		{
			"variation-id", "brown-scales"
		},
		{
			"variation-id", "blue-scales",
			"file", "kobold/units/kobold_footpad_blue_scales.png"
		},
		{
			"variation-id", "purple-scales",
			"file", "kobold/units/kobold_footpad_purple_scales.png"
		},
		{
			"variation-id", "red-scales",
			"file", "kobold/units/kobold_footpad_red_scales.png"
		},
		{
			"variation-id", "yellow-scales",
			"file", "kobold/units/kobold_footpad_yellow_scales.png"
		}
	},
	Sounds = {
		"selected", "click",
--		"selected", "basic-goblin-voices-selected-group",
--		"acknowledge", "basic-goblin-voices-acknowledge",
--		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-kobold-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

