# Ender 1A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"These Invaders of Ender and their cybernetic minions are really causing a lot of trouble. It's time to take the fight to them!","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Go take out a few of the invaders and collect their phase crystals.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m29_ender1a_02main_start