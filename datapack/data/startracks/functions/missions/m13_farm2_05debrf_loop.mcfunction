# Farming 2 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Good job! Bee sure to surround the hive with flowers. You can also lure the bees to your hive with flowers.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Here's a sampling of Mega-Bee products you can make. Remember to use smoke to keep the Mega-Bees calm when you interact with their hive.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 330.. run function startracks:missions/m13_farm2_06end