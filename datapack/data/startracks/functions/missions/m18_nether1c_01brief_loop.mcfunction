# Nether 1C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Fascinating! It appears to be a bryophyte, some kind of wart, made of neutron-dense elements. It must be a netherspace native plant.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Cadet, this is a clue to the invader's dark-photon technology. You must go to netherspace collect more samples.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m18_nether1c_02main_start