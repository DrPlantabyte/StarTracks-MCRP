# Base Builder 1C debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good job!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 130.. run function startracks:missions/m5_base1c_06end