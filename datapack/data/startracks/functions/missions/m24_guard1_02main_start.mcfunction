# Guard1 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m24_guard1_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m24_guard1
scoreboard players set @a _st_m24_guard1 0
function startracks:events/storm