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
--      keystrokes.lua - All keystroke helps for the menus.
--
--      (c) Copyright 2002-2004 by Jimmy Salmon.
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

--=============================================================================
--	Reset keystroke help list to empty
--
--	(reset-keystroke-help)
--
ResetKeystrokeHelp()
--
--	Add a keystroke help.
--
--	AddKeystrokeHelp("key", "description")
--
--AddKeystrokeHelp("Alt-B", "- toggle expand map")
AddKeystrokeHelp("Alt-C", "- center on selected unit")
AddKeystrokeHelp("Alt-H", "- help menu")
AddKeystrokeHelp("Alt-I", "- find idle worker")
AddKeystrokeHelp("Ctrl-L", "- return to previous map layer")
AddKeystrokeHelp("Alt-M", "- game menu")
AddKeystrokeHelp("Ctrl-M", "- mute music")
AddKeystrokeHelp("Ctrl-P", "- pause game")
AddKeystrokeHelp("Alt-Q", "- select entire army")
AddKeystrokeHelp("Ctrl-Q", "- quit to main menu")
AddKeystrokeHelp("Alt-R", "- restart scenario")
AddKeystrokeHelp("Ctrl-S", "- mute sound")
AddKeystrokeHelp("Ctrl-T", "- track unit")
AddKeystrokeHelp("Alt-V", "- next view port")
AddKeystrokeHelp("Ctrl-V", "- previous view port")
AddKeystrokeHelp("Alt-W", "- select all visible units of the same type as the currently selected one")
AddKeystrokeHelp("Alt-WW", "- select all units of the same type as the currently selected one")
AddKeystrokeHelp("Alt-X", "- quit game")
AddKeystrokeHelp("+", "- increase game speed")
AddKeystrokeHelp("-", "- decrease game speed")
AddKeystrokeHelp("PAUSE", "- pause game")
AddKeystrokeHelp("F11", "- make screen shot")
AddKeystrokeHelp("ENTER", "- write a message")
AddKeystrokeHelp("SPACE", "- goto last event")
AddKeystrokeHelp("TAB", "- toggle minimap mode")
AddKeystrokeHelp("Shift-TAB", "- toggle minimap zoom")
AddKeystrokeHelp("^", "- select nothing")
AddKeystrokeHelp(".", "- find idle worker")
AddKeystrokeHelp("#", "- select group")
AddKeystrokeHelp("##", "- center on group")
AddKeystrokeHelp("Ctrl-#", "- define group")
AddKeystrokeHelp("Shift-#", "- add to group")
AddKeystrokeHelp("Alt-#", "- add to alternate group")
AddKeystrokeHelp("F2-F4", "- recall map position")
AddKeystrokeHelp("Shift F2-F4", "- save map postition")
AddKeystrokeHelp("F5", "- game options")
AddKeystrokeHelp("F7", "- sound options")
AddKeystrokeHelp("F8", "- speed options")
AddKeystrokeHelp("F9", "- preferences")
AddKeystrokeHelp("F10", "- game menu")
AddKeystrokeHelp("BACKSPACE", "- game menu")
AddKeystrokeHelp("Alt-S", "- save game")
AddKeystrokeHelp("Alt-L", "- load game")
