# Village2 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good job! They've given us a 4/5 star review on SpaceBook. Wait... I'm picking up something on our sensors...","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m15_village2_06end