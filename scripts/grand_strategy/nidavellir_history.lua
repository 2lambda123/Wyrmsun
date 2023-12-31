if (GrandStrategyYear >= -2970) then -- estimated date
	GrandStrategyEvents.TheMeadOfWisdom = nil -- should be placed at an earlier date
	GrandStrategyEvents.TheTreasuresOfSvarinshaug = nil -- should be placed at an earlier date

	GrandStrategyEvents.TheNecklaceOfTheBrisings = nil -- should be placed at an earlier date
	SetProvinceUnitQuantity("Aurvang", "unit-dwarven-steelclad", 0) -- bandits rooted out
	SetProvinceUnitQuantity("Aurvang", "unit-dwarven-axefighter", 0)
	SetProvinceUnitQuantity("Aurvang", "unit-goblin-spearman", 6) -- place some goblins in Aurvang after the dwarven bandits are gone
	SetProvinceUnitQuantity("Aurvang", "unit-goblin-archer", 3)
end

if (GrandStrategyYear >= -1) then
	SetProvinceOwner("Caverns of Chaincolt", "dwarf", "norlund_clan")
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-goblin-spearman", 0)
--	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 4) -- Neglur, Glinar, Kuhnar, Theganli
--	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-scout", 1) -- Noiraran
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-axefighter", 4) -- 4 Dwarven Guardsmen (5 if easy mode)
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 2) -- Neglur, Glinar
	SetWorldMapResourceProspected("gold", 30, 12, true)
	SetProvinceOwner("Shorbear Hills", "dwarf", "shorbear_clan")
	SetProvinceUnitQuantity("Shorbear Hills", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 1) -- Glonoin
	SetWorldMapResourceProspected("gold", 34, 14, true)
	SetProvinceOwner("Southern Tunnels", "dwarf", "shinsplitter_clan")
	SetProvinceUnitQuantity("Southern Tunnels", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", 3) -- Glildur, Glindur, Kalnar
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 5) -- Lyndar, Gaenlar, Glinan, Crintil, Aendan
	SetWorldMapResourceProspected("gold", 32, 13, true)
	
	SetProvinceHero("Caverns of Chaincolt", "Durstorn", 2) -- Durstorn was already present when the conflict with Pypo over the Brown Hills happened
	SetProvinceHero("Caverns of Chaincolt", "Baglur", 2) -- Baglur was already present when the conflict with Pypo over the Brown Hills happened
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", 2) -- Thursagan could be in the Caverns of Chaincolt at this time
end

if (GrandStrategyYear >= 25) then -- at this time Baglur was at the Caverns of Chaincolt gate, Thursagan was living in the Northern Wastelands and Durstorn was the chief of the Norlund clan
	SetProvinceHero("Northern Wastelands", "Thursagan", 2) -- by this point, Thursagan had gone away to the north
	GrandStrategyEvents.TheSagesDeparture = nil
end

if (GrandStrategyYear > 25) then
	GrandStrategyEvents.StrikeABargain = nil
	GrandStrategyEvents.ABargainIsStruckShinsplitterClan = nil
	GrandStrategyEvents.ClosingTheGates = nil
	GrandStrategyEvents.ClosingTheGatesShinsplitterClan = nil
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 1)
	SetFactionDiplomacyState("dwarf", "norlund_clan", "dwarf", "shinsplitter_clan", "war")
	ChangeFactionResource("gnome", "untersberg", "copper", -10000) -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth 200% of copper)
	ChangeFactionResource("dwarf", "norlund_clan", "copper", 10000) -- 5000 silver
	ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
end

if (GrandStrategyYear >= 27) then -- time it took for Rugnur's party to travel to the Northern Wastelands and come back
	GrandStrategyEvents.SearchingForTheRunecrafter = nil
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", 2)
--	ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-steelclad", 2) -- Thursagan joined and brought Kinan and Rynan, two runecrafters-in-training
	SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman") / 2) -- halve enemies in the northern wastelands (deaths due to combat with Rugnur's dwarves)
	SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer") / 2)
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit_dwarven_gryphon_rider", 2) -- two gryphon riders joined from the travel to the Northern Wastelands
end

if (GrandStrategyYear >= 29) then
	GrandStrategyEvents.GatheringMaterials = nil
	ChangeFactionResource("dwarf", "norlund_clan", "coal", 20000) -- Rugnur's party returned from the Eastern Mines in 29 AD
--	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman") / 2)
	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", 12) -- to prevent the Norlunds expanding here too soon
	SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer", 4)
	SetWorldMapResourceProspected("gold", 39, 6, true) -- Rugnur and his companions found the location of the gold mines in the Eastern Mines

	--[[
	SetProvinceOwner("Shorbear Hills", "dwarf", "norlund_clan") -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan (Norlund Clan)
	SetProvinceHero("Shorbear Hills", "Rugnur", 2)
	SetProvinceHero("Shorbear Hills", "Baglur", 2)
	SetProvinceHero("Shorbear Hills", "Durstorn", 2)
	SetProvinceHero("Shorbear Hills", "Thursagan", 2)
	--]]
	KillGrandStrategyHero("Glonoin")
end

if (GrandStrategyYear >= 35) then
	GrandStrategyEvents.HillsOfTheShorbearClan = nil
	GrandStrategyEvents.HillsOfTheShorbearClanShinsplitterClan = nil
	GrandStrategyEvents.HillsOfTheShorbearClanShorbearClan = nil
	SetProvinceOwner("Shorbear Hills", "dwarf", "shinsplitter_clan") -- Shorbear Hold abandoned in 35 AD by Rugnur's and Durstorn's Clan (Norlund Clan), while the Shinsplitter forces were sieging them
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-axefighter", 0)
	SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 0)
	--[[
	SetProvinceHero("Caverns of Flame", "Rugnur", 2)
	SetProvinceHero("Caverns of Flame", "Baglur", 2)
	SetProvinceHero("Caverns of Flame", "Thursagan", 2)
	--]]
	SetProvinceHero("Shorbear Hills", "Durstorn", 0) -- Durstorn is killed in a conflict between him and other members of the clan
	MercenaryGroups.unit_surghan_mercenary_steelclad = nil
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 0) -- gnomish recruit returns to Untersberg
	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit_dwarven_gryphon_rider", 0) -- gryphon riders return to the Northern Wastelands
end

if (GrandStrategyYear >= 40) then
	SetProvinceHero("Caverns of Chaincolt", "Rugnur", 0) -- Rugnur, Baglur and Thursagan die at the Caverns of Flame
	SetProvinceHero("Caverns of Chaincolt", "Baglur", 0)
	SetProvinceHero("Caverns of Chaincolt", "Thursagan", 0)
	ChangeFactionResource("dwarf", "norlund_clan", "coal", -20000) -- Scepter of Fire crafted
	ChangeFactionResource("dwarf", "norlund_clan", "copper", 10000) -- payment for the crafting of the Scepter
	ChangeFactionResource("gnome", "untersberg", "copper", -10000) -- payment for the crafting of the Scepter
	SetProvinceOwner("Shorbear Hills", "dwarf", "norlund_clan") -- Shorbear Hold ceded by the Shinsplitters to the Norlunds and peace established
	SetFactionDiplomacyState("dwarf", "norlund_clan", "dwarf", "shinsplitter_clan", "peace")
end

if (GrandStrategyYear >= 389) then
	SetProvinceOwner("Peaceful Valley", "", "") -- Lggi Tribe destroyed
	SetProvinceCivilization("Peaceful Valley", "")
	SetProvinceUnitQuantity("Peaceful Valley", "unit-goblin-spearman", 0)
end

if (GrandStrategyYear >= 400) then
	SetProvinceOwner("Kal Kartha", "dwarf", "kal_kartha") -- The Lordship of Kal Kartha was founded around 400 AD
	SetProvinceUnitQuantity("Kal Kartha", "unit-gnomish-recruit", 0)
	SetWorldMapResourceProspected("gold", 46, 5, true)

	SetProvinceOwner("Lyr", "dwarf", "lyr") -- The Lordship of Lyr was founded around the same time as the other lordships
	SetProvinceUnitQuantity("Lyr", "unit-dwarven-axefighter", 0)
	SetWorldMapResourceProspected("gold", 51, 15, true)
	
	SetProvinceOwner("Joruvellir", "dwarf", "joruvellir") -- The Lordship of Joruvellir may have been founded at the same time as the other lordships
	SetProvinceUnitQuantity("Joruvellir", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Joruvellir", "unit-goblin-archer", 0)
end

if (GrandStrategyYear >= 500) then
	-- The Shinsplitter clan took over the Highbrook Pass around this time
	SetProvinceUnitQuantity("Highbrook Pass", "unit-goblin-spearman", 0)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-goblin-archer", 0)
	SetProvinceUnitQuantity("Highbrook Pass", "unit-dwarven-axefighter", 6) -- six dwarven ulfserkers
	SetProvinceUnitQuantity("Highbrook Pass", "unit-dwarven-thane", 1) -- Stalrag
	SetWorldMapResourceProspected("gold", 35, 10, true)
end

if (GrandStrategyYear >= 534) then
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-stalwart", 4) -- 4 Dwarven Stalwarts
	SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 1) -- Hamel
end

if (GrandStrategyYear >= 550) then
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-axefighter", 2) -- 2 Masked Ulfserkers in Karrag's court
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-steelclad", 3) -- Dulcatulos, 2 Masked Steelclads in Karrag's court
	SetProvinceUnitQuantity("Kal Kartha", "unit-dwarven-thane", 4) -- Karrag
end