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

-- Note: When setting which species evolves to which, keep in mind that species should only evolve to those of a later period; only set two species in the same era to evolve into one another if you have good evidence that that happened historically

-- Note: When assigning species to fictional worlds, it is best to keep all species of the same genus in a single world.

if (OldDefineSpecies == nil) then
	OldDefineSpecies = DefineSpecies
end

function DefineSpecies(species, data)
	if (data.Genus ~= nil) then
		local preliminary_data = {}
		if (data.Genus ~= nil) then -- define just with the genus first, so that it can be used for the name pattern assignment
			preliminary_data.Genus = data.Genus
		end
		OldDefineSpecies(species, preliminary_data)
		data.Genus = nil
	end
	
	OldDefineSpecies(species, data)
end

Load("scripts/species/amphibian/amphibian.lua")
Load("scripts/species/reptile/reptile.lua")
Load("scripts/species/avian/avian.lua")
Load("scripts/species/mammal/mammal.lua")

Load("scripts/species/tree.lua")

Load("scripts/species/ethereal/ethereal.lua") -- ethereal beings (that is, ones made of pure magic substance)
