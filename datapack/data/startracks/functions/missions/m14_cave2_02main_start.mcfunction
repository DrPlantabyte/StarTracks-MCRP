# Geological Survey 2 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m14_cave2_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m14_cave2
scoreboard players set @a _st_m14_cave2 0