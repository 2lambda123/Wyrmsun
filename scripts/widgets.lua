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
--      widgets.lua - Define the widgets
--
--      (c) Copyright 2004-2022 by Jimmy Salmon and Andrettin
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

DefineButtonStyle("main-dwarf", {
	Size = {99 * get_scale_factor(), 13 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {50 * get_scale_factor(), 0},
	Default = {
		File = "interface/dwarven/button_thinnest_medium_normal.png", Size = {99, 13}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/dwarven/button_thinnest_medium_pressed.png", Size = {99, 13}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {51 * get_scale_factor(), 1 * get_scale_factor()},
	},
})

DefineButtonStyle("network-dwarf", {
	Size = {80 * get_scale_factor(), 20 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {40 * get_scale_factor(), 4 * get_scale_factor()},
	Default = {
		File = "interface/dwarven/button_thin_small_normal.png", Size = {80, 20}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/dwarven/button_thin_small_pressed.png", Size = {80, 20}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {42 * get_scale_factor(), 6 * get_scale_factor()},
	},
})

DefineButtonStyle("main-germanic", {
	Size = {99 * get_scale_factor(), 13 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {50 * get_scale_factor(), 0},
	Default = {
		File = "interface/germanic/button_thinnest_medium_normal.png", Size = {99, 13}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/germanic/button_thinnest_medium_pressed.png", Size = {99, 13}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {51 * get_scale_factor(), 1 * get_scale_factor()},
	},
})

DefineButtonStyle("network-germanic", {
	Size = {80 * get_scale_factor(), 20 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {40 * get_scale_factor(), 4 * get_scale_factor()},
	Default = {
		File = "interface/germanic/button_thin_small_normal.png", Size = {80, 20}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/germanic/button_thin_small_pressed.png", Size = {80, 20}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {42 * get_scale_factor(), 6 * get_scale_factor()},
	},
})

DefineButtonStyle("main-gnome", {
	Size = {99 * get_scale_factor(), 13 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {50 * get_scale_factor(), 0},
	Default = {
		File = "interface/dwarven/button_thinnest_medium_normal.png", Size = {99, 13}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/dwarven/button_thinnest_medium_pressed.png", Size = {99, 13}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {51 * get_scale_factor(), 1 * get_scale_factor()},
	},
})

DefineButtonStyle("network-gnome", {
	Size = {80 * get_scale_factor(), 20 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {40 * get_scale_factor(), 4 * get_scale_factor()},
	Default = {
		File = "interface/default/button_thin_small_normal.png", Size = {80, 20}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/default/button_thin_small_pressed.png", Size = {80, 20}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {42 * get_scale_factor(), 6 * get_scale_factor()},
	},
})

DefineButtonStyle("main-goblin", {
	Size = {99 * get_scale_factor(), 13 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {50 * get_scale_factor(), 0},
	Default = {
		File = "interface/goblin/button_thinnest_medium_normal.png", Size = {99, 13}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/goblin/button_thinnest_medium_pressed.png", Size = {99, 13}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {51 * get_scale_factor(), 1 * get_scale_factor()},
	},
})

DefineButtonStyle("network-goblin", {
	Size = {80 * get_scale_factor(), 20 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {40 * get_scale_factor(), 4 * get_scale_factor()},
	Default = {
		File = "interface/goblin/button_thin_small_normal.png", Size = {80, 20}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/goblin/button_thin_small_pressed.png", Size = {80, 20}, Frame = 0,
		TextNormalColor = "yellow",
		TextPos = {42 * get_scale_factor(), 6 * get_scale_factor()},
	},
})

DefineButtonStyle("icon", {
	Size = {46 * get_scale_factor(), 38 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "yellow",
	TextReverseColor = "yellow",
	TextAlign = "Right",
	TextPos = {46 * get_scale_factor(), 26 * get_scale_factor()},
	Default = {
	},
	Hover = {
		TextNormalColor = "yellow"
	},
	Clicked = {
		TextNormalColor = "yellow"
	},
})

DefineButtonStyle("world-earth", {
	Size = {19 * get_scale_factor(), 19 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {10 * get_scale_factor(), 0},
	Default = {
		File = "interface/germanic/radio_normal_selected.png", Size = {19, 19}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/germanic/radio_pressed_selected.png", Size = {19, 19}, Frame = 0
	}
})

DefineButtonStyle("world-jotunheim", {
	Size = {19 * get_scale_factor(), 19 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {10 * get_scale_factor(), 0},
	Default = {
		File = "interface/goblin/radio_normal_selected.png", Size = {19, 19}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/goblin/radio_pressed_selected.png", Size = {19, 19}, Frame = 0
	}
})

DefineButtonStyle("world-nidavellir", {
	Size = {19 * get_scale_factor(), 19 * get_scale_factor()},
	Font = "game",
	TextNormalColor = "white",
	TextReverseColor = "yellow",
	TextAlign = "Center",
	TextPos = {10 * get_scale_factor(), 0},
	Default = {
		File = "interface/dwarven/radio_normal_selected.png", Size = {19, 19}, Frame = 0,
	},
	Hover = {
		TextNormalColor = "yellow",
	},
	Clicked = {
		File = "interface/dwarven/radio_pressed_selected.png", Size = {19, 19}, Frame = 0
	}
})
