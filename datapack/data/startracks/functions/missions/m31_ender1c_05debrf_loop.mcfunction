# Ender 1C debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Yes, this is it! This is the portal to Ender, homeworld of the Invaders.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Here, take these diamonds as a reward for your dedication. You're probably going to need them.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m31_ender1c_06end