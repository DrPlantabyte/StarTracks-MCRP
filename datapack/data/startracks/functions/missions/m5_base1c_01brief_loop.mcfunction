# Base Builder 1C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Next you'll need lots of light to repel the invaders' dark-photon monster teleportation technology. 20 lights should be enough to start with.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m5_base1c_02main_start