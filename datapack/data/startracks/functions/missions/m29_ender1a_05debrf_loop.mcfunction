# Ender 1A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Yes! Take that, invaders! You cannot stop the Terran Space Union!","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m29_ender1a_06end