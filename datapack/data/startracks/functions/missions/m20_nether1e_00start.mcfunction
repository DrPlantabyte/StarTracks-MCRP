# Nether 1E setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m20_nether1e_01brief_loop"} destroy
scoreboard objectives add _st_m20_nether1e minecraft.custom:minecraft.swim_one_cm "Swim in Water"