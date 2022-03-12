# mission zero: greetings
forceload add 0 0 15 15
scoreboard objectives add total_time minecraft.custom:minecraft.total_world_time "Total World Time"
setblock 3 2 1 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_greeting_loop"}