# Geological Survey 2 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Fascinating! Readings suggest that the fruit is both delicious and nutritious, with only a few side-effects.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m14_cave2_06end