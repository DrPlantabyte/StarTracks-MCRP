# Geological Survey 1 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m7_cave1_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m7_cave1
scoreboard players operation @a _st_m7_cave1 = @s _st_m7_cave1