--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2023 SaKeL <juraj.vajda@gmail.com>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to juraj.vajda@gmail.com
--]]

minetest = minetest.global_exists('minetest') and minetest --[[@as Minetest]]

local path = minetest.get_modpath('everness')
local mod_start_time = minetest.get_us_time()

dofile(path .. '/api.lua')
dofile(path .. '/nodes.lua')
dofile(path .. '/nodes_farming.lua')
dofile(path .. '/bamboo.lua')
dofile(path .. '/functions.lua')
dofile(path .. '/trees.lua')
dofile(path .. '/vines.lua')

dofile(path .. '/mapgen.lua')

if Everness.settings.biomes.everness_bamboo_forest_under.enabled then
    dofile(path .. '/mapgen_bamboo_forest_under.lua')
end

if Everness.settings.biomes.everness_bamboo_forest.enabled then
    dofile(path .. '/mapgen_bamboo_forest.lua')
end

if Everness.settings.biomes.everness_baobab_savanna.enabled then
    dofile(path .. '/mapgen_baobab_savanna.lua')
end

if Everness.settings.biomes.everness_coral_forest_dunes.enabled then
    dofile(path .. '/mapgen_coral_forest_dunes.lua')
end

if Everness.settings.biomes.everness_coral_forest_ocean.enabled then
    dofile(path .. '/mapgen_coral_forest_ocean.lua')
end

if Everness.settings.biomes.everness_coral_forest_under.enabled then
    dofile(path .. '/mapgen_coral_forest_under.lua')
end

if Everness.settings.biomes.everness_coral_forest.enabled then
    dofile(path .. '/mapgen_coral_forest.lua')
end

if Everness.settings.biomes.everness_crystal_forest_dunes.enabled then
    dofile(path .. '/mapgen_crystal_forest_dunes.lua')
end

if Everness.settings.biomes.everness_crystal_forest_ocean.enabled then
    dofile(path .. '/mapgen_crystal_forest_ocean.lua')
end

if Everness.settings.biomes.everness_crystal_forest_shore.enabled then
    dofile(path .. '/mapgen_crystal_forest_shore.lua')
end

if Everness.settings.biomes.everness_crystal_forest_under.enabled then
    dofile(path .. '/mapgen_crystal_forest_under.lua')
end

if Everness.settings.biomes.everness_crystal_forest.enabled then
    dofile(path .. '/mapgen_crystal_forest.lua')
end

if Everness.settings.biomes.everness_cursed_lands_dunes.enabled then
    dofile(path .. '/mapgen_cursed_lands_dunes.lua')
end

if Everness.settings.biomes.everness_cursed_lands_ocean.enabled then
    dofile(path .. '/mapgen_cursed_lands_ocean.lua')
end

if Everness.settings.biomes.everness_cursed_lands_swamp.enabled then
    dofile(path .. '/mapgen_cursed_lands_swamp.lua')
end

if Everness.settings.biomes.everness_cursed_lands_under.enabled then
    dofile(path .. '/mapgen_cursed_lands_under.lua')
end

if Everness.settings.biomes.everness_cursed_lands.enabled then
    dofile(path .. '/mapgen_cursed_lands.lua')
end

if Everness.settings.biomes.everness_forsaken_desert_ocean.enabled then
    dofile(path .. '/mapgen_forsaken_desert_ocean.lua')
end

if Everness.settings.biomes.everness_forsaken_desert_under.enabled then
    dofile(path .. '/mapgen_forsaken_desert_under.lua')
end

if Everness.settings.biomes.everness_forsaken_desert.enabled then
    dofile(path .. '/mapgen_forsaken_desert.lua')
end

if Everness.settings.biomes.everness_forsaken_tundra_beach.enabled then
    dofile(path .. '/mapgen_forsaken_tundra_beach.lua')
end

if Everness.settings.biomes.everness_forsaken_tundra_ocean.enabled then
    dofile(path .. '/mapgen_forsaken_tundra_ocean.lua')
end

if Everness.settings.biomes.everness_forsaken_tundra_under.enabled then
    dofile(path .. '/mapgen_forsaken_tundra_under.lua')
end

if Everness.settings.biomes.everness_forsaken_tundra.enabled then
    dofile(path .. '/mapgen_forsaken_tundra.lua')
end

if Everness.settings.biomes.everness_frosted_icesheet_ocean.enabled then
    dofile(path .. '/mapgen_frosted_icesheet_ocean.lua')
end

if Everness.settings.biomes.everness_frosted_icesheet_under.enabled then
    dofile(path .. '/mapgen_frosted_icesheet_under.lua')
end

if Everness.settings.biomes.everness_frosted_icesheet.enabled then
    dofile(path .. '/mapgen_frosted_icesheet.lua')
end

dofile(path .. '/mapgen_after.lua')

if minetest.get_modpath('xpanes') and minetest.global_exists('xpanes') then
    dofile(path .. '/panes.lua')
end

if minetest.get_modpath('stairs') and minetest.global_exists('stairs') then
    dofile(path .. '/stairs.lua')
end

if minetest.get_modpath('walls') and minetest.global_exists('walls') then
    dofile(path .. '/walls.lua')
end

dofile(path .. '/fences.lua')

if minetest.get_modpath('doors') and minetest.global_exists('doors') then
    dofile(path .. '/doors.lua')
end

dofile(path .. '/tools.lua')
dofile(path .. '/craftitems.lua')
dofile(path .. '/crafting.lua')
dofile(path .. '/loot_chests.lua')
dofile(path .. '/skybox.lua')
dofile(path .. '/env_sounds.lua')

local mod_end_time = (minetest.get_us_time() - mod_start_time) / 1000000

print('[Mod] everness loaded.. [' .. mod_end_time .. 's]')
