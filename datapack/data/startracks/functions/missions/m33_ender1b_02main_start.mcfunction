# Ender 1B mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m33_ender1b_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m33_ender1b
scoreboard players set @a _st_m33_ender1b 0