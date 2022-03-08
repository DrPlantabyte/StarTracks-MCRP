# Guard2 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good work! Let's celebrate your success with some grilled fish!","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m25_guard2_06end