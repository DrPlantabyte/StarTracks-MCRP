# Village2 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"The Boids are complaining again. They say that nobody is buying their wares. Do some trading with them to improve their economy.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m15_village2_02main_start