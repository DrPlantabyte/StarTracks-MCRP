# Start 1 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m1_start1_03main_loop"} destroy
scoreboard players set @a _st_m1_start1 0