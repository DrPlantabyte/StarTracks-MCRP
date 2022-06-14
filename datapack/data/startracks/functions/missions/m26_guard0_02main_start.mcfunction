# Guard0 mission start
function startracks:events/storm
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m26_guard0_03main_loop"} destroy