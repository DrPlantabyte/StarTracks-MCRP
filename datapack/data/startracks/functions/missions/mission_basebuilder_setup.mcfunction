# build a base mission part: 1
forceload add 0 0 15 15
setblock 3 2 3 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_basebuilder_trigger"}
scoreboard objectives add craft_furnace minecraft.used:minecraft.furnace