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

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 6, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-upgrade", AllowArg = {"upgrade_norse_civilization"},
	Key = "o", Hint = "Worship ~!Odin", Popup = "popup_research",
	Description = "Choose Odin as your major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Thor, Loki, Frey or Freyja deities.",
	ForUnit = {"unit-norse-temple", "unit-teuton-temple"}
})

DefineButton( { Pos = 7, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-upgrade", AllowArg = {"upgrade_norse_civilization"},
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup_research",
	Description = "Choose Thor as your major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Odin, Loki, Frey or Freyja deities.",
	ForUnit = {"unit-norse-temple", "unit-teuton-temple"}
})

DefineButton( { Pos = 8, Icon = "icon-loki",
	Action = "research", Value = "upgrade-deity-loki",
	Allowed = "check-single-research",
	Key = "k", Hint = "Worship Lo~!ki", Popup = "popup_research",
	Description = "Choose Loki as your major deity. +50% Backstab Bonus for sword infantry, enables Slow spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Odin, Thor, Frey or Freyja deities.",
	ForUnit = {"unit-norse-temple"}
})

DefineButton( { Pos = 9, Level = "choose-individual-upgrade-level", Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "o", Hint = "Worship ~!Odin", Popup = "popup_learn_ability",
	Description = "Choose Odin as your hero's major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Incompatible with the Christianity religion or with the Thor, Loki or Frey major deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup_learn_ability",
	Description = "Choose Thor as your hero's major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Incompatible with the Christianity religion or with the Odin, Loki or Frey major deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 11, Level = "choose-individual-upgrade-level", Icon = "icon-loki",
	Action = "learn-ability", Value = "upgrade-deity-loki",
	Key = "k", Hint = "Worship Lo~!ki", Popup = "popup_learn_ability",
	Description = "Choose Loki as your hero's major deity. +50% Backstab Bonus for sword infantry, enables Slow spell for Gudjans. Incompatible with the Christianity religion or with the Odin, Thor or Frey major deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 13, Level = "choose-individual-upgrade-level", Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "y", Hint = "Worship T~!yr", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor", "upgrade-deity-loki"},
	Description = "Choose Tyr as a minor deity for your hero. +2 Damage for sword infantry and enables Inspire spell for Gudjans. Incompatible with the Heimdall and Hel minor deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord"
	}
})

DefineButton( { Pos = 14, Level = "choose-individual-upgrade-level", Icon = "icon-heimdall",
	Action = "learn-ability", Value = "upgrade-deity-heimdall",
	Key = "d", Hint = "Worship Heim~!dall", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor", "upgrade-deity-loki"},
	Description = "Choose Heimdall as a minor deity for your hero. +1 Sight for Archers, enables Precision spell for Gudjans. Incompatible with the Hel and Tyr minor deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 15, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship He~!l", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor", "upgrade-deity-loki"},
	Description = "Choose Hel as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Heimdall and Tyr minor deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience_upgrade_to", Value = "unit-norse-veteran-swordsman",
	Key = "w", Hint = "Upgrade to Veteran S~!wordsman", Popup = "popup_unit",
	ForUnit = {"unit-norse-swordsman", "unit-slavic-swordsman"}
})

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience_upgrade_to", Value = "unit-norse-heroic-swordsman",
	Key = "h", Hint = "Upgrade to ~!Hersir", Popup = "popup_unit",
	ForUnit = {"unit-norse-veteran-swordsman"}
})
