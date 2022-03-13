# Nether 1B setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m17_nether1b_01brief_loop"} destroy
scoreboard objectives add _st_m17_nether1b minecraft.killed:minecraft.zombie "Slay 10 Cyborgs"