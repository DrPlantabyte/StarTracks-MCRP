# Village2 setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m15_village2_01brief_loop"} destroy
scoreboard objectives add _st_m15_village2 minecraft.custom:minecraft.traded_with_villager "12 Villager Trades"