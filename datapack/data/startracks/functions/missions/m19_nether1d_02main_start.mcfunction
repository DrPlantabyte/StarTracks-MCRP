# Nether 1D mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m19_nether1d_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m19_nether1d
scoreboard players operation @a _st_m19_nether1d = @s _st_m19_nether1d