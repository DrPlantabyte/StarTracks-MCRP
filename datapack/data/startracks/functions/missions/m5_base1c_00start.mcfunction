# Base Builder 1C setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m5_base1c_01brief_loop"} destroy
scoreboard objectives add _st_m5_base1c minecraft.crafted:minecraft.torch "Craft 20 Lights"