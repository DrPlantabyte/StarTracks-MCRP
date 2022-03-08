# Nether 1D debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"You can now build a nanite factory and start making nanite serum. Here's some glass bottles to help get you started.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m19_nether1d_06end