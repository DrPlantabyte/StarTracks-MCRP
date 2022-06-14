# Party 1 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m25_party1_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m25_party1
scoreboard players set @a _st_m25_party1 0