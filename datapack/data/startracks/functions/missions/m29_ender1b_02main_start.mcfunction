# Ender 1B mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m29_ender1b_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m29_ender1b
scoreboard players operation @a _st_m29_ender1b = @s _st_m29_ender1b