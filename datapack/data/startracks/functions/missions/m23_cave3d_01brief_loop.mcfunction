# Geological Survey 3d briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"This is bad! The Sculk infection is maturing, producing Sculk Catalysts that are emitting the spores whenever a creature dies nearby.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Cadet, I need more data. Find and break 3 Sculk Catalysts.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310.. run function startracks:missions/m23_cave3d_02main_start