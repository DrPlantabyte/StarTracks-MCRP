# Farming 2 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"I'd like to study the genetically engineered Mega-Bees we sent to this world. Build a beehive, and then use flowers to lure some Mega-Bees to it.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m13_farm2_02main_start