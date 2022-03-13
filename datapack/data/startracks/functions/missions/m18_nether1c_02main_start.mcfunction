# Nether 1C mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m18_nether1c_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m18_nether1c
scoreboard players set @a _st_m18_nether1c 0