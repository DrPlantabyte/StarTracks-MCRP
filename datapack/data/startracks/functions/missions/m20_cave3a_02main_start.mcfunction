# Geological Survey 3A mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m20_cave3a_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_depth
scoreboard players operation @a _st_depth = @s _st_depth
function startracks:misc/depth_check_start