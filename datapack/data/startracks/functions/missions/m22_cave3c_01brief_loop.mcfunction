# Geological Survey 3C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Space cadet! We've detected traces of Sculk spores in those rocks you just mined!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Sculk is an invasive and hostile organism that spreads like a fungus, consuming both life and stone. It will devour the world from within!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 330 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 330 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"This world has been infected with Sculk! Find the Sculk infestation and mine a sample so we can locate the source.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 470.. run function startracks:missions/m22_cave3c_02main_start