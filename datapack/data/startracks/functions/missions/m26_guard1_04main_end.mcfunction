# Guard1 mission end
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m26_guard1_05debrf_loop"} destroy
scoreboard players set @a _st_briefing 0