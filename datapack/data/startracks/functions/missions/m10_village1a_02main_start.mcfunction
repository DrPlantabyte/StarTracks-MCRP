# Village1a mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m10_village1a_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m10_village1a
scoreboard players set @a _st_m10_village1a 0