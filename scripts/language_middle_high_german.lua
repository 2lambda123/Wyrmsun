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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineLanguageWord("Adel", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Lineage", "Noble Lineage", "Noble"}, -- source gives "Geschlecht, edles Geschlecht, Adel" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Adal"},
	Gender = "masculine"
})

DefineLanguageWord("Alp", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Elf"}, -- apparently?
	DerivesFrom = {"proto-germanic", "noun", "Alba"},
	Gender = "masculine", -- can also be neuter
	NumberCaseInflections = {
		"plural", "nominative", "Elbe" -- source also gives the alternative form "Elber"
	}
})

DefineLanguageWord("Alt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Alt"}
})

DefineLanguageWord("Altern", { -- this is the plural; source also gives the alternative form "Eltern"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Parents"}, -- source gives the German "Eltern" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Altiron"},
	NumberCaseInflections = {
		"plural", "nominative", "Altern"
	}
})

DefineLanguageWord("Bach", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Bah"},
	Gender = "masculine"
})

DefineLanguageWord("Bat", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Bad"},
	Gender = "neuter"
})

DefineLanguageWord("Berc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"}, -- source gives "Berg" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Berg"},
	NumberCaseInflections = {
		"singular", "genitive", "Berges"
	},
	Gender = "masculine"
})

DefineLanguageWord("Blâ", { -- source also gives the inflected form "blâwer"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Blue"}, -- source (apparently) gives the German "blau" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Blāo"}
})

DefineLanguageWord("Blî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Lead"}, -- source gives the German "Blei" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Blîo"},
	Gender = "neuter"
})

DefineLanguageWord("Bluome", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Bluomo"},
	Gender = "masculine"
})

DefineLanguageWord("Bluost", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Blossom"}, -- apparently, but it is not clear from the source
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "feminine"
})

DefineLanguageWord("Brant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136; Source: http://www.cnrtl.fr/definition/brand
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Blaze", "Burning Log", "Sword", "Brand", "Sparkling Sword"}, -- Fick gives the German "Feuersbrunst, brennendes Holzscheit, Schwert", while the TLFi gives the French "tison" and "épée étincelante"
	DerivesFrom = {"old-high-german", "noun", "Brant"}, -- as given by Fick and the TLFi
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Brennen", { -- causative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"old-high-german", "verb", "Brennen"}
})

DefineLanguageWord("Brinnen", { -- strong verb; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Burn", "Glow"}, -- source gives the German "brennen, glühen" as the meaning
	DerivesFrom = {"old-high-german", "verb", "Brinnan"}
})

DefineLanguageWord("Brort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-high-german", "noun", "Brort"}
})

DefineLanguageWord("Brücke", { -- source also gives the alternative form "Brügge"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"old-high-german", "noun", "Prucca"}
})

DefineLanguageWord("Brunst", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Burning", "Fire"}, -- source gives the German "Brennen, Brand"
	DerivesFrom = {"old-high-german", "noun", "Brunst"},
	Gender = "feminine"
})

DefineLanguageWord("Burc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Fortified Place", "Castle", "Palace", "City", "Town"}, -- source gives "befestigter Ort, Burg, Schloß, Stadt" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Burg"},
	Gender = "feminine"
})

DefineLanguageWord("Busch", { -- source also gives the alternative forms "Bosch" and "Bosche"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 143.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Bush", "Tuft", "Bouquet"}, -- source gives the German "Busch, Büschel, Strauß" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Busc"},
	Gender = "masculine"
})

DefineLanguageWord("Darm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Daram"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Derme"
	}
})

DefineLanguageWord("Diet", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk, Leute" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Diota"}, -- apparently
	Gender = "feminine" -- alternatively also masculine or neuter
})

DefineLanguageWord("Diet", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Person", "Fellow"}, -- source gives the German "Mensch, Kerl" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Diot"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Dorf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the German "Dorf" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Dorf"},
	Gender = "neuter"
})

DefineLanguageWord("Êr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Ore", "Iron"}, -- source gives the German "Erz, Eisen" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Êr"},
	Gender = "neuter"
})

DefineLanguageWord("Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Prickle", "Stick for Driving Animals"},
	DerivesFrom = {"old-high-german", "noun", {"Rod", "Prickle"}, "Gart"},
	Gender = "masculine"
})

DefineLanguageWord("Glanst", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Shine"}, -- source gives the German "Glanz" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Glanz"},
	Gender = "masculine"
})

DefineLanguageWord("Glanz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Shine", "Glow"}, -- source gives the German "Glanz, Schimmer" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Glanz"},
	Gender = "masculine"
})

DefineLanguageWord("Glanz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Bright", "Shining"}, -- source gives the German "hell, glänzend" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Glanz"}
})

DefineLanguageWord("Glinzen", { -- strong verb; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Shine"}, -- source gives the German "glänzen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Glent"}
})

DefineLanguageWord("Golt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Gold"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Goldes"
	},
})

DefineLanguageWord("Got", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"God"}, -- source gives the German "Gott" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Got"}
})

DefineLanguageWord("Grâ", { -- source also gives the alternative forms "grâw", "grô" and "grôw"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Grâ"}
})

DefineLanguageWord("Grīs", { -- Fick gives "Grîs" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79; Source: http://www.cnrtl.fr/definition/gris
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Gray"}, -- the TLFi gives the French "gris" as the meaning; Fick gives the German "grau, greis" instead
	DerivesFrom = {"old-high-german", "adjective", "Grîs"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
})

DefineLanguageWord("Grüene", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Green"}, -- source gives the German "grün" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Gruoni"}
})

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Neck", "Throat", "Elongated Ridge"}, -- source gives the German "Hals" and "länglicher Bergrücken" as the meanings
	DerivesFrom = {"old-high-german", "noun", "Hals"},
	Gender = "masculine"
})

DefineLanguageWord("Halsberc", { -- Source: http://www.cnrtl.fr/definition/haubert
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Neck Cover"} -- source gives the French "ce qui protège le cou" as the meaning
})

DefineLanguageWord("Hart", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Strict", "Hefty", "Hard"}, -- source gives the German "streng, heftig, hart" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Hart"}
})

DefineLanguageWord("Heilec", { -- source also gives the alternative form "heilic"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"old-high-german", "adjective", "Heilag"}
})

DefineLanguageWord("Heim", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Home", "House"}, -- source gives the German "Haus, Heimat" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Heim"},
	Gender = "neuter"
})

DefineLanguageWord("Heime", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Home", "House"}, -- source gives the German "Haus, Heimat" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Heima"},
	Gender = "feminine"
})

DefineLanguageWord("Heime", { -- dative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "middle-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "zu Hause" as the meaning
	DerivesFrom = {"old-high-german", "adverb", "Heimi"},
	Dative = "Heime"
})

DefineLanguageWord("Heimen", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 52-53.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Take Home", "Marry"}, -- source gives the German "heimführen, heiraten" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Heim"} -- apparently, but unclear
})

DefineLanguageWord("Heimen", { -- source also gives the alternative form "heimenen"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "middle-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "zu Hause" as the meaning
	DerivesFrom = {"old-high-german", "adverb", "Heimina"} -- apparently
})

DefineLanguageWord("Heimisch", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Domestic"}, -- source gives the German "heimisch" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Heimisc"}
})

DefineLanguageWord("Heira", { -- accusative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "middle-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "nach Hause" as the meaning
	DerivesFrom = {"old-high-german", "adverb", "Heira"}, -- apparently
	Accusative = "Heira"
})

DefineLanguageWord("Helm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Helm", "Helmet"}, -- source gives the German "Helm"
	DerivesFrom = {"old-high-german", "noun", "Helm"}
})

DefineLanguageWord("Hert", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Herd"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Herdes"
	}
})

DefineLanguageWord("Hôch", { -- source also gives the inflected form "hôher"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"High"}, -- source gives the German "hoch" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Hōh"}
})

DefineLanguageWord("Hoger", { -- (apparently) a nominalized adjective; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Hump"}, -- source gives the German "Buckel" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Hōh"} -- apparently, but it is not entirely clear from the source
})

DefineLanguageWord("Horn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Horn", "Preeminent Peak"}, -- source (apparently) gives the German "Horn, hervorragende Spitze"
	DerivesFrom = {"old-high-german", "noun", "Horn"},
	Gender = "neuter"
})

DefineLanguageWord("Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Treasure"},
	DerivesFrom = {"old-high-german", "noun", "Hort"}
})

DefineLanguageWord("Houc", { -- "strong"? Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Hill"}, -- source gives the German "Hügel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hauga"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Houges"
	}
})

DefineLanguageWord("Îsern", { -- source also gives the alternative form "Îsen"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Îsarn"},
	Gender = "neuter"
})

DefineLanguageWord("Kien", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Fir", "Spruce"," Fir Splinter", "Fir Torch", "Spruce Splinter", "Spruce Torch"},
	Gender = "masculine"
})

DefineLanguageWord("Lant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"old-high-german", "noun", "Lant"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Landes"
	}
})

DefineLanguageWord("Lēren", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Lernen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Lôt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Pourable Metal", "Cast Metal Weight"}, -- source gives the German "gießbares Metall, gegossenes Metallgewicht" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Lauda"},
	Gender = "neuter"
})

DefineLanguageWord("Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"old-high-german", "noun", "Marc"},
	NumberCaseInflections = {
		"singular", "genitive", "Marges"
	}
})

DefineLanguageWord("Mare", { -- source also gives the alternative form "March"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Sign"}, -- source gives the German "Zeichen"
	DerivesFrom = {"proto-germanic", "noun", "Marka"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Markes"
	}
})

DefineLanguageWord("Marke", { -- source also gives the alternative form "Mark"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Border", "Borderland", "District", "Forest"}, -- source gives the German "Grenze, Grenzland, Bezirk, Wald"
	DerivesFrom = {"old-high-german", "noun", "Marca"},
	Gender = "feminine"
})

DefineLanguageWord("Marke", { -- Fick also gives the alternative form "Mark", while the TLFi also gives the alternative forms "Marc" and "March"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160; Source: http://www.cnrtl.fr/definition/marc
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Half Silver Pound", "Half Gold Pound"}, -- Fick gives the German "halbes Pfund Silbers", while the TLFi gives the French "moitié d'une livre d'or ou d'argent"
	DerivesFrom = {"proto-germanic", "noun", {"Mark", "Half Pound", "Half Silver Pound"}, "Markô"}, -- as given by Fick
	Gender = "feminine" -- as given by Fick
})

DefineLanguageWord("Meise", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- source gives the German "Meise" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Meisa"},
	Gender = "feminine"
})

DefineLanguageWord("Miete", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Payment", "Reward", "Bribe"},
	DerivesFrom = {"old-high-german", "noun", "Mēta"},
	Gender = "feminine"
})

DefineLanguageWord("Nare", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Salvation", "Rescue", "Nourishment", "Sustenance"},
	Gender = "feminine"
})

DefineLanguageWord("Nerigen", { -- source also gives alternative forms "Neren" and "Nern"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Heal", "Sustain the Life of", "Save", "Protect", "Nourish"}
})

DefineLanguageWord("Niuwe", { -- source also gives the alternative form "niwe"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"New"}, -- source gives the German "neu" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Niuwi"}
})

DefineLanguageWord("Nuz̨", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Nut"}, -- source gives the German "Nuß"
	DerivesFrom = {"old-high-german", "noun", "Hnuz̨"},
	Gender = "feminine"
})

DefineLanguageWord("Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Point", "Corner", "Edge of a Part", "Edge of a Piece", "Edge of a Small Coin"},
	DerivesFrom = {"old-high-german", "noun", "Ort"},
	Gender = "masculine"
})

DefineLanguageWord("Ôsten", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"East"}, -- source gives the German "Osten" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Ôstan"},
	Gender = "masculine" -- can also be neuter
})

DefineLanguageWord("Ôsten", { -- source gives "Ôsten(e)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "middle-high-german",
	Type = "adverb",
	Meanings = {"From the East", "In the East", "To the East"}, -- source gives the German "von Osten, im Osten, nach Osten" as the meaning
	DerivesFrom = {"old-high-german", "adverb", "Ôstana"}
})

DefineLanguageWord("Rât", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Counsel", "Council", "Advice", "Indoctrination", "Consultation", "Consideration", "Resolution", "Intention", "Attack", "Provision", "Supply"}, -- source gives the German "Rat, Ratschlag, Belehrung, Beratung, Überlegung, Entschluß, Absicht, Anschlag, Vorsorge, Vorrat"
	DerivesFrom = {"old-high-german", "noun", "Rât"},
	Gender = "masculine"
})

DefineLanguageWord("Rîche", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"Powerful", "Notable", "Rich", "Magnificent", "Splendid"}, -- source gives the German "mächtig, vornehm, reich, prächtig, herrlich" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Rîhhi"}
})

DefineLanguageWord("Rünne", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Storm Surge"},
	Gender = "feminine"
})

DefineLanguageWord("Silber", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Silabar"},
	Gender = "neuter"
})

DefineLanguageWord("Smide", { -- source also gives the alternative form "smitte"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Smiththa"}
})

DefineLanguageWord("Smit", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 263-264.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Smith", "Skilled Metalworker"}, -- source gives the German "Schmied, (kunstfertiger) Arbeiter in Metall"
	DerivesFrom = {"old-high-german", "noun", "Smid"},
	Gender = "masculine"
})

DefineLanguageWord("Sumer", { -- source also gives the alternative form "Summer"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Summer"}, -- source gives the German "Sommer" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Sumar"},
	Gender = "masculine"
})

DefineLanguageWord("Sund", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"South"}, -- source gives the German "Süden" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Sundar"}
})

DefineLanguageWord("Valz", { -- source also gives the alternative forms "valze" and "velze"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Joint", "Indentation of the Sword Blade"}, -- source gives the German "Fuge, rinnenartige Vertiefung an der Schwertklinge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Falta"},
	Gender = "masculine"
})

DefineLanguageWord("Viur", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Fuir"},
	Gender = "neuter"
})

DefineLanguageWord("Vride", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Peace", "Protection", "Security", "Enclosure"}, -- source gives the German "Friede, Schutz, Sicherheit, Einfriedigung" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Fridu"},
	Gender = "masculine"
})

DefineLanguageWord("Vurt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 120-121.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Ford", "Path", "Riverbed"}, -- source gives the German "Furt, Weg, Flußbett" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Furt"},
	Gender = "masculine"
})

DefineLanguageWord("Warb", { -- Source: http://www.cnrtl.fr/definition/barguigner
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Turn", "Affair", "Trade"}, -- source gives the French "action de tourner; affaire, métier" as the meaning
	DerivesFrom = {"old-high-german", "verb", "Hwerfan"} -- related to it according to the source
})

DefineLanguageWord("Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Woad"},
	Gender = "masculine"
})

DefineLanguageWord("Wîz̨", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "middle-high-german",
	Type = "adjective",
	Meanings = {"White"}, -- source gives the German "weiß" as the meaning
	DerivesFrom = {"old-high-german", "adjective", "Wîz̨"}
})

DefineLanguageWord("Wolf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"old-high-german", "noun", "Wolf"}
})

DefineLanguageWord("Wülpe", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Female Wolf"}, -- source gives the German "Wölfin"
	DerivesFrom = {"old-high-german", "noun", "Wulpa"}
})

DefineLanguageWord("Wurm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Worm", "Maggot", "Adder", "Viper", "Serpent"}, -- source gives the German "Wurm, Made, Natter, Schlange" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Wurm"},
	Gender = "masculine"
})

DefineLanguageWord("Zwirn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1-2, 6.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Doubly Spun Twine"}
})

DefineLanguageWord("Zwirnen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Twist Together Twice", "Twine"}
})
