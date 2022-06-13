# Ender 1A setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m31_ender1a_01brief_loop"} destroy
scoreboard objectives add _st_m31_ender1a minecraft.killed:minecraft.enderman "Slay 4 Invaders"