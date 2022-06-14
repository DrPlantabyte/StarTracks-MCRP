# Nether 2A setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m30_nether2a_01brief_loop"} destroy
scoreboard objectives add _st_m30_nether2a minecraft.picked_up:minecraft.wither_skeleton_skull "Collect a Xeno-Borg Skull"