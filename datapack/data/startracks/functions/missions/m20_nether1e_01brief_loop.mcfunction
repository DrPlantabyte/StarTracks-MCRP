# Nether 1E briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Your excursion into netherspace has exposed you to hazardous contaminants. You should go wash it off in water.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m20_nether1e_02main_start