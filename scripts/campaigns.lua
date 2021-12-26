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

--[[
DefineCampaign("the-mead-of-poetry", {
	Name = "The Mead of Poetry",
	Description = "The dwarven brothers Fjalar and Galar conspire to kill the wise god Kvasir and brew his blood into a powerful mead.",
	Faction = "shadowcharm_clan",
	StartYear = -2800
})

DefineCampaign("freys-messenger", {
	Name = "Frey's Messenger",
	Description = "Skirnir, the human servant of the god Frey, must perform important deeds for his master.",
	Faction = "yngling-tribe", -- Yngve is identified with Frey
	StartYear = -2800 -- when Scandinavia was historically settled by Indo-Europeans; Yngve ruled over the Swedes in the Ynglinga saga soon after Odin's people settled Scandinavia in that saga; since Skirnir was a servant of Frey in mythology, let's make him a contemporary of Yngve
})
--]]

DefineCampaign("thors_servant", {
	MapTemplates = {
		"earth", {0, 0}, {384, 384},
		"jotunheim", {679, 304}, {64, 64}
	}
})

--[[
DefineCampaign("the-home-of-the-boii", {
	Name = "The Home of the Boii",
	Description = "After a devastating conflict with the Romans, Marbod seeks to lead the tribe of the Marcomanni to safer lands.",
	Faction = "marcomanni-tribe",
	StartYear = -9,
	MapTemplates = {
		"old_earth", {4064, 881}, {256, 256}
	}
})
--]]

--[[
DefineCampaign("the-scepter-of-fire", {
	Name = "The Scepter of Fire",
	Description = "A clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home. Beset by hostile forces, can they survive for long?",
	Faction = "norlund_clan",
	StartYear = 25,
	MapTemplates = {
		"nidavellir", {0, 0}, {256, 256}
	}
})

DefineCampaign("the-first-marcomannic-war", {
	Name = "The First Marcomannic War",
	Description = "Under the leadership of Ballomar, the Marcomanni wage war with the mighty Roman Empire.",
	Faction = "marcomanni-tribe",
	StartYear = 170, -- beginning of the First Marcomannic War
	MapTemplates = {
		"old_earth", {4064, 881}, {256, 256}
	}
})
--]]

--[[
DefineCampaign("moving-into-galicia", {
	Name = "Moving into Galicia",
	Description = "Times are changing. The Roman Empire, once invincible, has fallen prey to a conjunction of domestic troubles and external pressures. A group of Suebi has decided to use this opportunity, move into the Roman province of Galicia...",
	Faction = "rome",
	StartYear = 411,
	MapTemplates = {
		"old_earth", {3616, 975}, {256, 256}
	}
})

DefineCampaign("the-founding-of-francia", {
	Name = "The Founding of Francia",
	Description = "The Frankish chieftain Chlodwig has come to power with the burning ambition to expand his lands. Bordering hardened Roman remnants and warlike tribes, the path he seeks will have to be paved in blood...",
	Faction = "frank-tribe",
--	StartYear = 481,
	StartYear = 486,
	MapTemplates = {
		"old_earth", {3780, 852}, {256, 256}
	}
})

DefineCampaign("volunds-flight", { -- initial scenario for the Winter War storyline, could be changed later into a longer scenario containing the storyline in its entirety
	Name = "Volund's Flight",
	Description = "Imprisoned and humiliated, the elven prince Volund must seek to escape from his captors...",
	Faction = "ulfdalir",
	StartYear = 600, -- arbitrary date, should be changed later
	MapTemplates = {
		"alfheim", {728, 0}, {256, 256}
	}
})

DefineCampaign("sigiberts-struggle", {
	Name = "Sigibert's Struggle",
	Description = "Upon the death of the Frankish king Chlothar I, his realm was divided between his four sons: Charibert, Chilperich, Sigibert and Gunthram. The ambitious Chilperich desires to increase his share of the inheritance at his brothers' expense, his designs on Sigibert's lands threatening to throw Francia into a bitter civil war...",
	Faction = "austrasia",
	StartYear = 561, -- Sigibert's reign in his lands begins
	MapTemplates = {
		"old_earth", {3780, 852}, {256, 256}
	}
})

DefineCampaign("island-of-the-lizard-god", { -- based on Will Doyle's "Island of the Lizard God" adventure, which he agreed to license under the GPL 2.0; the adventure won the One-Page Dungeon contest in 2014: https://www.dungeoncontest.com/opdc-2014
	Name = "Island of the Kobold God",
	Description = "Shipwrecked on a remote island, a group of dwarves face off against a kobold cult and their primal god!",
	Faction = "lyr",
	StartYear = 600, -- approximate date; a seafaring dwarven lordship should already exist
	MapTemplates = {
		"nidavellir", {0, 0}, {256, 256}
	}
})

DefineCampaign("the-heirs-return", {
	Name = "The Heir's Return",
	Description = "Upon the death of Aelle of Deira, his kingdom was taken over by the monarch of Bernicia. Aelle's son Edwin, then only a child, was taken in secret to another realm for the sake of his survival. After nearly twenty years of exile, Edwin has gathered an army, seeking to recover his birthright...",
	Faction = "deira",
	StartYear = 616,
	MapTemplates = {
		"old_earth", {3627, 695}, {256, 256}
	}
})

DefineCampaign("halfdan-the-black", {
	Name = "Halfdan the Black",
	Description = "When Halfdan the Black was but a year old, his father was murdered and his mother forced to flee to her father's kingdom of Agder. Now eighteen years old, Halfdan has succeeded his grandfather to that realm...",
	Faction = "agder",
	StartYear = 841,
	MapTemplates = {
		"old_earth", {3944, 622}, {256, 256}
	}
})
--]]
