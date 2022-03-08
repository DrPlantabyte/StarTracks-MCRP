# Geological Survey 3A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"I have another scientific mission for you. I need you to get close to the planet's mantel and take a sample.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"You'll need to go deep into the caves. Very deep.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 290.. run function startracks:missions/m20_cave3a_02main_start