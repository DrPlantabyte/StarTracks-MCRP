# mission Mine Time
forceload add 2 7 2 7
setblock 2 2 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_minetime_trigger"}
scoreboard objectives add t_minetime minecraft.crafted:minecraft.stone_pickaxe
