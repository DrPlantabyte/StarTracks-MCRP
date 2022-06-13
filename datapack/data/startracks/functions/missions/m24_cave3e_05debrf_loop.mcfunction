# Geological Survey 3E debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Another space villain brought to justice! Good work, clone! Take these blocks of diamond as your reward","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m24_cave3e_06end