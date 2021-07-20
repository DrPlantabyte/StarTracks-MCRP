# mission Find a Village
forceload add 2 11 2 11
setblock 2 2 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_findavillage_trigger"}
scoreboard objectives add t_findavillage minecraft.custom:minecraft.walk_one_cm
