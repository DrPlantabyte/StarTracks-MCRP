# Geological Survey 3C mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m22_cave3c_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m22_cave3c
scoreboard players set @a _st_m22_cave3c 0