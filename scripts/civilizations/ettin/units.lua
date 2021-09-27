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

DefineUnitType("unit-ettin", {
	Name = "Ettin",
	Parent = "unit-template-infantry",
	Civilization = "ettin",
	Description = "The massive ettins lord over Jotunheim, striking terror into the hearts of smaller creatures such as orcs and ogres.",
	Image = {"file", "ettin/units/ettin.png", "size", {144, 144}},
	Animations = "animations-melee-unit", Icon = "icon-ettin",
	TileSize = {2, 2}, BoxSize = {63, 63},
	Costs = {"time", 120, "copper", 1200},
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	HitPoints = 120, -- +60 HP
	BasicDamage = 16, -- +7 damage
	Armor = 6, -- +4 armor
	Accuracy = 8, -- -2 accuracy
	Evasion = 8, -- -2 evasion
	Speed = 8, -- -2 speed
	BonusAgainstBuildings = 50,
	Demand = 3,
	Strength = 13,
	Points = 100,
	Level = 3,
--	Corpse = "unit-troll-dead-body",
	BluntDamage = true,
	Giant = true,
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	AiDrops = {"unit-crown", "unit-boots", "unit-horn", "unit-amulet", "unit-ring", "unit-cheese", "unit_meat", "unit-potion-of-healing", "unit-elixir-of-strength", "unit-elixir-of-vitality"},
	Sounds = {
		"hit", "fist-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-ettin-town-hall", {
	Name = "Mead Hall",
	Parent = "unit-template-town-hall",
	Civilization = "ettin",
	Image = {"file", "dwarf/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-town-hall",
	Costs = {"lumber", 0, "stone", 2400},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-boots"},
	SpawnUnits = {"unit-ettin"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
})
