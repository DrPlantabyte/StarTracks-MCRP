# Village 1C debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"That'll teach them!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 130 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Here's a Defendo-Bot defense kit to protect the village while you're away. I've lost the manual, but I'm sure you'll figure it out.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 290.. run function startracks:missions/m12_village1c_06end