# mission Beat the Illagers
setblock 2 2 11 minecraft:bedrock replace
setblock 2 3 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_beattheillag_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Time to teach those raiders a lesson. Find their headquarters and destroy their leader.","color":"white"}]
scoreboard objectives add o_beattheillag minecraft.killed:minecraft.evoker "Kill the Evoker"
scoreboard players set @a o_beattheillag 0
give @a written_book{pages:['{"text":"Time to teach those raiders a lesson. Find their headquarters and destroy their leader."}'],title:"Beat the Illagers",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}