# Nether 1A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Gadzooks! The invaders are using netherspace to send an attack squad. Prepare to fight!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m16_nether1a_02main_start