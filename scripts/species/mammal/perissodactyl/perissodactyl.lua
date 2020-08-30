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

DefineSpeciesFamily("chalicotheriidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Chalicotheriidae",
	Order = "perissodactyla"
})

DefineSpeciesFamily("tapiridae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Tapiridae",
	Order = "perissodactyla"
})

DefineSpeciesGenus("chalicotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 52.
	Name = "Chalicotherium",
	Family = "chalicotheriidae"
})

DefineSpecies("palaeotherium", {
	Name = "Palaeotherium",
	Supertaxon = "perissodactyla",
	Homeworld = "earth",
	EvolvesFrom = {"phenacodus"}
})

DefineSpecies("coelodonta", {
	Name = "Coelodonta",
	Supertaxon = "perissodactyla",
	Homeworld = "earth",
	EvolvesFrom = {"palaeotherium"}
})

DefineSpecies("indricotherium", {
	Name = "Indricotherium",
	Supertaxon = "perissodactyla",
	Homeworld = "earth",
	EvolvesFrom = {"palaeotherium"}
})

DefineSpecies("chalicotherium-grande", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 52.
	Name = "Chalicotherium", -- Chalicotherium grande
	Genus = "chalicotherium",
	Species = "grande",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"palaeotherium"},
	Era = "miocene" -- Middle Miocene
	-- known as gorilla-horse
	-- grazer
	-- 180cm shoulder height
	-- lived in Europe
})

Load("scripts/species/mammal/perissodactyl/equid.lua")
Load("scripts/species/mammal/perissodactyl/rhinocerotid.lua")
