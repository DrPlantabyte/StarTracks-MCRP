# mission Illuminate
forceload add 2 11 2 11
setblock 2 2 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_illuminate_trigger"}
scoreboard objectives add t_illuminate minecraft.custom:minecraft.talked_to_villager
