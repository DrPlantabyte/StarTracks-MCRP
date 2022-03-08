# start of story missions
scoreboard objectives add _st_briefing dummy
scoreboard objectives add _st_depth dummy
scoreboard objectives add _st_onframe dummy
setblock 7 7 5 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"scoreboard players set @a[y=-64,dy=14] _st_depth 50"} destroy
setblock 7 7 3 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"execute as @a if block ~ ~-1 ~ minecraft:end_portal_frame run scoreboard players set @s _st_onframe 1"} destroy
function startracks:missions/m1_start1_00start
scoreboard objectives add _st_m4_base1b minecraft.crafted:minecraft.furnace "Craft a Furnace"
scoreboard objectives add _st_m6_base1d minecraft.crafted:minecraft.white_bed "Craft a White Crafting Bed"
scoreboard objectives add _st_m7_cave1 minecraft.mined:minecraft.iron_ore "Mine 32 Iron Ore"
scoreboard objectives add _st_m8_farm1a minecraft.picked_up:minecraft.wheat_seeds "Collect 12 Seeds"
scoreboard objectives add _st_m19_nether1d minecraft.picked_up:minecraft.blaze_rod "Collect 3 Nanite Reactors"
scoreboard objectives add _st_m25_guard2 minecraft.killed:minecraft.elder_guardian "Kill 3 Elder Guardians"
scoreboard objectives add _st_m28_nether2b minecraft.killed:minecraft.wither "Kill an AI Singularity"
scoreboard objectives add _st_m30_ender1b minecraft.crafted:minecraft.ender_eye "Craft Ender Seeker"