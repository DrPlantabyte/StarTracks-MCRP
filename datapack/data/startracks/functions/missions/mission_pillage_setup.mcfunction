# mission Pillage
forceload add 2 11 2 11
setblock 2 2 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_pillage_trigger"}
scoreboard objectives add t_pillage minecraft.killed:minecraft.pillager
