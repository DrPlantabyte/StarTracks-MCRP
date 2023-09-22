# Guard0 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30.. run function startracks:missions/m26_guard0_06end