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
--      (c) Copyright 2015-2020 by Andrettin
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

DefineLanguageWord("Acht", {
	Language = "high-german",
	Type = "numeral",
	Number = 8
})

DefineLanguageWord("Adel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Noble"},
	DerivesFrom = {"middle-high-german", "noun", "Adel"}, -- presumably
	NumberCaseInflections = {
		"singular", "genitive", "Adels"
	},
	Gender = "masculine"
})

DefineLanguageWord("Adler", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Eagle"},
	DerivesFrom = {"old-high-german", "noun", "Adelâr"}, -- Source: http://www.cnrtl.fr/definition/al%C3%A9rion
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Adlers",
		"plural", "dative", "Adlern"
	}
})

DefineLanguageWord("Alp", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Elf"},
	DerivesFrom = {"middle-high-german", "noun", "Alp"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Alps", -- there is also the alternative form "Alpes"
		"plural", "nominative", "Alpe"
	}
})

DefineLanguageWord("Alpdrücken", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Nightmare"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Albdrückens"
	}
})

DefineLanguageWord("Alt", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Old"},
	DerivesFrom = {"middle-high-german", "adjective", "Alt"}
})

DefineLanguageWord("Amboss", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Anvil"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Ambosses",
		"plural", "nominative", "Ambosse"
	}
})

DefineLanguageWord("Au", { -- Source: http://www.duden.de/rechtschreibung/Au_feuchte_Niederung
	Language = "high-german",
	Type = "noun",
	Meanings = {"Flat Terrain with Lush Meadows"},
	NumberCaseInflections = {
		"plural", "nominative", "Auen",
		"plural", "accusative", "Auen",
		"plural", "dative", "Auen",
		"plural", "genitive", "Auen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Bach", { -- Source: http://www.duden.de/rechtschreibung/Bach_Wasserlauf
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stream"},
	DerivesFrom = {"middle-high-german", "noun", "Bach"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	NumberCaseInflections = {
		"singular", "genitive", "Baches", -- source also gives alternative form "Bachs"
		"plural", "nominative", "Bäche",
		"plural", "accusative", "Bäche",
		"plural", "dative", "Bächen",
		"plural", "genitive", "Bäche"
	},
	Gender = "masculine"
})

DefineLanguageWord("Bad", { -- Source: http://www.duden.de/rechtschreibung/Bad
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bath", "Baths"},
	DerivesFrom = {"middle-high-german", "noun", "Bat"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	NumberCaseInflections = {
		"singular", "genitive", "Bades", -- source also gives alternative form "Bads"
		"plural", "nominative", "Bäder",
		"plural", "accusative", "Bäder",
		"plural", "dative", "Bädern",
		"plural", "genitive", "Bäder"
	},
	Gender = "neuter"
})

DefineLanguageWord("Baden", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Bathe"},
	DerivesFrom = {"middle-high-german", "noun", "Bat"}, -- presumably, since the corresponding noun "Bad" comes from this word
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Bade",
		"singular", "second-person", "present", "indicative", "Badest",
		"singular", "third-person", "present", "indicative", "Badet",
		"plural", "second-person", "present", "indicative", "Badet",
		"singular", "first-person", "past", "indicative", "Badete",
		"singular", "second-person", "past", "indicative", "Badetest",
		"singular", "third-person", "past", "indicative", "Badete",
		"plural", "first-person", "past", "indicative", "Badeten",
		"plural", "second-person", "past", "indicative", "Badetet",
		"plural", "third-person", "past", "indicative", "Badeten"
	},
	Participles = {
		"present", "Badend",
		"past", "Gebadet"
	}
})

DefineLanguageWord("Bär", { -- Source: http://www.duden.de/rechtschreibung/Baer_Raubtier
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bear"},
	DerivesFrom = {"old-high-german", "noun", "Bero"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	NumberCaseInflections = {
		"singular", "accusative", "Bären",
		"singular", "dative", "Bären",
		"singular", "genitive", "Bären",
		"plural", "nominative", "Bären",
		"plural", "accusative", "Bären",
		"plural", "dative", "Bären",
		"plural", "genitive", "Bären"
	},
	Gender = "masculine"
})

DefineLanguageWord("Bart", { -- Source: http://www.duden.de/rechtschreibung/Bart
	Language = "high-german",
	Type = "noun",
	Meanings = {"Beard"},
	DerivesFrom = {"middle-high-german", "noun", "Bart"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Bartes", -- alternatively also "Barts"
		"plural", "nominative", "Bärte",
		"plural", "accusative", "Bärte",
		"plural", "dative", "Bärten",
		"plural", "genitive", "Bärte"
	}
})

DefineLanguageWord("Baum", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tree"},
	DerivesFrom = {"middle-high-german", "noun", "Boum"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 134.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Baumes", -- alternatively also "Baums"
		"plural", "nominative", "Bäume",
		"plural", "accusative", "Bäume",
		"plural", "dative", "Bäumen",
		"plural", "genitive", "Bäume"
	}
})

DefineLanguageWord("Bein", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Leg"},
	DerivesFrom = {"middle-high-german", "noun", "Bein"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Beines", -- alternatively also "Beins"
		"plural", "nominative", "Beine",
		"plural", "accusative", "Beine",
		"plural", "dative", "Beinen",
		"plural", "genitive", "Beine"
	}
})

DefineLanguageWord("Berg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"},
	DerivesFrom = {"middle-high-german", "noun", "Berc"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Berges", -- alternatively also "Bergs"
		"plural", "nominative", "Berge",
		"plural", "accusative", "Berge",
		"plural", "dative", "Bergen",
		"plural", "genitive", "Berge"
	}
})

DefineLanguageWord("Bergen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Salvage"}
})

DefineLanguageWord("Blau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Blue"},
	DerivesFrom = {"middle-high-german", "adjective", "Blâ"}, -- presumably, since the corresponding adjective does
	Gender = "neuter"
})

DefineLanguageWord("Blau", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Blue"},
	DerivesFrom = {"middle-high-german", "adjective", "Blâ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
})

DefineLanguageWord("Blei", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Lead"},
	DerivesFrom = {"middle-high-german", "noun", "Blî"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Gender = "neuter"
})

DefineLanguageWord("Bleiern", {
	Language = "high-german",
	Type = "adjective",
	DerivesFrom = {"middle-high-german", "noun", "Blî"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Meanings = {"Lead"}
})

DefineLanguageWord("Blume", { -- Source: http://www.duden.de/rechtschreibung/Blume
	Language = "high-german",
	Type = "noun",
	Meanings = {"Flower"},
	DerivesFrom = {"middle-high-german", "noun", "Bluome"},
	NumberCaseInflections = {
		"plural", "nominative", "Blumen",
		"plural", "accusative", "Blumen",
		"plural", "dative", "Blumen",
		"plural", "genitive", "Blumen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Brand", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fire"},
	DerivesFrom = {"middle-high-german", "noun", "Brant"}, -- presumably
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Brandes", -- alternatively also "Brands"
		"plural", "nominative", "Brände",
		"plural", "accusative", "Brände",
		"plural", "dative", "Bränden",
		"plural", "genitive", "Brände"
	}
})

DefineLanguageWord("Branden", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Surge"},
	DerivesFrom = {"middle-high-german", "noun", "Brant"}, -- presumably (assuming it to have a similar origin as the noun "Brand")
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Brande",
		"singular", "second-person", "present", "indicative", "Brandest",
		"singular", "third-person", "present", "indicative", "Brandet",
		"plural", "second-person", "present", "indicative", "Brandet",
		"singular", "first-person", "past", "indicative", "Brandete",
		"singular", "second-person", "past", "indicative", "Brandetest",
		"singular", "third-person", "past", "indicative", "Brandete",
		"plural", "first-person", "past", "indicative", "Brandeten",
		"plural", "second-person", "past", "indicative", "Brandetet",
		"plural", "third-person", "past", "indicative", "Brandeten"
	},
	Participles = {
		"present", "Brandend",
		"past", "Gebrandet"
	}
})

DefineLanguageWord("Braun", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Brown"}
})

DefineLanguageWord("Brennen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Burn"},
	DerivesFrom = {"middle-high-german", "verb", "Brennen"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
})

DefineLanguageWord("Brennend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Burning"},
	DerivesFrom = {"middle-high-german", "verb", "Brennen"} -- presumably, since the verb "Brennen" comes from this word
})

DefineLanguageWord("Brett", { -- Source: http://www.duden.de/rechtschreibung/Brett
	Language = "high-german",
	Type = "noun",
	Meanings = {"Board"},
	DerivesFrom = {"middle-high-german", "noun", "Bret"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "genitive", "Brettes", -- alternatively also "Bretts"
		"plural", "nominative", "Bretter",
		"plural", "accusative", "Bretter",
		"plural", "dative", "Brettern",
		"plural", "genitive", "Bretter"
	}
})

DefineLanguageWord("Bronze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bronze"},
	Gender = "feminine"
})

DefineLanguageWord("Bronzen", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Bronze"}
})

DefineLanguageWord("Bruck", { -- used in placenames, but not in actual speech
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bridge"},
	NumberCaseInflections = {
		"plural", "nominative", "Brucken",
		"plural", "accusative", "Brucken",
		"plural", "dative", "Brucken",
		"plural", "genitive", "Brucken"
	},
	Gender = "feminine",
	DerivesFrom = {"middle-high-german", "noun", "Brücke"} -- presumably, since the High German word "Brücke" does come from Middle High German "Brücke"
})

DefineLanguageWord("Brücke", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bridge"},
	DerivesFrom = {"middle-high-german", "noun", "Brücke"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Brücken",
		"plural", "accusative", "Brücken",
		"plural", "dative", "Brücken",
		"plural", "genitive", "Brücken"
	}
})

DefineLanguageWord("Brunst", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Rut"},
	DerivesFrom = {"middle-high-german", "noun", "Brunst"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Brünste",
		"plural", "accusative", "Brünste",
		"plural", "dative", "Brünsten",
		"plural", "genitive", "Brünste"
	}
})

DefineLanguageWord("Burg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Castle"},
	DerivesFrom = {"middle-high-german", "noun", "Burc"},
	NumberCaseInflections = {
		"plural", "nominative", "Burgen",
		"plural", "accusative", "Burgen",
		"plural", "dative", "Burgen",
		"plural", "genitive", "Burgen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Busch", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bush"},
	DerivesFrom = {"middle-high-german", "noun", "Busch"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 143.
	Gender = "masculine"
})

DefineLanguageWord("Darm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Intestine"},
	DerivesFrom = {"middle-high-german", "noun", "Darm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Darmes", -- alternatively "Darms"
		"plural", "nominative", "Därme",
		"plural", "accusative", "Därme",
		"plural", "dative", "Därmen",
		"plural", "genitive", "Därme"
	}
})

DefineLanguageWord("Das", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "singular",
	Nominative = "Das",
	Accusative = "Das",
	Dative = "Dem",
	Genitive = "Des",
	Gender = "neuter"
})

DefineLanguageWord("Der", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "singular",
	Nominative = "Der",
	Accusative = "Den",
	Dative = "Dem",
	Genitive = "Des",
	Gender = "masculine"
})

DefineLanguageWord("Die", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "singular",
	Nominative = "Die",
	Accusative = "Die",
	Dative = "Der",
	Genitive = "Der",
	Gender = "feminine"
})

DefineLanguageWord("Die", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "plural",
	Nominative = "Die",
	Accusative = "Die",
	Dative = "Den",
	Genitive = "Der"
})

DefineLanguageWord("Dorf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Village"},
	DerivesFrom = {"middle-high-german", "noun", "Dorf"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Dorfes", -- alternatively also "Dorfs"
		"plural", "nominative", "Dörfer",
		"plural", "accusative", "Dörfer",
		"plural", "dative", "Dörfern",
		"plural", "genitive", "Dörfer"
	}
})

DefineLanguageWord("Drasch", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Precipitation"},
	NumberCaseInflections = {
		"singular", "genitive", "Draschs"
	},
	Gender = "masculine",
	Uncountable = true
})

DefineLanguageWord("Drei", {
	Language = "high-german",
	Type = "numeral",
	Number = 3
})

DefineLanguageWord("Eins", {
	Language = "high-german",
	Type = "numeral",
	Number = 1,
	DerivesFrom = {"old-high-german", "numeral", "Ein"} -- presumably
})

DefineLanguageWord("Eisen", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Iron"},
	DerivesFrom = {"middle-high-german", "noun", "Îsern"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Gender = "neuter",
	Uncountable = true
})
	
DefineLanguageWord("Eisern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Iron"},
	DerivesFrom = {"middle-high-german", "noun", "Îsern"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
})

DefineLanguageWord("Elf", {
	Language = "high-german",
	Type = "numeral",
	Number = 11
})

DefineLanguageWord("Eltern", { -- this is the plural
	Language = "high-german",
	Type = "noun",
	Meanings = {"Parents"},
	DerivesFrom = {"middle-high-german", "noun", "Altern"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	NumberCaseInflections = {
		"plural", "nominative", "Eltern"
	}
})

DefineLanguageWord("Erz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ore"},
	DerivesFrom = {"middle-high-german", "noun", "Êr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Erzes",
		"plural", "nominative", "Erze",
		"plural", "accusative", "Erze",
		"plural", "dative", "Erzen",
		"plural", "genitive", "Erze"
	}
})

DefineLanguageWord("Esse", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Forge"},
	DerivesFrom = {"old-high-german", "noun", "Essa"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Essen",
		"plural", "accusative", "Essen",
		"plural", "dative", "Essen",
		"plural", "genitive", "Essen"
	}
})

DefineLanguageWord("Falz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Forest Bird Copulation"}, -- source gives the German "Begattung der Waldvögel" as the meaning; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	DerivesFrom = {"middle-high-german", "noun", "Valz"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	Gender = "masculine"
})

DefineLanguageWord("Fechten", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Fencing"},
	DerivesFrom = {"old-high-german", "verb", "Fehtan"} -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
})

DefineLanguageWord("Feld", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Field"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Feldes", -- alternatively also "Felds"
		"plural", "nominative", "Felder",
		"plural", "accusative", "Felder",
		"plural", "dative", "Feldern",
		"plural", "genitive", "Felder"
	}
})

DefineLanguageWord("Feuer", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Viur"},
	Gender = "neuter"
})

DefineLanguageWord("Feurig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Fiery"},
	DerivesFrom = {"middle-high-german", "noun", "Viur"} -- presumably, since "Feuer" does
})

DefineLanguageWord("Fisch", { -- Source: http://www.duden.de/rechtschreibung/Fisch
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fish"},
	DerivesFrom = {"old-high-german", "noun", "Fisk"},
	Gender = "masculine"
})

DefineLanguageWord("Frei", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Free"},
	DerivesFrom = {"old-high-german", "adjective", "Friia"}, -- presumably
	ComparisonDegreeCaseInflections = {
		"comparative", "Freier",
		"superlative", "Freiesten" -- alternatively also "freisten"
	}
})

DefineLanguageWord("Fried", { -- root present in "Friede" and also in a number of adjectives
	Language = "high-german",
	Type = "noun",
	Meanings = {"Peace"},
	DerivesFrom = {"middle-high-german", "noun", "Vride"} -- presumably, since "Friede" comes from that word
})

DefineLanguageWord("Friede", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Peace"},
	DerivesFrom = {"middle-high-german", "noun", "Vride"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Gender = "masculine",
	Uncountable = true
})

DefineLanguageWord("Fünf", {
	Language = "high-german",
	Type = "numeral",
	Number = 5,
	DerivesFrom = {"old-high-german", "numeral", "Fimf"} -- presumably
})

DefineLanguageWord("Fürst", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Prince"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "accusative", "Fürsten",
		"singular", "dative", "Fürsten",
		"singular", "genitive", "Fürsten",
		"plural", "nominative", "Fürsten",
		"plural", "accusative", "Fürsten",
		"plural", "dative", "Fürsten",
		"plural", "genitive", "Fürsten"
	}
})

DefineLanguageWord("Furt", { -- Source: http://www.duden.de/rechtschreibung/Furt
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ford"},
	DerivesFrom = {"middle-high-german", "noun", "Vurt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 120-121.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Furten",
		"plural", "accusative", "Furten",
		"plural", "dative", "Furten",
		"plural", "genitive", "Furten"
	}
})

DefineLanguageWord("Gart", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Rural Landsknecht Guard"},
	NumberCaseInflections = {
		"plural", "nominative", "Garten"
	},
	Gender = "feminine"
})

DefineLanguageWord("Garten", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Garden"},
	DerivesFrom = {"old-high-german", "noun", {"Garden"}, "Gart"}, -- Source: http://www.cnrtl.fr/definition/jardin
	Gender = "masculine"
})

DefineLanguageWord("Gau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"District"},
	DerivesFrom = {"proto-germanic", "noun", "Gavja"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Gaues", -- alternatively also "Gaus"
		"plural", "nominative", "Gaue",
		"plural", "accusative", "Gaue",
		"plural", "dative", "Gauen",
		"plural", "genitive", "Gaue"
	}
})

DefineLanguageWord("Gelb", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Yellow"}
})

DefineLanguageWord("Glänzend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Shining"},
	DerivesFrom = {"middle-high-german", "adjective", "Glanz"}, -- presumably
	ComparisonDegreeCaseInflections = {
		"comparative", "Glänzender",
		"superlative", "Glänzendsten"
	}
})

DefineLanguageWord("Glockner", { -- presumably related to the word "Glöckner"
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	Gender = "masculine"
})

DefineLanguageWord("Glöckner", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bell Ringer"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Glöckners",
		"plural", "dative", "Glöcknern"
	}
})

DefineLanguageWord("Goethe", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"middle-high-german", "noun", "Göte"} -- source is not clear if Goethe comes from Göte or Gote in Middle High German; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
})

DefineLanguageWord("Gold", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Gold"},
	DerivesFrom = {"middle-high-german", "noun", "Golt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Gender = "neuter"
})

DefineLanguageWord("Golden", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Golden"},
	DerivesFrom = {"middle-high-german", "noun", "Golt"} -- presumably, since the corresponding noun derives from that word
})

DefineLanguageWord("Gott", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"God"},
	DerivesFrom = {"middle-high-german", "noun", "Got"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Gender = "masculine"
})

DefineLanguageWord("Grau", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Gray"},
	DerivesFrom = {"middle-high-german", "adjective", "Grâ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
})

DefineLanguageWord("Greis", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Old"},
	DerivesFrom = {"middle-high-german", "adjective", "Grīs"} -- presumably; Source: http://www.cnrtl.fr/definition/gris
})

DefineLanguageWord("Groß", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Big"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Größer",
		"superlative", "Größte"
	}
})

DefineLanguageWord("Grün", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Green"},
	DerivesFrom = {"old-high-german", "noun", "Gruoti"}, -- apparently; Source: http://www.cnrtl.fr/definition/gruyer
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Grün", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Green"},
	DerivesFrom = {"middle-high-german", "adjective", "Grüene"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Heel"},
	NumberCaseInflections = {
		"singular", "genitive", "Hackens"
	},
	Gender = "masculine"
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Chop"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Hacke",
		"singular", "second-person", "present", "indicative", "Hackst",
		"singular", "third-person", "present", "indicative", "Hackt",
		"plural", "second-person", "present", "indicative", "Hackt",
		"singular", "first-person", "past", "indicative", "Hackte",
		"singular", "second-person", "past", "indicative", "Hacktest",
		"singular", "third-person", "past", "indicative", "Hackte",
		"plural", "first-person", "past", "indicative", "Hackten",
		"plural", "second-person", "past", "indicative", "Hacktet",
		"plural", "third-person", "past", "indicative", "Hackten"
	},
	Participles = {
		"present", "Hackend",
		"past", "Gehackt"
	}
})

DefineLanguageWord("Halb", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Half"},
	DerivesFrom = {"middle-high-german", "adjective", "Halp"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
})

DefineLanguageWord("Hals", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Neck", "Throat"},
	DerivesFrom = {"middle-high-german", "noun", "Hals"}, -- presumably
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Halses",
		"plural", "nominative", "Hälse",
		"plural", "accusative", "Hälse",
		"plural", "dative", "Hälsen",
		"plural", "genitive", "Hälse"
	}
})

DefineLanguageWord("Hammer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hammer"},
	DerivesFrom = {"old-high-german", "noun", "Hamar"}, -- presumably; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	NumberCaseInflections = {
		"singular", "genitive", "Hammers",
		"plural", "nominative", "Hämmer",
		"plural", "accusative", "Hämmer",
		"plural", "dative", "Hämmern",
		"plural", "genitive", "Hämmer"
	},
	Gender = "masculine"
})

DefineLanguageWord("Hart", { -- Source: http://www.duden.de/rechtschreibung/hart
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Hard"},
	DerivesFrom = {"middle-high-german", "adjective", "Hart"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	ComparisonDegreeCaseInflections = {
		"comparative", "Härter",
		"superlative", "Härteste"
	}
})

DefineLanguageWord("Haus", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Hauses",
		"plural", "nominative", "Häuser"
	}
})

DefineLanguageWord("Heer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Army"},
	DerivesFrom = {"old-high-german", "noun", "Hari"} -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
})

DefineLanguageWord("Heilig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Holy"},
	DerivesFrom = {"middle-high-german", "adjective", "Heilec"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
})

DefineLanguageWord("Heim", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Home"},
	DerivesFrom = {"middle-high-german", "noun", "Heim"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Heimes", -- alternatively also "Heims"
		"plural", "nominative", "Heime",
		"plural", "accusative", "Heime",
		"plural", "dative", "Heimen",
		"plural", "genitive", "Heime"
	}
})

DefineLanguageWord("Heimisch", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Domestic"},
	DerivesFrom = {"middle-high-german", "adjective", "Heimisch"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	ComparisonDegreeCaseInflections = {
		"comparative", "Heimischer",
		"superlative", "Heimischsten"
	}
})

DefineLanguageWord("Helm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Helm", "Helmet"},
	DerivesFrom = {"middle-high-german", "noun", "Helm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Helmes", -- alternatively also "Helms"
		"plural", "nominative", "Helme",
		"plural", "accusative", "Helme",
		"plural", "dative", "Helmen",
		"plural", "genitive", "Helme"
	}
})

DefineLanguageWord("Herd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Hert"},
	Gender = "masculine"
})

DefineLanguageWord("Hinter", {
	Language = "high-german",
	Type = "adposition",
	Meanings = {"Behind"}
})

DefineLanguageWord("Hoch", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"High"},
	DerivesFrom = {"middle-high-german", "adjective", "Hôch"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	ComparisonDegreeCaseInflections = {
		"comparative", "Höher",
		"superlative", "Höchste"
	}
})

DefineLanguageWord("Höcker", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hump"},
	DerivesFrom = {"middle-high-german", "noun", "Hoger"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Höckers",
		"plural", "dative", "Höckern"
	}
})

DefineLanguageWord("Hof", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Court"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Hofes", -- alternatively also "Hofs"
		"plural", "nominative", "Höfe",
		"plural", "accusative", "Höfe",
		"plural", "dative", "Höfen",
		"plural", "genitive", "Höfe"
	}
})

DefineLanguageWord("Hölle", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hell"},
	DerivesFrom = {"middle-high-german", "noun", "Helle"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Gender = "feminine"
})

DefineLanguageWord("Horn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Horn"},
	DerivesFrom = {"middle-high-german", "noun", "Horn"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Horns", -- alternatively also "Hornes"
		"plural", "nominative", "Hörner"
	}
})

DefineLanguageWord("Hügel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill"},
	DerivesFrom = {"middle-high-german", "noun", "Houc"}, -- presumably
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Hügels",
		"plural", "dative", "Hügeln"
	}
})

DefineLanguageWord("Huhn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chicken"},
	NumberCaseInflections = {
		"singular", "genitive", "Huhns", -- "Huhnes" is an alternative form
		"plural", "nominative", "Hühner",
		"plural", "genitive", "Hühner"
	},
	Gender = "neuter"
})

DefineLanguageWord("Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hunger"},
	DerivesFrom = {"old-high-german", "noun", "Hungar"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Gender = "masculine",
	Uncountable = true,
	NumberCaseInflections = {
		"singular", "genitive", "Hungers"
	}
})

DefineLanguageWord("Kaiser", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Emperor"},
	NumberCaseInflections = {
		"singular", "genitive", "Kaisers",
		"plural", "dative", "Kaisern"
	},
	Gender = "masculine"
})

DefineLanguageWord("Kerl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chap", "Guy", "Lad", "Servant"},
	DerivesFrom = {"old-high-german", "noun", "Karal"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Kerls",
		"plural", "nominative", "Kerle"
	}
})

DefineLanguageWord("Kettenhemd", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mail"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Kettenhemdes", -- alternatively also "Kettenhemds"
		"plural", "nominative", "Kettenhemden",
		"plural", "accusative", "Kettenhemden",
		"plural", "dative", "Kettenhemden",
		"plural", "genitive", "Kettenhemden"
	}
})

DefineLanguageWord("Kind", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Child"},
	DerivesFrom = {"old-high-german", "noun", "Kind"}, -- presumably
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Kindes", -- alternatively also "Kinds"
		"plural", "nominative", "Kinder",
		"plural", "accusative", "Kinder",
		"plural", "dative", "Kindern",
		"plural", "genitive", "Kinder"
	}
})

DefineLanguageWord("Klage", { -- Source: http://www.duden.de/rechtschreibung/Klage
	Language = "high-german",
	Type = "noun",
	Meanings = {"Complaint"},
	NumberCaseInflections = {
		"plural", "nominative", "Klagen",
		"plural", "accusative", "Klagen",
		"plural", "dative", "Klagen",
		"plural", "genitive", "Klagen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Klause", { -- Source: http://www.duden.de/rechtschreibung/Klause
	Language = "high-german",
	Type = "noun",
	Meanings = {"Cloister"},
	NumberCaseInflections = {
		"plural", "nominative", "Klausen",
		"plural", "accusative", "Klausen",
		"plural", "dative", "Klausen",
		"plural", "genitive", "Klausen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Kloster", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Cloister", "Monastery"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Klosters",
		"plural", "nominative", "Klöster",
		"plural", "accusative", "Klöster",
		"plural", "dative", "Klöstern",
		"plural", "genitive", "Klöster"
	}
})

DefineLanguageWord("Knecht", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Servant"},
	DerivesFrom = {"middle-high-german", "noun", "Kneht"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Knechtes", -- alternatively also "Knechts"
		"plural", "nominative", "Knechte",
		"plural", "accusative", "Knechte",
		"plural", "dative", "Knechten",
		"plural", "genitive", "Knechte"
	}
})

DefineLanguageWord("König", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"King"},
	DerivesFrom = {"middle-high-german", "noun", "Künec"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Königs",
		"plural", "nominative", "Könige"
	}
})

DefineLanguageWord("Königin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Queen"},
	DerivesFrom = {"middle-high-german", "noun", "Künec"}, -- presumably (unless there was a word for Queen in Middle High German from which this one is derived)
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Königinnen"
	}
})

DefineLanguageWord("Kreuz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Cross"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Kreuzes",
		"plural", "nominative", "Kreuze",
		"plural", "accusative", "Kreuze",
		"plural", "dative", "Kreuzen",
		"plural", "genitive", "Kreuze"
	}
})

DefineLanguageWord("Krieg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Kriegen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Get"}
})

DefineLanguageWord("Kugel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ball", "Globe"},
	NumberCaseInflections = {
		"plural", "nominative", "Kugeln",
		"plural", "accusative", "Kugeln",
		"plural", "dative", "Kugeln",
		"plural", "genitive", "Kugeln"
	},
	Gender = "feminine"
})

DefineLanguageWord("Kupfer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Copper"},
	Gender = "neuter"
})

DefineLanguageWord("Kupfern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Copper"}
})

DefineLanguageWord("Lai", { -- Source: http://www.duden.de/rechtschreibung/Lai
	Language = "high-german",
	Type = "noun",
	Meanings = {"Old French Poetry"},
	-- source also gives alternative form "Lais" for the genitive
	NumberCaseInflections = {
		"plural", "nominative", "Lais"
	},
	Gender = "neuter"
})

DefineLanguageWord("Lot", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Lot"},
	DerivesFrom = {"middle-high-german", "noun", "Lôt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Gender = "neuter"
})

DefineLanguageWord("Magen", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stomach"},
	DerivesFrom = {"middle-high-german", "noun", "Mage"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Magens"
	}
})

DefineLanguageWord("Magisch", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Magic"}
})

DefineLanguageWord("Mann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Man"},
	NumberCaseInflections = {
		"plural", "nominative", "Männer"
	},
	Gender = "masculine"
})

DefineLanguageWord("Mark", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"March"},
	DerivesFrom = {"middle-high-german", "noun", "Marke"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Marken",
		"plural", "accusative", "Marken",
		"plural", "dative", "Marken",
		"plural", "genitive", "Marken"
	}
})

DefineLanguageWord("Mark", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mark"}, -- Currency unit used by i.e. Germany
	DerivesFrom = {"middle-high-german", "noun", {"Half Silver Pound", "Half Gold Pound"}, "Marke"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160; Source: http://www.cnrtl.fr/definition/marc
	Gender = "feminine"
})

DefineLanguageWord("Mehr", {
	Language = "high-german",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Meise", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"},
	DerivesFrom = {"middle-high-german", "noun", "Meise"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Meisen",
		"plural", "accusative", "Meisen",
		"plural", "dative", "Meisen",
		"plural", "genitive", "Meisen"
	}
})

DefineLanguageWord("Messing", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Brass"},
	Gender = "neuter"
})

DefineLanguageWord("Messingen", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Brass"}
})

DefineLanguageWord("Mittel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Means", "Middle"},
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "genitive", "Mittels",
		"plural", "dative", "Mitteln"
	}
})

DefineLanguageWord("Mühle", { -- Source: http://www.duden.de/rechtschreibung/Muehle
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mill"},
	NumberCaseInflections = {
		"plural", "nominative", "Mühlen",
		"plural", "accusative", "Mühlen",
		"plural", "dative", "Mühlen",
		"plural", "genitive", "Mühlen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Mut", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Courage"},
	Gender = "masculine",
	Uncountable = true
})

DefineLanguageWord("Neu", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"New"},
	DerivesFrom = {"middle-high-german", "adjective", "Niuwe"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
})

DefineLanguageWord("Neun", {
	Language = "high-german",
	Type = "numeral",
	Number = 9
})

DefineLanguageWord("Nord", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"North"},
	DerivesFrom = {"old-high-german", "noun", "Nord"}, -- seems sensible
	Gender = "masculine"
})

DefineLanguageWord("Norden", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"North"},
	DerivesFrom = {"old-high-german", "noun", "Nord"}, -- seems sensible
	Gender = "masculine"
})

DefineLanguageWord("Nuss", { -- Source: http://www.duden.de/rechtschreibung/Nuss
	Language = "high-german",
	Type = "noun",
	Meanings = {"Nut"},
	DerivesFrom = {"middle-high-german", "noun", "Nuz̨"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Nüsse",
		"plural", "accusative", "Nüsse",
		"plural", "dative", "Nüsse",
		"plural", "genitive", "Nüsse"
	}
})

DefineLanguageWord("Oheim", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Uncle"},
	DerivesFrom = {"middle-high-german", "noun", "Ôheim"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Oheims",
		"plural", "nominative", "Oheime",
		"plural", "accusative", "Oheime",
		"plural", "dative", "Oheimen",
		"plural", "genitive", "Oheime"
	}
})

DefineLanguageWord("Ohm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Uncle"},
	DerivesFrom = {"middle-high-german", "noun", "Ôheim"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Ohmes", -- alternatively also "Ohms"
		"plural", "nominative", "Ohme",
		"plural", "accusative", "Ohme",
		"plural", "dative", "Ohmen",
		"plural", "genitive", "Ohme"
	}
})

DefineLanguageWord("Ort", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Place"},
	DerivesFrom = {"middle-high-german", "noun", "Ort"}
})

DefineLanguageWord("Ost", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"East"},
	DerivesFrom = {"middle-high-german", "noun", "Ôsten"}, -- correct? seems sensible
	Gender = "masculine"
})

DefineLanguageWord("Osten", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"East"},
	DerivesFrom = {"middle-high-german", "noun", "Ôsten"},
	Gender = "masculine"
})

DefineLanguageWord("Rat", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Counsel", "Council"},
	DerivesFrom = {"middle-high-german", "noun", "Rât"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Rates", -- alternatively also "Rats"
		"plural", "nominative", "Räte",
		"plural", "accusative", "Räte",
		"plural", "dative", "Räten",
		"plural", "genitive", "Räte"
	}
})

DefineLanguageWord("Reich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Realm", "Empire"},
	DerivesFrom = {"middle-high-german", "noun", "Rîche"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Reiches", -- alternatively also "Reichs"
		"plural", "nominative", "Reiche",
		"plural", "accusative", "Reiche",
		"plural", "dative", "Reichen",
		"plural", "genitive", "Reiche"
	}
})

DefineLanguageWord("Reich", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rich"},
	DerivesFrom = {"middle-high-german", "adjective", "Rîche"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
})

DefineLanguageWord("Reiten", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Ride"},
	DerivesFrom = {"old-high-german", "verb", "Rītan"} -- Source: Guus Kroonen, "Etymological Dictionary of Proto-Germanic", 2013, p. 412.
})

DefineLanguageWord("Rose", { -- Source: http://www.duden.de/rechtschreibung/Rose_Pflanze_Bluete_Verdickung
	Language = "high-german",
	Type = "noun",
	Meanings = {"Rose"},
	NumberCaseInflections = {
		"plural", "nominative", "Rosen",
		"plural", "accusative", "Rosen",
		"plural", "dative", "Rosen",
		"plural", "genitive", "Rosen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Rostig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rusty"}
})

DefineLanguageWord("Säge", { -- Source: http://www.duden.de/rechtschreibung/Saege
	Language = "high-german",
	Type = "noun",
	Meanings = {"Saw"},
	DerivesFrom = {"middle-high-german", "noun", "Sage"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 213.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Sägen",
		"plural", "accusative", "Sägen",
		"plural", "dative", "Sägen",
		"plural", "genitive", "Sägen"
	}
})

DefineLanguageWord("Salz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Salt"},
	Gender = "masculine",
	Uncountable = true
})

DefineLanguageWord("Satz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Sentence", "Sediment"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Satzes",
		"plural", "nominative", "Sätze",
		"plural", "accusative", "Sätze",
		"plural", "dative", "Sätzen",
		"plural", "genitive", "Sätze"
	}
})

DefineLanguageWord("Schaf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Sheep"},
	NumberCaseInflections = {
		"singular", "genitive", "Schafes", -- source also gives the alternative form "Schafs"
		"plural", "nominative", "Schafe",
		"plural", "accusative", "Schafe",
		"plural", "dative", "Schafen",
		"plural", "genitive", "Schafe"
	},
	Gender = "neuter"
})

DefineLanguageWord("Schild", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Shield"},
	DerivesFrom = {"middle-high-german", "noun", "Schilt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Schildes", -- alternatively also "Schilds"
		"plural", "nominative", "Schilde",
		"plural", "accusative", "Schilde",
		"plural", "dative", "Schilden",
		"plural", "genitive", "Schilde"
	}
})

DefineLanguageWord("Schlacht", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Battle"},
	DerivesFrom = {"old-high-german", "noun", "Slahta"} -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
})

DefineLanguageWord("Schloss", { -- Source: http://www.duden.de/rechtschreibung/Schloss
	Language = "high-german",
	Type = "noun",
	Meanings = {"Castle", "Palace"},
	NumberCaseInflections = {
		"singular", "genitive", "Schlosses",
		"plural", "nominative", "Schlösser",
		"plural", "accusative", "Schlösser",
		"plural", "dative", "Schlössern",
		"plural", "genitive", "Schlösser"
	},
	Gender = "neuter",
})

DefineLanguageWord("Schmied", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Smith"},
	DerivesFrom = {"middle-high-german", "noun", "Smit"}, -- presumably
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Schmiedes", -- alternatively also "Schmieds"
		"plural", "nominative", "Schmiede",
		"plural", "accusative", "Schmiede",
		"plural", "dative", "Schmieden",
		"plural", "genitive", "Schmiede"
	}
})

DefineLanguageWord("Schmiede", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Smithy"},
	DerivesFrom = {"middle-high-german", "noun", "Smide"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Schmieden",
		"plural", "accusative", "Schmieden",
		"plural", "dative", "Schmieden",
		"plural", "genitive", "Schmieden"
	}
})

DefineLanguageWord("Schmieden", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Forge"},
	DerivesFrom = {"old-high-german", "verb", "Smidôn"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Schmiede",
		"singular", "second-person", "present", "indicative", "Schmiedest",
		"singular", "third-person", "present", "indicative", "Schmiedet",
		"plural", "second-person", "present", "indicative", "Schmiedet",
		"singular", "first-person", "past", "indicative", "Schmiedete",
		"singular", "second-person", "past", "indicative", "Schmiedetest",
		"singular", "third-person", "past", "indicative", "Schmiedete",
		"plural", "first-person", "past", "indicative", "Schmiedeten",
		"plural", "second-person", "past", "indicative", "Schmiedetet",
		"plural", "third-person", "past", "indicative", "Schmiedeten"
	},
	Participles = {
		"present", "Schmiedend",
		"past", "Geschmiedet"
	}
})

DefineLanguageWord("Schnee", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Snow"},
	DerivesFrom = {"proto-germanic", "noun", "Snaigva"},
	Gender = "masculine",
	Uncountable = true
})

DefineLanguageWord("Schütze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Archer"},
	DerivesFrom = {"old-high-german", "noun", "Scuzzo"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 234.
})

DefineLanguageWord("Schwarz", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Black"}
})

DefineLanguageWord("Sechs", {
	Language = "high-german",
	Type = "numeral",
	Number = 6
})

DefineLanguageWord("See", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Lake"},
	DerivesFrom = {"middle-high-german", "noun", "Sê"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Sees",
		"plural", "nominative", "Seen"
	}
})

DefineLanguageWord("Sieben", {
	Language = "high-german",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Sieg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Victory"},
	DerivesFrom = {"middle-high-german", "noun", "Sige"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Sieges", -- alternatively also "Siegs"
		"plural", "nominative", "Siege",
		"plural", "accusative", "Siege",
		"plural", "dative", "Siegen",
		"plural", "genitive", "Siege"
	}
})

DefineLanguageWord("Silber", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Silver"},
	DerivesFrom = {"middle-high-german", "noun", "Silber"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Gender = "neuter"
})

DefineLanguageWord("Silbern", {
	Language = "high-german",
	Type = "adjective",
	DerivesFrom = {"middle-high-german", "noun", "Silber"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Meanings = {"Silver"}
})

DefineLanguageWord("Sommer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Summer"},
	DerivesFrom = {"middle-high-german", "noun", "Sumer"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Sommers",
		"plural", "dative", "Sommern"
	}
})

DefineLanguageWord("Sorge", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Worry"},
	DerivesFrom = {"old-high-german", "noun", "Sorga"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Sorgen",
		"plural", "accusative", "Sorgen",
		"plural", "dative", "Sorgen",
		"plural", "genitive", "Sorgen"
	}
})

DefineLanguageWord("Sorgen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Worry"},
	DerivesFrom = {"old-high-german", "verb", "Sorgên"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 223-224.
})

DefineLanguageWord("Speer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Spear"},
	DerivesFrom = {"old-high-german", "noun", "Sper"} -- Source: Guus Kroonen, "Etymological Dictionary of Proto-Germanic", 2013, p. 467.
})

DefineLanguageWord("Spiel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Game", "Play"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Spieles", -- alternatively also "Spiels"
		"plural", "nominative", "Spiele",
		"plural", "accusative", "Spiele",
		"plural", "dative", "Spielen",
		"plural", "genitive", "Spiele"
	}
})

DefineLanguageWord("Spieß", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Spear"},
	DerivesFrom = {"old-high-german", "noun", "Spioz"} -- Source: Guus Kroonen, "Etymological Dictionary of Proto-Germanic", 2013, p. 467.
})

DefineLanguageWord("Spitze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tip", "Peak"},
	NumberCaseInflections = {
		"plural", "nominative", "Spitzen",
		"plural", "accusative", "Spitzen",
		"plural", "dative", "Spitzen",
		"plural", "genitive", "Spitzen"
	},
	Gender = "feminine"
})

DefineLanguageWord("Stadt", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"City", "Town"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Städte",
		"plural", "accusative", "Städte",
		"plural", "dative", "Städten",
		"plural", "genitive", "Städte"
	}
})

DefineLanguageWord("Staffel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Scale"},
	DerivesFrom = {"middle-high-german", "noun", "Stapfel"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 241.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Staffeln",
		"plural", "accusative", "Staffeln",
		"plural", "dative", "Staffeln",
		"plural", "genitive", "Staffeln"
	}
})

DefineLanguageWord("Stein", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stone"},
	DerivesFrom = {"middle-high-german", "noun", "Stein"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Steines", -- alternatively also "Steins"
		"plural", "nominative", "Steine",
		"plural", "accusative", "Steine",
		"plural", "dative", "Steinen",
		"plural", "genitive", "Steine"
	}
})

DefineLanguageWord("Steinern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Stone"}
})

DefineLanguageWord("Stock", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stick"},
	Gender = "masculine",
	DerivesFrom = {"middle-high-german", "noun", "Stoc"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 247.
})

DefineLanguageWord("Stuhl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chair"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Stuhles", -- alternatively also "Stuhls"
		"plural", "nominative", "Stühle",
		"plural", "accusative", "Stühle",
		"plural", "dative", "Stühlen",
		"plural", "genitive", "Stühle"
	}
})

DefineLanguageWord("Tag", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Day"},
	DerivesFrom = {"middle-high-german", "noun", "Tac"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Tages", -- "Tag[e]s"
		"plural", "nominative", "Tage"
	}
})

DefineLanguageWord("Tagen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Dawn"},
	DerivesFrom = {"middle-high-german", "verb", "Tagen"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Tage",
		"singular", "second-person", "present", "indicative", "Tagst",
		"singular", "third-person", "present", "indicative", "Tagt",
		"plural", "second-person", "present", "indicative", "Tagt",
		"singular", "first-person", "past", "indicative", "Tagte",
		"singular", "second-person", "past", "indicative", "Tagtest",
		"singular", "third-person", "past", "indicative", "Tagte",
		"plural", "first-person", "past", "indicative", "Tagten",
		"plural", "second-person", "past", "indicative", "Tagtet",
		"plural", "third-person", "past", "indicative", "Tagten"
	},
	Participles = {
		"present", "Tagend",
		"past", "Getagt"
	}
})

DefineLanguageWord("Tal", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Valley"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Tales", -- alternatively also "Tals"
		"plural", "nominative", "Täler",
		"plural", "accusative", "Täler",
		"plural", "dative", "Tälern",
		"plural", "genitive", "Täler"
	}
})

DefineLanguageWord("Teufel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Devil"},
	NumberCaseInflections = {
		"singular", "genitive", "Teufels",
		"plural", "dative", "Teufeln"
	},
	Gender = "masculine"
})

DefineLanguageWord("Turm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tower"},
	NumberCaseInflections = {
		"singular", "genitive", "Turms",
		"plural", "nominative", "Türme",
		"plural", "accusative", "Türme",
		"plural", "dative", "Türmen",
		"plural", "genitive", "Türme"
	},
	Gender = "masculine"
})

DefineLanguageWord("Verrostet", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rusty"}
})

DefineLanguageWord("Vier", {
	Language = "high-german",
	Type = "numeral",
	Number = 4
})

DefineLanguageWord("Violett", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Violet"}
})

DefineLanguageWord("Von", {
	Language = "high-german",
	Type = "adposition",
	Meanings = {"Of", "From"}
})

DefineLanguageWord("Vor", {
	Language = "high-german",
	Type = "adposition",
	Meanings = {"Before"}
})

DefineLanguageWord("Waid", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Woad"},
	DerivesFrom = {"proto-germanic", "noun", "Waida"}
})

DefineLanguageWord("Wald", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Forest"},
	DerivesFrom = {"middle-high-german", "noun", "Walt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 203.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Waldes", -- alternatively also "Walds"
		"plural", "nominative", "Wälder",
		"plural", "accusative", "Wälder",
		"plural", "dative", "Wäldern",
		"plural", "genitive", "Wälder"
	}
})

DefineLanguageWord("Wasser", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Water"},
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Weiß", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"middle-high-german", "adjective", "Wîz̨"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
})

DefineLanguageWord("Werben", { 
	Language = "high-german",
	Type = "verb",
	Meanings = {"Advertise"},
	DerivesFrom = {"old-high-german", "verb", "Hwerfan"} -- Source: http://www.cnrtl.fr/definition/barguigner
})

DefineLanguageWord("West", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"West"},
	DerivesFrom = {"old-high-german", "noun", "West"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Gender = "masculine"
})

DefineLanguageWord("Wild", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Wild"}
})

DefineLanguageWord("Wölfin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Female Wolf"},
	DerivesFrom = {"middle-high-german", "noun", "Wülpe"}, -- presumably
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Wölfinnen",
		"plural", "accusative", "Wölfinnen",
		"plural", "dative", "Wölfinnen",
		"plural", "genitive", "Wölfinnen"
	}
})

DefineLanguageWord("Wurm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Worm"},
	DerivesFrom = {"middle-high-german", "noun", "Wurm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Wurms" -- alternatively also "Wurmes"
	}
})

DefineLanguageWord("Zahl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Number"},
	DerivesFrom = {"middle-high-german", "noun", "Zal"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Zahlen",
		"plural", "accusative", "Zahlen",
		"plural", "dative", "Zahlen",
		"plural", "genitive", "Zahlen"
	}
})

DefineLanguageWord("Zahn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tooth"},
	DerivesFrom = {"middle-high-german", "noun", "Zan"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Zahnes", -- alternatively also "Zahns"
		"plural", "nominative", "Zähne",
		"plural", "accusative", "Zähne",
		"plural", "dative", "Zähnen",
		"plural", "genitive", "Zähne"
	}
})

DefineLanguageWord("Zaun", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fence"}, -- source gives the German "Zaun, Hecke, Gehege" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Zûn"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Zaunes", -- alternatively also "Zauns"
		"plural", "nominative", "Zäune",
		"plural", "accusative", "Zäune",
		"plural", "dative", "Zäunen",
		"plural", "genitive", "Zäune"
	}
})

DefineLanguageWord("Zehn", {
	Language = "high-german",
	Type = "numeral",
	Number = 10
})

DefineLanguageWord("Zwei", {
	Language = "high-german",
	Type = "numeral",
	Number = 2
})

DefineLanguageWord("Zwölf", {
	Language = "high-german",
	Type = "numeral",
	Number = 12
})

-- compounds

DefineLanguageWord("Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill under a Castle", "Hill under a Palace", "Mountain under a Castle", "Mountain under a Palace"},
	CompoundElements = {
		"prefix", "high-german", "noun", "Schloss",
		"suffix", "high-german", "noun", "Berg"
	},
	Gender = "masculine"
})
