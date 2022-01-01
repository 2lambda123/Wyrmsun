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

DefineSpeciesFamily("antilocapridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=552305
	Name = "Antilocapridae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("helohyidae", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_genera?fam_id=111988
	Name = "Helohyidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("moschidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624921
	Name = "Moschidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("palaeomerycidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42624
	Name = "Palaeomerycidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("tragulidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624919
	Name = "Tragulidae",
	Order = "artiodactyla"
})

DefineSpeciesGenus("cainotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 19.
	Name = "Cainotherium",
	Family = "cainotheriidae" -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=77399
})

DefineSpeciesGenus("dorcatherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Dorcatherium",
	Family = "tragulidae"
})

DefineSpeciesGenus("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Family = "antilocapridae"
})

DefineSpeciesGenus("helohyus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=42348 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1446494
	Name = "Helohyus",
	Family = "helohyidae"
})

DefineSpeciesGenus("micromeryx", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Micromeryx",
	Family = "moschidae"
})

DefineSpeciesGenus("triceromeryx", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 64-65.
	Name = "Triceromeryx",
	Family = "palaeomerycidae"
})

DefineSpecies("helohyus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=42348 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1446494
	Name = "Helohyus",
	Genus = "helohyus",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "phenacodus"},
	Era = "eocene"
	-- amphibious herbivore-omnivore
})

DefineSpecies("cainotherium-miocaenicum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 19.
	Name = "Cainotherium",
	Genus = "cainotherium",
	Species = "miocaenicum",
	Homeworld = "earth",
	Terrains = {"grass", "semi_dry_grass", "dry_grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene" -- Middle Aragonian
})

DefineSpecies("dorcatherium-crassum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Dorcatherium", -- Dorcatherium crassum
	Genus = "dorcatherium",
	Species = "crassum",
	Homeworld = "earth",
	Terrains = {"grass", "semi_dry_grass", "dry_grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene" -- Lower Miocene to the Lower Pliocene
	-- lived in Eurasia and Africa
	-- 25-80cm shoulder height
	-- ate fruits and leaves, as well as worms and other invertebrates
})

DefineSpecies("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Genus = "ilingoceros",
	Species = "alexandrae", -- type species of the Ilingoceros genus
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"},
	Era = "miocene"
	-- ground dwelling browser-grazer
})

DefineSpecies("megaloceros", {
	Name = "Megaloceros",
	Supertaxon = "artiodactyla",
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"}
})

DefineSpecies("micromeryx-azanzae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Micromeryx", -- Micromeryx azanzae
	Genus = "micromeryx",
	Species = "azanzae",
	Homeworld = "earth",
	Terrains = {"grass", "semi_dry_grass", "dry_grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene" -- end of the Middle Miocene and beginning of the Upper Miocene
	-- 35-38cm shoulder height
	-- lived in Spain
	-- used its large upper canine teeth to fight with other males for females
	-- males have large canine teeth
})

DefineSpecies("micromeryx-soriae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Micromeryx Soriae", -- Micromeryx soriae
	Genus = "micromeryx",
	Species = "soriae",
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"},
	Era = "miocene" -- Upper Vallensian
})

DefineSpecies("triceromeryx-pachecoi", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 64-65.
	Name = "Triceromeryx",
	Genus = "triceromeryx",
	Species = "pachecoi",
	Homeworld = "earth",
	Terrains = {"grass", "semi_dry_grass", "dry_grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene" -- Middle Miocene
	-- 125cm shoulder height
	-- lived in Spain
})

Load("scripts/species/mammal/artiodactyl/bovid.lua")
Load("scripts/species/mammal/artiodactyl/suid.lua")
