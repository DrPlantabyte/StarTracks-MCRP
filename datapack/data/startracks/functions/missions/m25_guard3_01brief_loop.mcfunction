# Guard3 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"With the elder guardians defeated, the climate is returning to normal. Here's a proper reward for your heroic actions.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m25_guard3_02main_start