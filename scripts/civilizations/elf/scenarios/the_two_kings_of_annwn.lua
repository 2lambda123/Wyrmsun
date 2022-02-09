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
--      (c) Copyright 2016-2022 by Andrettin
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

if (LoadedGame == false) then
	SetPlayerData(0, "RaceName", "elf")
	SetPlayerData(0, "Faction", "annwn")
	SetPlayerData(0, "Name", "Annwn (Arawn)")
	SetPlayerData(1, "RaceName", "elf")
	SetPlayerData(1, "Faction", "annwn")
	SetPlayerData(1, "Name", "Annwn (Hafgan)")
	
	unit = CreateUnit("unit_elven_swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Character", "arawn")

	unit = CreateUnit("unit_elven_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Character", "hafgan")
	SetUnitVariable(unit, "Active", false)
	
	unit = CreateUnit("unit_elven_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit_elven_swordsman", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
end

RemovePlayerObjective(GetFactionPlayer("Annwn (Arawn)"), "- Defeat your rivals")

AddTrigger("the-two-kingds-of-annwn-introduction",
	function()
		if (FindHero("hafgan", GetFactionPlayer("Annwn (Hafgan)")) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		CallDialogue("the-two-kings-of-annwn-hafgan-dies", player)
		return false
	end
)

AddTrigger("the-two-kingds-of-annwn-victory",
	function()
		if (PlayerHasObjective(GetThisPlayer(), "- Arawn must survive") and FindHero("arawn", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		ActionDefeat()
		return false
	end
)
