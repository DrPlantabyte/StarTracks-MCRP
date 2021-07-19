# make starter hut
## setup stuff
setworldspawn ~ ~ ~
tp @a ~ ~ ~
# clear area
fill ~-12 ~ ~-12 ~12 ~32 ~12 minecraft:air
fill ~-12 ~-1 ~-12 ~12 ~-1 ~12 minecraft:gray_concrete
fill ~-12 ~-2 ~-12 ~12 ~-12 ~12 minecraft:cobblestone
# place climbable towers (in case of awkward start location)
fill ~-12 ~ ~-12 ~-12 ~6 ~-12 minecraft:scaffolding
setblock ~-12 ~7 ~-12 minecraft:iron_bars
setblock ~-12 ~8 ~-12 minecraft:lantern
fill ~12 ~ ~-12 ~12 ~6 ~-12 minecraft:scaffolding
setblock ~12 ~7 ~-12 minecraft:iron_bars
setblock ~12 ~8 ~-12 minecraft:lantern
fill ~-12 ~ ~12 ~-12 ~6 ~12 minecraft:scaffolding
setblock ~-12 ~7 ~12 minecraft:iron_bars
setblock ~-12 ~8 ~12 minecraft:lantern
fill ~12 ~ ~12 ~12 ~6 ~12 minecraft:scaffolding
setblock ~12 ~7 ~12 minecraft:iron_bars
setblock ~12 ~8 ~12 minecraft:lantern
fill ~13 ~-1 ~-1 ~14 ~-1 ~1 minecraft:cobblestone
setblock ~13 ~-1 ~ minecraft:air
fill ~13 ~ ~ ~13 128 ~ minecraft:ladder[facing=west] replace #minecraft:stone_ore_replaceables
fill ~14 ~ ~ ~14 10 ~ minecraft:cobblestone keep
fill ~13 ~ ~ ~13 10 ~ minecraft:ladder[facing=west] keep
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
fill ~-5 ~ ~5 ~5 ~1 ~5 minecraft:air
fill ~5 ~ ~-5 ~5 ~1 ~5 minecraft:air

fill ~-7 ~5 ~-7 ~7 ~5 ~7 minecraft:purpur_slab[type=bottom]
fill ~ ~5 ~ ~ ~8 ~ minecraft:lightning_rod
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
setblock ~2 ~ ~-2 minecraft:light_blue_bed[facing=east,part=head]
setblock ~1 ~ ~-2 minecraft:light_blue_bed[facing=east,part=foot]
setblock ~ ~ ~2 minecraft:chest[facing=north]{LootTable:"minecraft:chests/spawn_bonus_chest"}
setblock ~2 ~ ~2 minecraft:barrel[facing=up]
setblock ~2 ~ ~1 minecraft:barrel[facing=up]
## cloning room

## teleport room
setblock ~4 ~1 ~-5 minecraft:acacia_wall_sign[facing=east]{Text2:'{"text":"Teleport","color":"black"}', Text3:'{"text":"Room","color":"black"}'}
fill ~2 ~ ~-5 ~-6 ~2 ~-5 minecraft:air
fill ~2 ~ ~-4 ~-6 ~1 ~-4 minecraft:nether_bricks
fill ~2 ~2 ~-4 ~-6 ~2 ~-4 minecraft:red_nether_bricks
summon minecraft:painting ~1 ~1 ~-6 {Motive:"minecraft:bust", Facing:0}

setblock ~1 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 1","color":"black"}'}
setblock ~1 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers -724 -724 8 64 false @p[distance=0..1]"}
setblock ~1 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~1 ~-1 ~-5 minecraft:red_concrete

setblock ~-1 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 2","color":"black"}'}
setblock ~-1 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers 724 -724 8 64 false @p[distance=0..1]"}
setblock ~-1 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~-1 ~-1 ~-5 minecraft:red_concrete

setblock ~-3 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 3","color":"black"}'}
setblock ~-3 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers 724 724 8 64 false @p[distance=0..1]"}
setblock ~-3 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~-3 ~-1 ~-5 minecraft:red_concrete

setblock ~-5 ~1 ~-4 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Sector 4","color":"black"}'}
setblock ~-5 ~-1 ~-4 minecraft:command_block[facing=up]{auto:0b,powered:0b,Command:"spreadplayers -724 724 8 64 false @p[distance=0..1]"}
setblock ~-5 ~ ~-4 minecraft:polished_blackstone_pressure_plate
setblock ~-5 ~-1 ~-5 minecraft:red_concrete

# command blocks
setblock ~ ~-1 ~ minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"gamemode adventure @a[distance=0..12]"}
setblock ~ ~-2 ~ minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"gamemode survival @a[distance=13..16]"}

# place doorway
fill ~ ~ ~ ~12 ~1 ~ minecraft:air

# start missions
schedule function startracks:missions/mission_greeting_setup 1s
schedule function startracks:missions/mission_basebuilder_setup 2s