# Base Builder 1C mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m5_base1c_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m5_base1c
scoreboard players operation @a _st_m5_base1c = @s _st_m5_base1c