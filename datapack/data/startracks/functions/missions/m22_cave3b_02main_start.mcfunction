# Geological Survey 3B mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m22_cave3b_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_depth
scoreboard players set @a _st_depth 0