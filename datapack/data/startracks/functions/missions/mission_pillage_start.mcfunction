# mission Pillage
setblock 2 2 11 minecraft:bedrock replace
setblock 2 3 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_pillage_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"These pillagers have been a real pest. The villagers have posted a bounty for slaying 10 of them.","color":"white"}]
scoreboard objectives add o_pillage minecraft.killed:minecraft.pillager "Kill 10 Pillagers"
give @a written_book{pages:['{"text":"These pillagers have been a real pest. The villagers have posted a bounty for slaying 10 of them."}'],title:"Pillage",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}