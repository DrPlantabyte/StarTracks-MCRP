# Base Builder 1D debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Well done! What a beautiful little hovel you've built. Here, take these materials to help decorate your new home.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m6_base1d_06end