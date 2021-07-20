# mission AI Singularity
forceload add 2 7 2 7
setblock 2 2 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_aisingularit_trigger"}
scoreboard objectives add t_aisingularit minecraft.picked_up:minecraft.wither_skeleton_skull
