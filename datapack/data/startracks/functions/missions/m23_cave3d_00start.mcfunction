# Geological Survey 3d setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m23_cave3d_01brief_loop"} destroy
scoreboard objectives add _st_m23_cave3d minecraft.mined:minecraft.sculk_catalyst "Break 3 Sculk Catalysts"