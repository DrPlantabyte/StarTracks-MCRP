# Geological Survey 3C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Space cadet! Those rocks you've just mined are contaminated with Sculk DNA!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 150 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Sculk is an invasive and hostile organism that spreads like a fungus, devouring the world from within!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 290 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 290 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"This world has been infected with the Sculk! Search for it's spores and take a sample so we can locate the source.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 430.. run function startracks:missions/m22_cave3c_02main_start