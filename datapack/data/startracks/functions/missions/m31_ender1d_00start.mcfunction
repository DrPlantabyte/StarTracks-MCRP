# Ender 1D setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m31_ender1d_01brief_loop"} destroy
scoreboard objectives add _st_m31_ender1d minecraft.killed:minecraft.ender_dragon "Slay the Dragon"