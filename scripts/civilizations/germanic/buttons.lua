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
--      (c) Copyright 2014-2021 by Andrettin
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

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-germanic-broad-sword",
	Action = "research", Value = "upgrade-germanic-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = "Research Broad S~!word", Popup = "popup_research",
	Description = "+2 Damage for swordwielders. Allows Broad Swords to be sold at the Market.",
	ForUnit = {"unit_germanic_smithy", "unit-norse-smithy", "unit-teuton-smithy", "unit-latin-smithy"}
})

DefineButton( { Pos = 3, Icon = "icon-germanic-bronze-shield",
	Action = "research", Value = "upgrade-germanic-bronze-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Bronze ~!Shield", Popup = "popup_research",
	Description = "+2 Armor for melee infantry and cavalry. Allows Bronze Shields to be sold at the Market.",
	ForUnit = {"unit_germanic_smithy", "unit-norse-smithy", "unit-teuton-smithy", "unit-latin-smithy"}
})

DefineButton( { Pos = 1, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-germanic-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Long ~!Spear", Popup = "popup_research",
	Description = "+2 Damage for Spearmen. Allows Long Spears to be sold at the Market.",
--	ForUnit = {"unit-germanic-carpenters-shop", "unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
	ForUnit = {"unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
})
  
DefineButton( { Pos = 3, Icon = "icon-germanic-barbed-arrow",
	Action = "research", Value = "upgrade-germanic-barbed-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Barbed ~!Arrow", Popup = "popup_research",
	Description = "+2 Damage for archers, strongholds and guard towers. Allows Barbed Arrows to be sold at the Market.",
	ForUnit = {"unit-germanic-carpenters-shop", "unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
})
  
-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-single-research",
	Key = "w", Hint = "Worship ~!Wodanaz", Popup = "popup_research",
	Description = "Choose Wodanaz as your major deity. +2 Damage for Skutans, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Thunraz, Fraujaz and Fraujon deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 6, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-single-research",
	Key = "t", Hint = "Worship ~!Thunraz", Popup = "popup_research",
	Description = "Choose Thunraz as your major deity. +2 Damage for Eralas, enables Shocking Grasp spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Wodanaz, Fraujaz and Fraujon deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 8, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Allowed = "check-single-research",
	Key = "z", Hint = "Worship Tiwa~!z", Popup = "popup_research",
	Description = "Choose Tiwaz as a minor deity. +2 Damage for Eralas, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Haimadala and Haljo minor deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 9, Icon = "icon-heimdall",
	Action = "research", Value = "upgrade-deity-heimdall",
	Allowed = "check-single-research",
	Key = "d", Hint = "Worship Haima~!dala", Popup = "popup_research",
	Description = "Choose Haimadala as a minor deity. +1 Sight for Skutans, enables Precision spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Frankish, Gothic, Suebi and Teuton civilizations, and with the Haljo and Tiwaz minor deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 10, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Allowed = "check-single-research",
	Key = "l", Hint = "Worship Ha~!ljo", Popup = "popup_research",
	Description = "Choose Haljo as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Haimadala and Tiwaz minor deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 9, Level = "choose-individual-upgrade-level", Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "w", Hint = "Worship ~!Wodanaz", Popup = "popup_learn_ability",
	Description = "Choose Wodanaz as your hero's major deity. +2 Damage for Skutans, enables Far Sight spell for Gudjans. Incompatible with the Thunraz and Fraujaz major deities.",
	ForUnit = {
		"unit_germanic_worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})
  
DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thunraz", Popup = "popup_learn_ability",
	Description = "Choose Thunraz as your hero's major deity. +2 Damage for Eralas, enables Shocking Grasp spell for Gudjans. Incompatible with the Wodanaz and Fraujaz major deities.",
	ForUnit = {
		"unit_germanic_worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})

DefineButton( { Pos = 12, Level = "choose-individual-upgrade-level", Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "z", Hint = "Worship Tiwa~!z", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Tiwaz as a minor deity for your hero. +2 Damage for Eralas and enables Inspire spell for Gudjans. Incompatible with the Haimadala and Haljo minor deities.",
	ForUnit = {
		"unit_germanic_worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})
  
DefineButton( { Pos = 13, Level = "choose-individual-upgrade-level", Icon = "icon-heimdall",
	Action = "learn-ability", Value = "upgrade-deity-heimdall",
	Key = "d", Hint = "Worship Haima~!dala", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Haimadala as a minor deity for your hero. +1 Sight for Skutans, enables Precision spell for Gudjans. Incompatible with the Haljo and Tiwaz minor deities.",
	ForUnit = {
		"unit_germanic_worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})
  
DefineButton( { Pos = 14, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship Ha~!ljo", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Haljo as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Haimadala and Tiwaz minor deities.",
	ForUnit = {
		"unit_germanic_worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-germanic-veteran-warrior",
	Key = "k", Hint = "Upgrade to ~!Kuni", Popup = "popup_unit",
	ForUnit = {"unit-germanic-warrior"}
})

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-germanic-chieftain",
	Key = "d", Hint = "Upgrade to ~!Druhtana", Popup = "popup_unit",
	ForUnit = {"unit-germanic-veteran-warrior"}
})
