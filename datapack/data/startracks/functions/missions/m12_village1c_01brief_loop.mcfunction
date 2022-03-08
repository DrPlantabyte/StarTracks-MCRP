# Village 1C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"The representative from the Boid Federation tells me that the Invaders are sending robot pillagers to harass the villagers","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"They hide out in watch towers between raids.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Go destroy a few of these pillagers to send a message that we're serious about defending the Boids (and selling them defense contracts)","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 470.. run function startracks:missions/m12_village1c_02main_start