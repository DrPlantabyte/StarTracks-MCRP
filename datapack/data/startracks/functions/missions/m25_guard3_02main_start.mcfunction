# Guard3 mission start
function startracks:events/permastorm_end
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m25_guard3_03main_loop"} destroy