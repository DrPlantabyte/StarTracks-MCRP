# Farming 1B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"You will also require animal resources. Build an animal pen, then use your wheat harvest to lure some animals into your pen.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Finally, feed the animals to stimulate the reproductive process to ensure a continued supply of nutrition.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 330.. run function startracks:missions/m9_farm1b_02main_start