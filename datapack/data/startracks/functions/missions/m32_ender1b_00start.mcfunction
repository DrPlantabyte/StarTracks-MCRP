# Ender 1B setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m32_ender1b_01brief_loop"} destroy
scoreboard objectives add _st_m32_ender1b minecraft.crafted:minecraft.ender_eye "Craft Ender Seeker"