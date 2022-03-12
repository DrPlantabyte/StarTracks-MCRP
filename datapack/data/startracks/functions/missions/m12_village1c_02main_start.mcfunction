# Village 1C mission start
execute as @s at @s run function startracks:events/give_bad_omen
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m12_village1c_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m12_village1c
scoreboard players set @a _st_m12_village1c 0