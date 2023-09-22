# Farming 2 mission start
recipe give @a beehive
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m13_farm2_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m13_farm2
scoreboard players set @a _st_m13_farm2 0