# Farming 1A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"According to my calculations, you will need to start your own agriculture operation in order to assure your survival on this planet.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Many edible species have already been seeded on this world. Simply break some tall grass to find Space Wheat Seeds","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m8_farm1a_02main_start