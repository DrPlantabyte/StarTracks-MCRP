# Guard3 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"With the elder guardians defeated, the climate is returning to normal. Here's a proper reward for your heroic actions.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m26_guard3_02main_start