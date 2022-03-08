# Geological Survey 3A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Interesting... Very Interesting... You be careful down there. Here, this should help you avoid some of the dangers.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m20_cave3a_06end