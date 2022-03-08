# Ender 1C mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m30_ender1c_03main_loop"} destroy
scoreboard objectives setdisplay sidebar _st_onframe
scoreboard players set @a _st_onframe 0