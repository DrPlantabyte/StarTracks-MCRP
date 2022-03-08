# Nether 1A mission start
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m16_nether1a_03main_loop"} destroy
execute as @s at @s run function startracks:events/portal_attack