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
--      (c) Copyright 2017-2022 by Andrettin
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

DefineSite("adelsberg", {
	Name = "Adelsberg",
	MapTemplate = "old_earth",
	Position = {4163, 1005},
	CulturalNames = {
		"teuton", "Adelsberg"
	},
	HistoricalOwners = {
		1815, "austria" -- Adelsberg was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"carniola"}
})

DefineSite("bruck", {
	Name = "Bruck",
	MapTemplate = "old_earth",
	Position = {4183, 972},
	CulturalNames = {
		"teuton", "Bruck"
	},
	HistoricalOwners = {
		1815, "austria" -- Bruck (in Styria) was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"lower_styria"}
})

DefineSite("carnuntum", {
	Name = "Carnuntum",
	MapTemplate = "old_earth",
	Position = {4224, 955},
	CulturalNames = {
		"latin", "Carnuntum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		10, "rome", -- Upper Pannonia (where Carnuntum was located) was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "" -- Carnuntum was no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		10, 161, "farm", -- Upper Pannonia (where Carnuntum was located) was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, 526, "stronghold", -- Legionary base present in Carnuntum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 526, "barracks"
	},
	HistoricalUnits = {
		170, 171, "unit-teuton-swordsman", 20000, "rome" -- a Roman army numbering 20,000 was stationed near Carnuntum in 170 AD, when it was defeated by the Marcomanni and Quadi; Source: "Ancient Warfare VII.6", 2013, p. 29.
	},
	Regions = {"lower_austria"}
})

DefineSite("cilli", {
	Name = "Cilli",
	MapTemplate = "old_earth",
	Position = {4183, 997},
	CulturalNames = {
		"teuton", "Cilli"
	},
	HistoricalOwners = {
		1815, "austria" -- Cilli was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"upper_styria"}
})

DefineSite("gastein", {
	Name = "Gastein",
	MapTemplate = "old_earth",
	Position = {4135, 977},
	CulturalNames = {
		"teuton", "Gastein"
	},
	HistoricalOwners = {
		1815, "austria" -- Gastein was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"salzburg"}
})

DefineSite("villach", {
	Name = "Villach",
	MapTemplate = "old_earth",
	Position = {4155, 988},
	CulturalNames = {
		"teuton", "Villach"
	},
	HistoricalOwners = {
		1815, "austria" -- Villach was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"carinthia"}
})
