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

DefineSite("geirrods-hall", { -- Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 90.
	Name = "Geirrod's Hall",
	MapTemplate = "jotunheim",
	Position = {710, 335}, -- Geirrod's hall is located in mountains and near a river
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"ettin", "Geirrod's Hall"
	},
	HistoricalOwners = {
		-1100, "geirrodung-clan" -- should be present for Thialfi's scenario
	},
	HistoricalBuildings = {
		-1100, 0, "town_hall"
	},
	Regions = {}
})
