# Ender 1A mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m31_ender1a_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m31_ender1a
scoreboard players set @a _st_m31_ender1a 0