# Geological Survey 3C setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m22_cave3c_01brief_loop"} destroy
scoreboard objectives add _st_m22_cave3c minecraft.mined:minecraft.sculk "Mine 25 Sculk"