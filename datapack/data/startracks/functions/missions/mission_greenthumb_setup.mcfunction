# mission Green Thumb
forceload add 2 13 2 13
setblock 2 2 13 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_greenthumb_trigger"}
scoreboard objectives add t_greenthumb food
