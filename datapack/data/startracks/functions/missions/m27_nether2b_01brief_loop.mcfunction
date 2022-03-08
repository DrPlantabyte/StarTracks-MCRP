# Nether 2B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"When you are ready, brave clo- brave cadet, build the AI singularity.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Then kill it and take it's Quantum Reactor.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 270.. run function startracks:missions/m27_nether2b_02main_start