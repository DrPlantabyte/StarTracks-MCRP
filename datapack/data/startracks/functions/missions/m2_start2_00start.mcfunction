# Start 2 setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m2_start2_01brief_loop"} destroy
scoreboard objectives add _st_m2_start2 minecraft.crafted:minecraft.crafting_table "Craft a Crafting Station"