# Base Builder 1D briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Finally, no base is complete without a cloning bed. Craft a white cloning bed and place it in your base (and sleep on it too).","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"I'll give you a house warming gift when you do.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m6_base1d_02main_start