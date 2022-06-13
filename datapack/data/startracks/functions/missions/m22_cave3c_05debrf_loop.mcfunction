# Geological Survey 3C debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Excelent work, clone- I mean cadet! Chief Scientist Alex, what's the diagnosis?","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150.. run function startracks:missions/m22_cave3c_06end