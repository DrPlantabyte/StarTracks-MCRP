# mission To Hell
forceload add 2 7 2 7
setblock 2 2 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_tohell_trigger"}
scoreboard objectives add t_tohell minecraft.crafted:minecraft.flint_and_steel
