# Nether 1A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Gadzooks! The invaders are using hyperspace to send an attack squad. Prepare to fight!","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m16_nether1a_02main_start