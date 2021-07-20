# mission Horsing Around
forceload add 2 13 2 13
setblock 2 2 13 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_horsingaroun_trigger"}
scoreboard objectives add t_horsingaroun minecraft.custom:minecraft.walk_one_cm
