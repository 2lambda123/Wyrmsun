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

function LoadDLCs()
	CMod:SetCurrentModPath("")
	
	local i
	local f
	local u = 1

	-- list the subdirectories in the dlcs folder
	local dirlist = {}
	local dirs = ListDirsInDirectory("dlcs/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	-- get dlcs in the subdirectories of the dlcs folder
	for j=1,table.getn(dirlist) do
		local fileslist = ListFilesInDirectory("dlcs/" .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "main.lua")) then
				CMod:SetCurrentModPath("dlcs/" .. dirlist[j])
				Load(CMod:GetCurrentModPath() .. f)
			end
		end
	end
	
	CMod:SetCurrentModPath("")
end
