# Nether 1E mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m20_nether1e_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m20_nether1e
scoreboard players set @a _st_m20_nether1e 0