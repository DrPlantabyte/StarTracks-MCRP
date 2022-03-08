# Guard1 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"We are detecting strange signals from a strange monuments out in the ocean. It appears to be interfering with the planet's climate systems.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Go find one of these monuments and if you encounter any unusual organisms, dissect one of them for thorough identification.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 350.. run function startracks:missions/m23_guard1_02main_start