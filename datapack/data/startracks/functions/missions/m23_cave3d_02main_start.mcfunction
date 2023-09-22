# Geological Survey 3d mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m23_cave3d_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m23_cave3d
scoreboard players set @a _st_m23_cave3d 0