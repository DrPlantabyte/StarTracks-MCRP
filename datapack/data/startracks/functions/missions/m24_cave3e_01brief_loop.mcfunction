# Geological Survey 3E briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Space cadet! Your mission is to find this vile Sculk Warden, and destroy them!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150.. run function startracks:missions/m24_cave3e_02main_start