# Nether 1C setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m18_nether1c_01brief_loop"} destroy
scoreboard objectives add _st_m18_nether1c minecraft.mined:minecraft.nether_wart "Bring back 10 Nano-Mold"