# Village 1C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"The representative from the Boid Federation tells me that the Invaders are sending robot pillagers to harass the villagers","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Go kill a couple of them to send a message that we're serious about defending the Boids (and selling them defense contracts)","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m12_village1c_02main_start