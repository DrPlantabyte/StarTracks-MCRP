# Nether 1B mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m17_nether1b_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m17_nether1b
scoreboard players set @a _st_m17_nether1b 0