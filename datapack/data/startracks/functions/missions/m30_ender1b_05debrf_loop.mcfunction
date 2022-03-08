# Ender 1B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Success! The crystal has been reprogrammed to move in the direction of the invader's Ender Portal when thrown.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m30_ender1b_06end