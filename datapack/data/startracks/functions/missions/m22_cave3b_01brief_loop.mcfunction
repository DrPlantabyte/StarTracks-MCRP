# Geological Survey 3B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Now take a few samples from the deepslate rock. The deeper the better!","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m22_cave3b_02main_start