# Geological Survey 3A mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m20_cave3a_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_depth
scoreboard players set @a _st_depth 0