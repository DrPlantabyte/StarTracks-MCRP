# Guard2 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m24_guard2_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m24_guard2
scoreboard players operation @a _st_m24_guard2 = @s _st_m24_guard2
function startracks:events/permastorm_start