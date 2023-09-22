# Geological Survey 3d debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Unbelievable! The Sculk did not get here by accident! Some evil being has been cultivating it, protecting it, and helping it spread.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"There's some kind of Sculk Warden on this world. They probably have some kind of Sculk laboratory hidden deep underground.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 350.. run function startracks:missions/m23_cave3d_06end