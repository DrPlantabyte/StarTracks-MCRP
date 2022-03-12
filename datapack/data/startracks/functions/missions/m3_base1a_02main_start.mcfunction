# Base Builder 1A mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m3_base1a_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m3_base1a
scoreboard players operation @a _st_m3_base1a = @s _st_m3_base1a