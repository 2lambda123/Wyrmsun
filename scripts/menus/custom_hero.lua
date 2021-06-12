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
--      (c) Copyright 2015-2021 by Andrettin
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

function CustomHeroCreationMenu()
	local menu = WarGameMenu(panel(5))	
	local sizeX = 352 * get_scale_factor()

	local variation_list = {}
	local variation
	
	local function ClassChanged()
		variation_list = nil
		variation_list = {}
		local variation_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "Variations")
		if (table.getn(GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "LayerVariations", "hair")) > 0) then
			variation_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "LayerVariations", "hair")
		end
		
		for i=1,table.getn(variation_ident_list) do
			table.insert(variation_list, FullyCapitalizeString(string.gsub(variation_ident_list[i], "-", " ")))
		end
		table.sort(variation_list)
		variation:setList(variation_list)
		variation:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
		variation:setSelected(0)
	end
	
	menu:addLabel(_("Variation:"), 10 * get_scale_factor(), (14 + 36 * 6) * get_scale_factor(), Fonts["game"], false)
	variation = menu:addDropDown(variation_list, (sizeX / 2) + (-60 - 10) * get_scale_factor(), (11 + 36 * 6) * get_scale_factor(), function(dd) end)
	variation:setSize(236 * get_scale_factor(), 20 * get_scale_factor())
	variation:setSelected(0)
	
	menu:addHalfButton(_("Crea~!te"), "t", (20 + 48) * get_scale_factor(), (352 - 40 * 2) * get_scale_factor(),
		function()
			if (hero_name:getText() == "") then
				GenericDialog("Error", "The hero's name cannot be empty.")
			elseif (IsNameValidForCustomHero(hero_name:getText(), hero_family_name:getText()) == false) then
				GenericDialog("Error", "The custom hero's name is invalid.")
			else
				local hero_data = {}
				if (table.getn(variation_list) > 0) then
					hero_data.HairVariation = string.lower(string.gsub(variation_list[variation:getSelected() + 1], " ", "-"))
				end
				DefineCustomHero(hero_ident, hero_data)
				menu:stop()
			end
		end
	)
	
	menu:run()
end
