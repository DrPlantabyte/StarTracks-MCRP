# Nether 1D briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"But in order to make nanite serum, you will also need a source of nanites.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"You should be able to, *ahem*, 'liberate' some from one of those fire-shooting probes","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 290.. run function startracks:missions/m19_nether1d_02main_start