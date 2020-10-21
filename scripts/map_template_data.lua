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
--      (c) Copyright 2016-2020 by Andrettin
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

-- Notes on Islands: If a building should exist on an island, but the latter is too small (for instance, if it has a single tile), then the building should be left out, unless the building is vitally important (placing it in the island will already automatically move it to the closest shore).

-- Conversion formula from the old Earth map's coordinates to geocoordinates:
-- To Longitude = (X + 256 - 4096) / 22,755555555555555555555555555556
-- To Latitude = (Y - 2048) / 22,755555555555555555555555555556 * -1

Load("scripts/map_templates/alfheim.lua")
Load("scripts/map_templates/earth.lua")
Load("scripts/map_templates/nidavellir.lua")
Load("scripts/map_templates/asgard.lua")
Load("scripts/map_templates/niflheim.lua")
