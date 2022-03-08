# Nether 1C debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"I see... This organism creates nanoscopic fuels. You can use it to create nanite serums. I'd recommend making fire protection nanite serum.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m18_nether1c_06end