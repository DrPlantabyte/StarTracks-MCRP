# Nether 2A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"That was a lot of work just to get one Xeno-Borg skull. Fortunately, my duplicator invention can produce near-perfect copies. Here you go!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m29_nether2a_06end