# Geological Survey 1 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Greetings! I'm the Terran Space Union's chief science officer, Dr. Alex. I have a mission for you","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"While you are exploring, please assist me with a geological survey of the minerals on this world.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 310 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"All you need to do is mine 32 cubic meters of iron ore. I'll reward you with a brand new space suit.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 450.. run function startracks:missions/m7_cave1_02main_start