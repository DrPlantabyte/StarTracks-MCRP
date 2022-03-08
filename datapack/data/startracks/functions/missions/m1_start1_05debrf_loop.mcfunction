# Start 1 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30.. run function startracks:missions/m1_start1_06end