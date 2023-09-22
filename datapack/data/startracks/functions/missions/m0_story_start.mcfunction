# start of story missions
gamerule doPatrolSpawning true
scoreboard objectives add _st_briefing dummy
scoreboard objectives add _st_onframe dummy "Stand on Ender Portal"
setblock 7 7 5 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"scoreboard players set @a[y=-64,dy=14] _st_depth 50"} destroy
setblock 7 7 3 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:end_portal_frame run scoreboard players set @s _st_onframe 1"} destroy
function startracks:missions/m1_start1_00start
scoreboard objectives add _st_m2_start2 minecraft.crafted:minecraft.crafting_table "Craft a Crafting Station"
scoreboard objectives add _st_m3_base1a minecraft.crafted:minecraft.wooden_pickaxe "Craft a Wooden Pickaxe"
scoreboard objectives add _st_m4_base1b minecraft.crafted:minecraft.furnace "Craft a Furnace"
scoreboard objectives add _st_m5_base1c minecraft.crafted:minecraft.torch "Craft 20 Lights"
scoreboard objectives add _st_m6_base1d minecraft.crafted:minecraft.white_bed "Craft a White Bed"
scoreboard objectives add _st_m7_cave1 minecraft.mined:minecraft.iron_ore "Mine 32 Iron Ore"
scoreboard objectives add _st_m8_farm1a minecraft.picked_up:minecraft.wheat_seeds "Collect 12 Seeds"
scoreboard objectives add _st_m19_nether1d minecraft.picked_up:minecraft.blaze_rod "Collect 3 Nanite Reactors"
scoreboard objectives add _st_m24_cave3e minecraft.killed:minecraft.warden "Kill the Warden"
scoreboard objectives add _st_m28_guard2 minecraft.killed:minecraft.elder_guardian "Kill 3 Elder Guardians"
scoreboard objectives add _st_m31_nether2b minecraft.killed:minecraft.wither "Kill an AI Singularity"
scoreboard objectives add _st_m35_ender1d minecraft.killed:minecraft.ender_dragon "Slay the Dragon"