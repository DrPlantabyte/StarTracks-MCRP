# Village1a debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good work! Here's some emeralds to trade with them. Don't spend it all in one place.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m10_village1a_06end