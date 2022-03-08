# Nether 1E debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"You're clean now! I've taken the liberty to install a self-cleaning upgrade to your DNA. You should be fine from now on.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m20_nether1e_06end