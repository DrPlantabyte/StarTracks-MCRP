# Geological Survey 3B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Perfect! With this information, I'm able to craft for you a cybernetically enhanced pick that is able to more efficiently gather resources.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m22_cave3b_06end