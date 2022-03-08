# Ender 1C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Use the Ender Seeker to find the portal to the invader's homeworld, and then stand on it so our sensors can study it.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m31_ender1c_02main_start