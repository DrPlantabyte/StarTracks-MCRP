# Ender 1D debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Incredible! Cadet, you have earned a great victory for the Terran Space Union!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150.. run function startracks:missions/m31_ender1d_06end