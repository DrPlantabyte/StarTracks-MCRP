# Geological Survey 2 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Sensors indicate that this planet harbors fully subterranean ecosystems, including underground plants with bioluminescent fruit.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Azalea trees tend to grow above these underground forests.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 310 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"The Terran Space Union installed a microscopic mass spectrometer in your mouth. If you could just taste some glowing fruit, I can study it.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 470.. run function startracks:missions/m14_cave2_02main_start