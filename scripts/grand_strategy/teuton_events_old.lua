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
--      (c) Copyright 2015-2022 by Andrettin
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

local TeutonEvents = {
	TheSequanisAppeal = { -- Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138.
		Name = "The Sequani's Appeal",
		Description = "The Gaulish tribes of the Sequani and the Arverni are embroiled in a war with the Aedui. The Sequani have come to us asking to enlist our help in their war.",
		Conditions = function(s)
			if (
				EventFaction.Name == "suebia"
				and GetProvinceOwner("Brandenburg") == EventFaction.Name
--				and ProvinceHasBorderWith(WorldMapProvinces.Brandenburg, WorldMapProvinces.Franconia)
				and ProvinceHasBorderWith(WorldMapProvinces.Brandenburg, WorldMapProvinces.Bavaria)
				and ProvinceHasBorderWith(WorldMapProvinces.Franconia, WorldMapProvinces.Baden)
				and ProvinceHasBorderWith(WorldMapProvinces.Baden, WorldMapProvinces.Alsace)
				and ProvinceHasBorderWith(WorldMapProvinces.Alsace, WorldMapProvinces.FrancheComte)
				and GetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "aeduia") == "peace"
				and GetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "arvernia") == "peace"
				and GetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "sequania") == "peace"
				and GetFactionDiplomacyState("celt", "arvernia", "celt", "aeduia") == "war"
				and GetFactionDiplomacyState("celt", "sequania", "celt", "aeduia") == "war"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Accept", "~!Reject"},
		OptionEffects = {
			function(s)
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "aeduia", "war")
			end,
			function(s)
			end
		}
	},
	TheBattleOfMagetobria = { -- Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138.
		Name = "The Battle of Magetobria",
		Description = "Under the leadership of Ariovistus, we have crossed the Rhine to aid the Sequani and the Arverni in defeating the Aedui, and now an Aedui army approaches the Sequani settlement of Magetobria...",
		Conditions = function(s)
			if (
				EventFaction.Name == "suebia"
				and GetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "aeduia") == "war"
				and GetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "arvernia") == "peace"
				and GetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, "celt", "sequania") == "peace"
				and GetFactionDiplomacyState("celt", "arvernia", "celt", "aeduia") == "war"
				and GetFactionDiplomacyState("celt", "sequania", "celt", "aeduia") == "war"
				and GetProvinceOwner("Franche Comte") == "sequania"
				and GetProvinceOwner("Burgundy") == "aeduia"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "suebia" and wyr.preferences.AutomaticBattles == false) then
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Alsace, "suebia")
						SetProvinceUnitQuantity("Burgundy", "unit-germanic-warrior", 6) -- to give the Aedui something of a defense
					elseif (GameResult == GameDefeat) then
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "suebia" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Alsace, "suebia")
					if (GrandStrategyFaction.Name ~= "suebia") then
						SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 4) -- to give them something of a defense
					end
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Battle of Magetobria", "The Aedui have been crushed! We were granted land in Gaul by the Sequani and the Arverni. However, our chieftain Ariovistus wanted more, and took much of the Sequani's lands for settlement.")
					end
				end
			end
		}
	},
	TheHomeOfTheBoii = {
		Name = "The Home of the Boii",
		Description = "Worried about the Roman presence on the Rhine, Marbod wishes to take the Marcomanni into the lands of the Boii and to establish a kingdom there, splitting off from the rest of the Suebi.",
		Heroes = {
			Marbod = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "suebia"
				and GetProvinceOwner("Bohemia") == "boii-tribe"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "Play as the ~!Marcomanni"},
		OptionEffects = {
			function(s)
				AcquireProvince(WorldMapProvinces.Bohemia, "marcomannia")
				SetProvinceHero("Bohemia", "Marbod", 2)
				AcquireFactionTechnologies(Factions.suebia.Civilization, Factions.suebia.Name, Factions.marcomannia.Civilization, "marcomannia")
				SetProvinceCivilization("Bohemia", "teuton")
			end,
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "suebia" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyFaction = Factions.marcomannia
					SetPlayerFaction("teuton", "marcomannia")
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Bohemia, "marcomannia")
						AcquireFactionTechnologies(Factions.suebia.Civilization, Factions.suebia.Name, Factions.marcomannia.Civilization, "marcomannia")
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "suebia" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Bohemia, "marcomannia")
					SetProvinceHero("Bohemia", "Marbod", 2)
					SetProvinceCivilization("Bohemia", "teuton")
					AcquireFactionTechnologies(Factions.suebia.Civilization, Factions.suebia.Name, Factions.marcomannia.Civilization, "marcomannia")

					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GrandStrategyFaction = Factions.marcomannia
						SetPlayerFaction("teuton", "marcomannia")
						GenericDialog("The Home of the Boii", "The Boii's capital has become naught but a burning ruin. On its ashes we shall build our own settlement of Bubienum, the center of our new Marcomannic kingdom!")
					end
				end
			end
		}
	},
	MarbodDeposed = {
		Name = "Marbod Deposed",
		Description = "Catualda, a Marcomanni noble who had been expelled from our lands by Marbod, has returned to Bohemia with an army behind him, yearning for revenge. The tribe's notables made a compact with him, making the deposition of Marbod a foregone conclusion.",
		Conditions = function(s)
			if (
				EventFaction.Name == "marcomannia"
				and GetFactionMinister("teuton", "marcomannia", "ruler") == "Marbod"
			) then
				return true
			else
				return false
			end
		end,
		Heroes = {
			Marbod = true
		},
		MinYear = 19,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				KillGrandStrategyHero("Marbod")
			end
		}
	},
	TheSackOfIuvavum = {
		Name = "The Sack of Iuvavum",
		Description = "Our chieftain Ballomar has obtained the agreement of more than a dozen Germanic tribes to invade the Roman Empire. Shall we go through with this plan?",
		Conditions = function(s)
			if (
				EventFaction.Name == "marcomannia"
				and GetProvinceOwner("Salzburg") == "rome"
				and GetProvinceOwner("Bohemia") == "marcomannia"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 170,
		Options = {"~!Yes", "~!No"},
		OptionEffects = {
			function(s)
				DeclareWar(EventFaction.Name, "rome")
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "marcomannia" and wyr.preferences.AutomaticBattles == false) then
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Salzburg, "marcomannia")
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "marcomannia" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Salzburg, "marcomannia")
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Sack of Iuvavum", "All that was of worth in Iuvavum has been pillaged...")
					end
				end
			end,
			function(s)
			end
		}
	},
	TheRazingOfOpitergium = {
		Name = "The Razing of Opitergium",
		Description = "Leaving a trail of destruction behind us, we have now reached Italy and lay siege to the Roman city of Opitergium.",
		RequiredEvents = {
			TheSackOfIuvavum = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "marcomannia"
				and GetProvinceOwner("Venetia") == "rome"
				and GetProvinceOwner("Carinthia") == "marcomannia"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "marcomannia" and wyr.preferences.AutomaticBattles == false) then
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Venetia, "marcomannia")
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "marcomannia" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Venetia, "marcomannia")
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Razing of Opitergium", "Opitergium became naught but ashes.")
					end
				end
			end
		}
	},
	TheEastPrussianLandOrdinance = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 23.
		Name = "The East Prussian Land Ordinance",
		Description = "With the passage of a new East Prussian Land Ordinance, peasants have now lost the right of movement.",
		Conditions = function(s)
			if (
				EventFaction.Name == "prussia" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
				and GetProvinceOwner("Prussia") == EventFaction.Name
				-- should only trigger after a technology for the appropriate time period has been researched
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
			end
		},
		OptionTooltips = {"+500 Copper\n-5 Research", ""}
	},
	ThePeasantsAndShepherdsOrdinance = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 30.
		Name = "The Peasants' and Shepherds' Ordinance",
		Description = "The passage of the Peasants' and Shepherds' Ordinance has extinguished hereditary tenure of land amongst the peasantry in Pomerania, so that they now hold these lands as a lease from their lords.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "brandenburg" or EventFaction.Name == "prussia") -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
				and (GetProvinceOwner("Farther Pomerania") == EventFaction.Name or GetProvinceOwner("Hither Pomerania") == EventFaction.Name) -- can happen in either Western or Eastern Pomerania (historically it happened in both; first in Farther Pomerania in 1616, being later extended to Hither Pomerania in 1645)
				-- should only trigger after a technology for the appropriate time period has been researched
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
			end
		},
		OptionTooltips = {"+500 Copper\n-5 Research", ""}
	},
	Britannia = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 14.
		Name = "Britannia",
		Description = "William Camden has published Britannia, an analysis of the material remnants of ancient British peoples. One of the objects analyzed by him was the Stonehenge monument.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Essex") == EventFaction.Name -- since this was presumably in England, and Essex is where the London lays
				and GetProvinceCivilization("Essex") == "english"
			) then
				return true
			else
				return false
			end
		end,
		-- should require some event related to Celtic culture in England to have happened
		MinYear = 1586, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1586,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	MartinTrampesFarm = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 12.
		Name = "Martin Trampe's Farm",
		Description = "A serf from Pomerania called Martin Trampe had managed to accumulate enough money to buy his freedom for 60 reichstaler. After becoming a free man, he has been enterprising enough to gather sufficient funds to buy a large farm in the Brandenburg Uckermark, although to do so he had to willingly submit himself to hereditary subjection to the local lord. Should a man exchange his hard-won freedom for land?",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "teuton"
				and GetProvinceOwner("Brandenburg") == EventFaction.Name
				and GetProvinceCivilization("Brandenburg") == "teuton"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1667, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1667,
		Options = {"More ~!taxes for us!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500)
			end
		},
		OptionTooltips = {"+50 Copper"}
	},
	HansRutenbergsEviction = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 37.
		Name = "Hans Rutenberg's Eviction",
		Description = "The farmer Hans Rutenberg, from the village of Woddrow in PROVINCE_NAME, has refused as a form of protest to do the work required of him to his lord, and as a consequence was evicted from his land.", -- Woddrow is a village in Brandenburg
		Conditions = function(s)
			if (
				EventFaction.Civilization == "teuton"
				and GetProvinceOwner("Brandenburg") == EventFaction.Name
				and GetProvinceCivilization("Brandenburg") == "teuton"
			) then
				EventProvince = WorldMapProvinces.Brandenburg
				return true
			else
				return false
			end
		end,
		MinYear = 1692, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1692,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", -50)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -1)
			end
		},
		OptionTooltips = {"-50 Copper\n-1 Research"}
	},
	TheSerfdomActForBohemiaAndMoravia = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 14.
		Name = "Serfdom Act for Bohemia and Moravia",
		Description = "A major reform of servile relationships has been enacted in Bohemia and Moravia, seeking to bring the economic and social aspects of life in the countryside in line with enlightened thought.",
		Conditions = function(s)
			if (
				EventFaction.Name == "austria" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
				and GetProvinceOwner("Bohemia") == EventFaction.Name
				-- should only trigger after an enlightenment-related technology has been researched
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+500 Copper\n+1 Research\n+1 Prestige"}
	},
	PrinciplesOfGeology = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Principles of Geology",
		Description = "The Scottish geologist Charles Lyell has published his Principles of Geology, in which he argues that geological processes in the past occurred the same as in the present, and throughout an enormously long period.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Lothian") == EventFaction.Name -- where was he actually born in Scotland?
				and GetProvinceCivilization("Lothian") == "english"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1833, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1833,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	OnTheOriginOfSpecies = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "On the Origin of Species",
		Description = "Charles Darwin has published a work entitled On the Origin of Species by Means of Natural Selection, in which he proposes that living organisms are the result of a long process of natural evolution.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Essex") == EventFaction.Name -- since this was presumably in England, and Essex is where the London lies
				and GetProvinceCivilization("Essex") == "english"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1859, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1859,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	AntiquityOfMan = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Antiquity of Man",
		Description = "The Scottish geologist Charles Lyell has published a work entitled Antiquity of Man, in which he seeks to connect theories on natural evolution, geological processes and finds of ancient objects, to provide a new understanding of prehistoric peoples.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Lothian") == EventFaction.Name
				and GetProvinceCivilization("Lothian") == "english"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1863, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1863,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	PrehistoricTimes = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Prehistoric Times",
		Description = "Sir John Lubbock has published his Prehistoric Times, in which he divides the Stone Age between the Old Stone Age (the Palaeolithic) and the New Stone Age (the Neolithic). The former was marked by the use of flaked stone, while in the latter polished stone was used.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Essex") == EventFaction.Name -- since this was presumably in England, and Essex is where the London lays
				and GetProvinceCivilization("Essex") == "english"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1865, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1865,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	ArchivFuerAnthropologie = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 18.
		Name = "Archiv für Anthropologie",
		Description = "The journal Archiv für Anthropologie has been founded in Germany, preoccuping itself with research on prehistory.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Brandenburg") == EventFaction.Name -- where was it actually founded? Brandenburg set here since Berlin was Germany's capital
				and GetProvinceCivilization("Brandenburg") == "teuton"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1865, -- to avoid the event happening too soon (should be replaced by technologies)
		MaxYear = 1865,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	}
}
