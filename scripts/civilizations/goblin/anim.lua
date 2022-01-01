--
-- Goblin Spearman
--

local GoblinSpearmanStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 0", "label no-rotate", "wait 1",}
local GoblinSpearmanDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-goblin-spearman", {
	Still = GoblinSpearmanStill,
	Move = UnitMove,
	Attack = {
		"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "attack", "wait 5", "frame 0", "wait 10",
		"frame 0", "unbreakable end", "wait 1",
	},
	Death = GoblinSpearmanDeath
})

--
-- Goblin Swordsman / Greebo
--

local GoblinSwordsmanStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 0", "label no-rotate", "wait 1",}

DefineAnimations("animations-goblin-swordsman", {
	Still = GoblinSwordsmanStill,
	Move = UnitMove,
	Attack = {
		"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "attack", "wait 5", "frame 0", "wait 10",
		"frame 0", "unbreakable end", "wait 1",
	},
	Death = UnitDeath
})

--
-- Goblin Thief
--

DefineAnimations("animations-goblin-thief", {
	Still = GoblinSwordsmanStill,
	Move = UnitMove,
	Attack = {
		"unbreakable begin",
		"random-goto 25 slashing_attack", "goto thrusting_attack",
		"label thrusting_attack",
		"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3", "frame 40", "goto end",
		"label slashing_attack",
		"frame 70", "wait 3", "frame 75", "wait 3", "frame 80", "wait 3", "frame 85", "goto end",
		"label end",
		"attack", "wait 5", "frame 0", "wait 10", "frame 0",
		"unbreakable end", "wait 1",
	},
	Death = UnitDeath
})

local GoblinRogueStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 0", "label no-rotate", "wait 1",}
DefineAnimations("animations-goblin-rogue", {
	Still = GoblinRogueStill,
	Move = UnitMove,
	Attack = UnitMeleeAttackNew,
	Death = WorkerDeath
})


--
-- Goblin Archer
--

local GoblinArcherStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
	"label taunt", "frame 70", "wait 6", "frame 75", "wait 6", "frame 70", "wait 6", "frame 75", "wait 6", "frame 70", "wait 6", "frame 75", "wait 6", "frame 0",
	"label no-rotate", "wait 1",}

DefineAnimations("animations-goblin-archer", {
	Still = GoblinArcherStill,
	Move = UnitMove,
	--[[
	Attack = {
		"unbreakable begin",
		"frame 80", "wait 3", "frame 85", "wait 3", "frame 90", "wait 3",
		"frame 95", "attack", "wait 5", "frame 0", "wait 10",
		"frame 0",
		"unbreakable end", "wait 1",
	},
	--]]
	Attack = {
		"unbreakable begin",
		"frame 25", "wait 5", "frame 30", "wait 5", "frame 35", "attack", "sound bow", "wait 3",
		"frame 40", "wait 3", "frame 45", "wait 10", "frame 50", "wait 13", "frame 50",
		"unbreakable end", "wait 1",
	},
	Death = ArcherDeath
})

--
-- Goblin War Machine
--

DefineAnimations("animations-goblin-war-machine", {
	Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
	Move = UnitWheeledMove,
	Attack = {
		"unbreakable begin", "frame 15", "attack", "sound catapult-attack", "wait 2",
		"frame 10", "wait 41", "frame 15", "wait 6", "frame 15", "wait 100", "frame 0", "wait 50", "frame 0", "unbreakable end", "wait 1",
	},
	SpellCast = {
		"unbreakable begin",
		"if-var s.spell-war-machine-spear-attack == 1 spear_attack",
		"goto end",
		"label spear_attack",
		"frame 0", "wait 8",
		"frame 20", "wait 2",
		"attack", "sound spear-attack",
		"frame 25", "wait 6",
		"frame 20", "wait 2",
		"frame 0", "wait 6",
		"goto end",
		"label end",
		"unbreakable end",
		"wait 1",
	}
})

--
-- Goblin Glider
--
 
DefineAnimations("animations-goblin-glider", {
	Still = {"frame 0", "wait 4", "frame 5", "wait 4",},
	Move = {
		"unbreakable begin", "frame 0", "move 4", "wait 2", "frame 0",
		"move 3", "wait 1",
		"frame 0", "move 3", "wait 1", "frame 0", "move 3", "wait 1",
		"frame 5", "move 3", "wait 1", "frame 5", "move 4", "wait 2",
		"frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
		"frame 0", "move 3", "wait 1", "frame 0", "move 3", "unbreakable end",
		"wait 1",
	},
	Attack = {"unbreakable begin", "frame 0", "unbreakable end", "wait 1",},
	Death = {"unbreakable begin", "frame 10", "wait 3", "frame 15", "wait 5", "frame 20", "wait 5", "unbreakable end", "wait 1",}
})
 

--
-- Goblin Banner
--

DefineAnimations("animations-goblin-banner", {
	Still = {
		"if-var v.Variation.Value == 0 variation_1",
		"if-var v.Variation.Value == 1 variation_2",
		"label variation_1", "frame 0", "wait 4", "random-goto 1 variation_1_flap", "random-goto 99 end",
		"label variation_1_flap", "frame 1", "wait 6", "frame 0", "wait 6", "frame 2", "wait 6", "frame 0", "goto end",
		"label variation_2", "frame 7", "wait 4", "random-goto 1 variation_2_flap", "random-goto 99 end",
		"label variation_2_flap", "frame 8", "wait 6", "frame 7", "wait 6", "frame 9", "wait 6", "frame 7", "goto end",
		"label end", "wait 1",
	},
	Death = {
		"unbreakable begin",
		"if-var v.Build.Value < v.Build.Max end",
		"if-var v.Variation.Value == 0 variation_1",
		"if-var v.Variation.Value == 1 variation_2",
		"label variation_1", "frame 3", "wait 3", "frame 4", "wait 3", "frame 5", "wait 3", "frame 6", "wait 100", "frame 6", "goto end",
		"label variation_2", "frame 10", "wait 3", "frame 11", "wait 3", "frame 12", "wait 3", "frame 13", "wait 100", "frame 13", "goto end",
		"label end", "unbreakable end", "wait 1",
	}
})
