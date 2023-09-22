# Geological Survey 1 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Interesting... These readings suggest that you may also find gold, diamonds, cybernite, and redstone farther down in the subsurface.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m7_cave1_06end