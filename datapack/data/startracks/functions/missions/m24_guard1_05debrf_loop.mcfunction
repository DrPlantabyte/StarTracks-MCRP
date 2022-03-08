# Guard1 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Fascinating! These creatures are not native to this planet. They came from somewhere else, and it appears they are trying to flood the whole planet.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"If not stopped, they may render this plannet uninhabitable to air-breathing organisms.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m24_guard1_06end