# make starter hut
setworldspawn ~ ~ ~
# clear area
fill ~-12 ~ ~-12 ~12 ~32 ~12 minecraft:air replace
fill ~-12 ~-1 ~-12 ~12 ~-1 ~12 minecraft:gray_concrete replace
fill ~-12 ~-2 ~-12 ~12 ~-12 ~12 minecraft:cobblestone replace
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
fill ~13 ~-1 ~-1 ~14 ~-1 ~1 minecraft:cobblestone replace
setblock ~13 ~-1 ~ minecraft:air replace
fill ~13 ~ ~ ~13 128 ~ minecraft:ladder[facing=west] replace #minecraft:stone_ore_replaceables
fill ~14 ~ ~ ~14 10 ~ minecraft:cobblestone keep
fill ~13 ~ ~ ~13 10 ~ minecraft:ladder[facing=west] keep
# build rooms
fill ~-7 ~ ~-7 ~7 ~ ~7 minecraft:blue_concrete replace
fill ~-7 ~1 ~-7 ~7 ~1 ~7 minecraft:yellow_concrete replace
fill ~-7 ~2 ~-7 ~7 ~2 ~7 minecraft:red_nether_bricks
fill ~-7 ~3 ~-7 ~7 ~4 ~7 minecraft:iron_block
fill ~-6 ~3 ~-6 ~6 ~3 ~6 minecraft:nether_bricks
fill ~-6 ~ ~-6 ~6 ~2 ~6 minecraft:air replace

fill ~-1 ~3 ~-1 ~1 ~3 ~1 minecraft:sea_lantern
fill ~-1 ~3 ~-4 ~1 ~3 ~-6 minecraft:sea_lantern
fill ~-1 ~3 ~4 ~1 ~3 ~6 minecraft:sea_lantern
fill ~-4 ~3 ~-1 ~-6 ~3 ~1 minecraft:sea_lantern
fill ~4 ~3 ~-1 ~6 ~3 ~1 minecraft:sea_lantern
fill ~-6 ~3 ~-6 ~-4 ~3 ~-4 minecraft:sea_lantern
fill ~6 ~3 ~-6 ~4 ~3 ~-4 minecraft:sea_lantern
fill ~-6 ~3 ~6 ~-4 ~3 ~4 minecraft:sea_lantern
fill ~6 ~3 ~6 ~4 ~3 ~4 minecraft:sea_lantern

fill ~-3 ~ ~-6 ~-3 ~ ~6 minecraft:blue_concrete replace
fill ~-3 ~1 ~-6 ~-3 ~1 ~6 minecraft:yellow_concrete replace
fill ~-3 ~2 ~-6 ~-3 ~2 ~6 minecraft:red_nether_bricks replace
fill ~3 ~ ~-6 ~3 ~ ~6 minecraft:blue_concrete replace
fill ~3 ~1 ~-6 ~3 ~1 ~6 minecraft:yellow_concrete replace
fill ~3 ~2 ~-6 ~3 ~2 ~6 minecraft:red_nether_bricks replace
fill ~-6 ~ ~-3 ~6 ~ ~-3 minecraft:blue_concrete replace
fill ~-6 ~1 ~-3 ~6 ~1 ~-3 minecraft:yellow_concrete replace
fill ~-6 ~2 ~-3 ~6 ~2 ~-3 minecraft:red_nether_bricks replace
fill ~-6 ~ ~3 ~6 ~ ~3 minecraft:blue_concrete replace
fill ~-6 ~1 ~3 ~6 ~1 ~3 minecraft:yellow_concrete replace
fill ~-6 ~2 ~3 ~6 ~2 ~3 minecraft:red_nether_bricks replace
fill ~-5 ~ ~-5 ~5 ~1 ~-5 minecraft:air replace
fill ~-5 ~ ~5 ~5 ~1 ~5 minecraft:air replace
fill ~5 ~ ~-5 ~5 ~1 ~5 minecraft:air replace

fill ~-7 ~5 ~-7 ~7 ~5 ~7 minecraft:purpur_slab[type=bottom]
fill ~ ~5 ~ ~ ~8 ~ minecraft:lightning_rod
# internal stuff
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
setblock ~2 ~ ~-2 minecraft:light_blue_bed[facing=east,part=head] replace
setblock ~1 ~ ~-2 minecraft:light_blue_bed[facing=east,part=foot] replace
setblock ~ ~ ~2 minecraft:chest[facing=north]{LootTable:"minecraft:chests/spawn_bonus_chest"}
setblock ~2 ~ ~2 minecraft:barrel[facing=up]
setblock ~2 ~ ~1 minecraft:barrel[facing=up]
# command blocks
setblock ~ ~-1 ~ minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"gamemode adventure @a[distance=0..12]"} replace
setblock ~ ~-2 ~ minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"gamemode survival @a[distance=13..16]"} replace

# place doorway
fill ~ ~ ~ ~12 ~1 ~ minecraft:air replace