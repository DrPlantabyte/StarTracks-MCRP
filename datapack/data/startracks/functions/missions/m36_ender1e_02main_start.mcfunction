# Ender 1E mission start
function startracks:events/endgame_reward
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m36_ender1e_03main_loop"} destroy