# Guard1 mission start
function startracks:events/storm
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m27_guard1_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_m27_guard1
scoreboard players set @a _st_m27_guard1 0