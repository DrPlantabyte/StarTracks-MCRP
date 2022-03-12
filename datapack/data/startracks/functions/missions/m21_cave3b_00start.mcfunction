# Geological Survey 3B setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m21_cave3b_01brief_loop"} destroy
scoreboard objectives add _st_m21_cave3b minecraft.mined:minecraft.deepslate "Mine 20 Deepslate"