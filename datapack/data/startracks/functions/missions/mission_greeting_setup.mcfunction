# mission zero: greetings
forceload add 0 0 15 15
setblock 3 2 1 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_greeting_loop"}
scoreboard objectives add greet_time dummy
scoreboard players set @a greet_time 0