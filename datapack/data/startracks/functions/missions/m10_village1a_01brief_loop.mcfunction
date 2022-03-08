# Village1a briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"It's time we start helping the Boid Villagers. Go find a village and make contact with them","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m10_village1a_02main_start