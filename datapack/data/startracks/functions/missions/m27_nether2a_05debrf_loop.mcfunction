# Nether 2A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"That was a lot of work just to get one Xeno-Borg skull. Fortunately, my duplicator invention can produce near-perfect copies. Here you go!","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m27_nether2a_06end