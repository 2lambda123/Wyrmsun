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
--      fonts.lua - Define the used fonts.
--
--      (c) Copyright 2000-2004 by Lutz Sammer and Jimmy Salmon
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
--	FIXME: only yellow, white, and grey are correct.

DefineFontColor("blue",
  {    0,   0,   0,	-- 0
      12,  72, 204,	-- 1
      12,  72, 204,	-- 1
      12,  72, 204,	-- 1
      12,  72, 204,	-- 1
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("magenta",
  {    0,   0,   0,	-- 0
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("cyan",
  {    0,   0,   0,	-- 0
     248, 140, 140,	-- 224
     248, 140, 140,	-- 224
     248, 140, 140,	-- 224
     248, 140, 140,	-- 224
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("white-old",
  {    0,   0,   0,	-- 0
     252, 248, 240,	-- 246
     252, 248, 240,	-- 246
     159, 159, 159,	-- 246
     108, 108, 108,	-- 104
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("light-red",
  {    0,   0,   0,	-- 0
     164,   0,   0,	-- 208
     164,   0,   0,	-- 208
     164,   0,   0,	-- 208
     164,   0,   0,	-- 208
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("light-green",
  {    0,   0,   0,	-- 0
     137, 232,   0,	-- 216
     112, 189,   0,	-- 216
       0,   0,   0,	-- 216
       0,   0,   0,	-- 216
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("light-yellow",
  {  252, 248, 240,	-- 246
     244, 224,  32,	-- 200
     208, 192,  28,	-- 199
     168, 140,  16,	-- 197
      92,  48,   0,	-- 192
       0,   0,   0,	-- 239
     108, 108, 108})	-- 104
DefineFontColor("light-magenta",
  {    0,   0,   0,	-- 0
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("light-cyan",
  {    0,   0,   0,	-- 0
     248, 140,  20,	-- 224
     248, 140,  20,	-- 224
     248, 140,  20,	-- 224
     248, 140,  20,	-- 224
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("light-grey",
  {    0,   0,   0,	-- 0
     192, 192, 192,	-- 111
     180, 180, 180,	-- 110
     168, 168, 168,	-- 109
     108, 108, 108,	-- 104
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0

DefineFontColor("violet",
  {    0,   0,   0,	-- 0
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
     152,  72, 176,	-- 220
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("orange",
  {    0,   0,   0,	-- 0
     248, 140,  20,	-- 224
     248, 140,  20,	-- 224
     248, 140,  20,	-- 224
     248, 140,  20,	-- 224
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0
DefineFontColor("full-red",
  {    0,   0,   0,	-- 0
     255, 0,  0,	-- 224
     255, 0,  0,	-- 224
     255, 0,  0,	-- 224
     255, 0,  0,	-- 224
       0,   0,   0,	-- 239
       0,   0,   0})	-- 0

DefineFontColor("brown", {
	0,   0,   0,	-- 0
	170, 119, 0,	-- 224
	170, 119, 0,	-- 224
	170, 119, 0,	-- 224
	170, 119, 0,	-- 224
	0,   0,   0,	-- 239
	0,   0,   0
})	-- 0

DefineFontColor("pink", {
	0,   0,   0,	-- 0
	164, 21, 97,	-- 224
	164, 21, 97,	-- 224
	164, 21, 97,	-- 224
	164, 21, 97,	-- 224
	0,   0,   0,	-- 239
	0,   0,   0
})	-- 0

DefineFontColor("teal", {
	0,   0,   0,	-- 0
	44, 180, 148,	-- 224
	44, 180, 148,	-- 224
	44, 180, 148,	-- 224
	44, 180, 148,	-- 224
	0,   0,   0,	-- 239
	0,   0,   0
})	-- 0

DefineFontColor("purple", {
	0,   0,   0,	-- 0
	148, 28, 150,	-- 224
	148, 28, 150,	-- 224
	148, 28, 150,	-- 224
	148, 28, 150,	-- 224
	0,   0,   0,	-- 239
	0,   0,   0
})	-- 0

DefineFontColor("radioactive", {
	0,   0,   0,	-- 0
	248, 254, 1,	-- 224
	248, 254, 1,	-- 224
	248, 254, 1,	-- 224
	248, 254, 1,	-- 224
	0,   0,   0,	-- 239
	0,   0,   0
})	-- 0

DefineFontColor("acid", {
	0,   0,   0,	-- 0
	229, 11, 217,	-- 224
	229, 11, 217,	-- 224
	229, 11, 217,	-- 224
	229, 11, 217,	-- 224
	0,   0,   0,	-- 239
	0,   0,   0
})	-- 0
]]
