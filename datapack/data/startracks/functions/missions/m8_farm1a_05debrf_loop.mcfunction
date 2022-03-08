# Farming 1A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"That will be sufficient to start a primitive farm. Use a hoe to till the soil and then plant the seeds near open water.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Here's a few more seeds for you to add diversity to your diet.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 290.. run function startracks:missions/m8_farm1a_06end