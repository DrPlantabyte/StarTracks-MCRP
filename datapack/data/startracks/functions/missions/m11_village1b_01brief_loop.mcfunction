# Village1B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"According to my translator, the Boids are telling you that they need more lights around the village.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m11_village1b_02main_start