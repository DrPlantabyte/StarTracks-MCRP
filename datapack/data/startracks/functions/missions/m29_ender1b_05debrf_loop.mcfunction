# Ender 1B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Success! The crystal has been reprogrammed to move in the direction of the invader's Ender Portal when thrown.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m29_ender1b_06end