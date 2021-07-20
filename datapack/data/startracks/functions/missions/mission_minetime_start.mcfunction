# mission Mine Time
setblock 2 2 7 minecraft:bedrock replace
setblock 2 3 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_minetime_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Now you are ready to mine! You are going to want iron, and lots of it. Mine 40 iron ore to win a prize.","color":"white"}]
scoreboard objectives add o_minetime minecraft.mined:minecraft.iron_ore "Mine 40 Iron Ore"
give @a written_book{pages:['{"text":"Now you are ready to mine! You are going to want iron, and lots of it. Mine 40 iron ore to win a prize."}'],title:"Mine Time",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}