# Geological Survey 2 setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m14_cave2_01brief_loop"} destroy
scoreboard objectives add _st_m14_cave2 minecraft.used:minecraft.glow_berries "Eat 5 Glow Berries"