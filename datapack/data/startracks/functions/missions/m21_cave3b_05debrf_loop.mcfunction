# Geological Survey 3B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Perfect! With this information, I'm able to craft for you a cybernetically enhanced pick that is able to more efficiently gather resources.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m21_cave3b_06end