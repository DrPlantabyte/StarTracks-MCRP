# Farming 1B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"In case you feel particularly attached to your animals, here are some name tags and a leash.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m9_farm1b_06end