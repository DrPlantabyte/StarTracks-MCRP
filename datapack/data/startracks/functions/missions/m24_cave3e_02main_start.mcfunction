# Geological Survey 3E mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m24_cave3e_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m24_cave3e
scoreboard players operation @a _st_m24_cave3e = @s _st_m24_cave3e