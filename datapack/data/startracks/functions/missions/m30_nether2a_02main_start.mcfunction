# Nether 2A mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m30_nether2a_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m30_nether2a
scoreboard players set @a _st_m30_nether2a 0