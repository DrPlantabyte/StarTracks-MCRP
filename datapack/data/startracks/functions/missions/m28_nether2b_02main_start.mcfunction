# Nether 2B mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m28_nether2b_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m28_nether2b
scoreboard players operation @a _st_m28_nether2b = @s _st_m28_nether2b