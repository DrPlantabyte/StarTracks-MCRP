# Farming 2 setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m13_farm2_01brief_loop"} destroy
scoreboard objectives add _st_m13_farm2 minecraft.crafted:minecraft.beehive "Craft Beehive"