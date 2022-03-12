# Start 2 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Splendid! The crafting station will help you convert resources into useful items.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m2_start2_06end