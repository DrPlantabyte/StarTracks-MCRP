# Guard3 mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m26_guard3_03main_loop"} destroy
function startracks:events/permastorm_end