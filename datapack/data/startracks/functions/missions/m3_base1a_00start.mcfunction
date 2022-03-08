# Base Builder 1A setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m3_base1a_01brief_loop"} destroy
scoreboard objectives add _st_m3_base1a minecraft.crafted:minecraft.wooden_pickaxe "Craft a Wooden Pickaxe"