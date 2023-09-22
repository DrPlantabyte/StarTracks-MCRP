# Guard3 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30.. run function startracks:missions/m29_guard3_06end