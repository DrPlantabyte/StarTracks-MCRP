# make starter hut
## setup stuff
### temporarily load area around the HQ
forceload add 16 -20 16 20
forceload add -16 -20 -16 20
forceload add -20 16 20 16
forceload add -20 -16 20 -16
## player spawn
setworldspawn 8 68 8
### use levitate to fix falling into ground because of server lag
effect give @a minecraft:levitation 2
tp @a 8 68 8

# clear area
fill ~-12 ~ ~-12 ~12 ~32 ~12 minecraft:air
fill ~-20 ~-1 ~-20 ~20 ~-1 ~20 minecraft:gray_concrete
fill ~-20 ~-2 ~-20 ~20 ~-6 ~20 minecraft:cobblestone keep
fill ~-2 ~-6 ~-2 ~2 10 ~2 minecraft:cobblestone replace minecraft:water
fill ~-20 ~ ~-20 ~20 ~4 ~20 minecraft:air
fill ~-20 ~5 ~-20 ~20 ~9 ~20 minecraft:air
fill ~-20 ~10 ~-20 ~20 ~14 ~20 minecraft:air

fill ~21 ~-1 ~-1 ~22 ~-1 ~1 minecraft:cobblestone
setblock ~21 ~-1 ~ minecraft:air
fill ~21 ~ ~ ~21 128 ~ minecraft:ladder[facing=west] replace #minecraft:stone_ore_replaceables
fill ~22 ~ ~ ~22 1 ~ minecraft:cobblestone keep
fill ~21 ~ ~ ~21 1 ~ minecraft:ladder[facing=west] keep

# build rooms
fill ~-7 ~ ~-7 ~7 ~ ~7 minecraft:blue_concrete
fill ~-7 ~1 ~-7 ~7 ~1 ~7 minecraft:yellow_concrete
fill ~-7 ~2 ~-7 ~7 ~2 ~7 minecraft:red_nether_bricks
fill ~-7 ~3 ~-7 ~7 ~4 ~7 minecraft:iron_block
fill ~-6 ~3 ~-6 ~6 ~3 ~6 minecraft:nether_bricks
fill ~-6 ~ ~-6 ~6 ~2 ~6 minecraft:air

fill ~-1 ~3 ~-1 ~1 ~3 ~1 minecraft:sea_lantern
fill ~-1 ~3 ~-4 ~1 ~3 ~-6 minecraft:sea_lantern
fill ~-1 ~3 ~4 ~1 ~3 ~6 minecraft:sea_lantern
fill ~-4 ~3 ~-1 ~-6 ~3 ~1 minecraft:sea_lantern
fill ~4 ~3 ~-1 ~6 ~3 ~1 minecraft:sea_lantern
fill ~-6 ~3 ~-6 ~-4 ~3 ~-4 minecraft:sea_lantern
fill ~6 ~3 ~-6 ~4 ~3 ~-4 minecraft:sea_lantern
fill ~-6 ~3 ~6 ~-4 ~3 ~4 minecraft:sea_lantern
fill ~6 ~3 ~6 ~4 ~3 ~4 minecraft:sea_lantern

fill ~-3 ~ ~-6 ~-3 ~ ~6 minecraft:blue_concrete
fill ~-3 ~1 ~-6 ~-3 ~1 ~6 minecraft:yellow_concrete
fill ~-3 ~2 ~-6 ~-3 ~2 ~6 minecraft:red_nether_bricks
fill ~3 ~ ~-6 ~3 ~ ~6 minecraft:blue_concrete
fill ~3 ~1 ~-6 ~3 ~1 ~6 minecraft:yellow_concrete
fill ~3 ~2 ~-6 ~3 ~2 ~6 minecraft:red_nether_bricks
fill ~-6 ~ ~-3 ~6 ~ ~-3 minecraft:blue_concrete
fill ~-6 ~1 ~-3 ~6 ~1 ~-3 minecraft:yellow_concrete
fill ~-6 ~2 ~-3 ~6 ~2 ~-3 minecraft:red_nether_bricks
fill ~-6 ~ ~3 ~6 ~ ~3 minecraft:blue_concrete
fill ~-6 ~1 ~3 ~6 ~1 ~3 minecraft:yellow_concrete
fill ~-6 ~2 ~3 ~6 ~2 ~3 minecraft:red_nether_bricks
fill ~-5 ~ ~-6 ~5 ~1 ~-6 minecraft:air
fill ~-5 ~ ~6 ~5 ~1 ~6 minecraft:air
fill ~5 ~ ~-5 ~5 ~1 ~5 minecraft:air

fill ~-7 ~5 ~-7 ~7 ~5 ~7 minecraft:purpur_slab[type=bottom]
fill ~ ~5 ~ ~ ~8 ~ minecraft:lightning_rod
setblock ~-7 ~5 ~-7 minecraft:torch
setblock ~7 ~5 ~-7 minecraft:torch
setblock ~-7 ~5 ~7 minecraft:torch
setblock ~7 ~5 ~7 minecraft:torch
setblock ~-1 ~5 ~ minecraft:torch
setblock ~1 ~5 ~ minecraft:torch
setblock ~ ~5 ~-1 minecraft:torch
setblock ~ ~5 ~1 minecraft:torch

setblock ~-10 ~ ~-10 minecraft:torch
setblock ~10 ~ ~-10 minecraft:torch
setblock ~-10 ~ ~10 minecraft:torch
setblock ~10 ~ ~10 minecraft:torch
setblock ~-10 ~ ~-3 minecraft:torch
setblock ~-10 ~ ~3 minecraft:torch
setblock ~10 ~ ~-3 minecraft:torch
setblock ~10 ~ ~3 minecraft:torch
setblock ~-3 ~ ~-10 minecraft:torch
setblock ~3 ~ ~-10 minecraft:torch
setblock ~-3 ~ ~10 minecraft:torch
setblock ~3 ~ ~10 minecraft:torch

setblock ~16 ~ ~-12 minecraft:torch
setblock ~16 ~ ~-4 minecraft:torch
setblock ~16 ~ ~4 minecraft:torch
setblock ~16 ~ ~12 minecraft:torch
setblock ~-16 ~ ~-12 minecraft:torch
setblock ~-16 ~ ~-4 minecraft:torch
setblock ~-16 ~ ~4 minecraft:torch
setblock ~-16 ~ ~12 minecraft:torch
setblock ~-12 ~ ~16 minecraft:torch
setblock ~-4 ~ ~16 minecraft:torch
setblock ~4 ~ ~16 minecraft:torch
setblock ~12 ~ ~16 minecraft:torch
setblock ~-12 ~ ~-16 minecraft:torch
setblock ~-4 ~ ~-16 minecraft:torch
setblock ~4 ~ ~-16 minecraft:torch
setblock ~12 ~ ~-16 minecraft:torch

# internal stuff
## start room
fill ~-3 ~ ~-2 ~-3 ~3 ~2 minecraft:sea_lantern
summon minecraft:painting ~-2 ~2 ~2 {Motive:"minecraft:sunset", Facing:3}
summon minecraft:painting ~-2 ~1 ~2 {Motive:"minecraft:aztec", Facing:3}
summon minecraft:painting ~-2 ~1 ~1 {Motive:"minecraft:aztec2", Facing:3}
summon minecraft:painting ~-2 ~2 ~ {Motive:"minecraft:alban", Facing:3}
summon minecraft:painting ~-2 ~1 ~ {Motive:"minecraft:wasteland", Facing:3}
summon minecraft:painting ~-2 ~1 ~-1 {Motive:"minecraft:wanderer", Facing:3}
summon minecraft:painting ~-2 ~1 ~-2 {Motive:"minecraft:graham", Facing:3}
summon minecraft:painting ~2 ~1 ~1 {Motive:"minecraft:stage", Facing:1}
summon minecraft:painting ~2 ~1 ~-2 {Motive:"minecraft:stage", Facing:1}
summon minecraft:painting ~8 ~2 ~-1 {Motive:"minecraft:stage", Facing:3}
summon minecraft:painting ~8 ~2 ~2 {Motive:"minecraft:stage", Facing:3}
setblock ~ ~ ~2 minecraft:chest[facing=north]{LootTable:"minecraft:chests/spawn_bonus_chest"}
setblock ~2 ~ ~-2 minecraft:barrel[facing=up]{Items:[{Slot:0,id:dirt,Count:12},{Slot:1,id:oak_sapling,Count:3}]}
setblock ~2 ~ ~-1 minecraft:barrel[facing=up]

## side rooms
summon minecraft:painting ~5 ~1 ~-6 {Motive:"minecraft:skull_and_roses", Facing:0}
summon armor_stand ~6 ~ ~6 {Rotation:[135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16701501}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:"leather_helmet",Count:1b,tag:{display:{color:16701501}}}],HandItems:[{},{}]}
setblock ~8 ~4 ~ minecraft:blue_wall_banner[facing=east]{Patterns:[{Pattern:"gra",Color:15},{Pattern:"glb",Color:4}]}

## teleport room
setblock ~4 ~1 ~-5 minecraft:acacia_wall_sign[facing=east]{Text2:'{"text":"Teleport","color":"black"}', Text3:'{"text":"Room","color":"black"}'}
fill ~2 ~ ~-5 ~-6 ~2 ~-6 minecraft:air
fill ~2 ~ ~-4 ~-6 ~1 ~-4 minecraft:nether_bricks
fill ~2 ~2 ~-4 ~-6 ~2 ~-4 minecraft:red_nether_bricks
summon minecraft:painting ~-6 ~1 ~-5 {Motive:"minecraft:bust", Facing:3}
summon minecraft:painting ~-4 ~1 ~-6 {Motive:"minecraft:fighters", Facing:0}
summon minecraft:painting ~ ~1 ~-6 {Motive:"minecraft:donkey_kong", Facing:0}

setblock ~1 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 1","color":"black"}'}
setblock ~1 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers -724 -724 8 64 false @p[distance=0..1]"}
setblock ~1 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~1 ~-1 ~-5 minecraft:red_concrete

setblock ~-1 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 2","color":"black"}'}
setblock ~-1 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers 724 -724 8 64 false @p[distance=0..1]"}
setblock ~-1 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~-1 ~-1 ~-5 minecraft:green_concrete

setblock ~-3 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 3","color":"black"}'}
setblock ~-3 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers 724 724 8 64 false @p[distance=0..1]"}
setblock ~-3 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~-3 ~-1 ~-5 minecraft:blue_concrete

setblock ~-5 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 4","color":"black"}'}
setblock ~-5 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers -724 724 8 64 false @p[distance=0..1]"}
setblock ~-5 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~-5 ~-1 ~-5 minecraft:yellow_concrete

## reactor room
setblock ~-2 ~1 ~5 minecraft:dark_oak_wall_sign[facing=east]{Text2:'{"text":"DANGER:","color":"black"}', Text3:'{"text":"Power Reactor","color":"black"}'}
summon minecraft:painting ~-4 ~1 ~6 {Motive:"minecraft:graham", Facing:2}
summon minecraft:painting ~-4 ~1 ~4 {Motive:"minecraft:aztec", Facing:0}
fill ~-6 ~ ~6 ~-6 ~2 ~4 minecraft:coal_block
fill ~-6 ~1 ~6 ~-6 ~1 ~4 minecraft:tnt
fill ~-5 ~ ~6 ~-5 ~2 ~4 minecraft:glass

## cloning room
setblock ~4 ~1 ~5 minecraft:acacia_wall_sign[facing=east]{Text2:'{"text":"Cloning","color":"black"}', Text3:'{"text":"Facility","color":"black"}'}
summon minecraft:painting ~ ~1 ~6 {Motive:"minecraft:bust", Facing:2}

setblock ~2 ~ ~4 minecraft:light_blue_bed[facing=north,part=head]
setblock ~2 ~ ~5 minecraft:light_blue_bed[facing=north,part=foot]
setblock ~1 ~ ~4 minecraft:lime_bed[facing=north,part=head]
setblock ~1 ~ ~5 minecraft:lime_bed[facing=north,part=foot]
setblock ~ ~ ~4 minecraft:yellow_bed[facing=north,part=head]
setblock ~ ~ ~5 minecraft:yellow_bed[facing=north,part=foot]
setblock ~-1 ~ ~4 minecraft:black_bed[facing=north,part=head]
setblock ~-1 ~ ~5 minecraft:black_bed[facing=north,part=foot]
setblock ~-2 ~ ~4 minecraft:pink_bed[facing=north,part=head]
setblock ~-2 ~ ~5 minecraft:pink_bed[facing=north,part=foot]


# command blocks
setblock ~ ~-1 ~ minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"gamemode adventure @a[gamemode=survival,distance=0..19]"}
setblock ~ ~-2 ~ minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"gamemode survival @a[gamemode=adventure,distance=20..]"}

# place doorway
fill ~ ~ ~ ~12 ~1 ~ minecraft:air
setblock ~7 ~ ~ minecraft:iron_door[half=lower,facing=east,hinge=left]
setblock ~7 ~1 ~ minecraft:iron_door[half=upper,facing=east,hinge=left]
setblock ~6 ~ ~ minecraft:polished_blackstone_pressure_plate
setblock ~8 ~ ~ minecraft:polished_blackstone_pressure_plate

# cleanup
forceload remove 16 -20 16 20
forceload remove -16 -20 -16 20
forceload remove -20 16 20 16
forceload remove -20 -16 20 -16

# start missions
schedule function startracks:missions/mission_greeting_setup 1s
schedule function startracks:missions/m0_story_start 2s