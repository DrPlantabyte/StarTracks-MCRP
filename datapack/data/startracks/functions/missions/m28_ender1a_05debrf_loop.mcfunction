# Ender 1A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Yes! Take that, invaders! You cannot stop the Terran Space Union!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150.. run function startracks:missions/m28_ender1a_06end