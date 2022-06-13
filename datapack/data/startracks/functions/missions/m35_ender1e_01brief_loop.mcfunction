# Ender 1E briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Without the Ender Dragon, the cyborg threat has been eliminated within 2.5 kilometers of the outpost. Lands farther out may still be dangerous.'","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"There is still much to discover. Safe journey, brave explorer. Over and out.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310.. run function startracks:missions/m35_ender1e_02main_start