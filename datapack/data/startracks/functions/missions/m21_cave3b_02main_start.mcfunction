# Geological Survey 3B mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m21_cave3b_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m21_cave3b
scoreboard players set @a _st_m21_cave3b 0
function startracks:misc/depth_check_stop