# Geological Survey 1 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Interesting... These readings suggest that you may also find diamonds, cybernite, and redstone farther down in the subsurface.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m7_cave1_06end