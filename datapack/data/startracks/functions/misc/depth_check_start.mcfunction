scoreboard objectives add _st_depth dummy "Dig to 100 Depth"
setblock 7 3 9 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:misc/depth_check_loop"} destroy
