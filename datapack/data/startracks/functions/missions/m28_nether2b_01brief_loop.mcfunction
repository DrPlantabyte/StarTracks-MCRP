# Nether 2B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"When you are ready, brave clo- brave cadet, build the AI singularity.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Then kill it and take it's Quantum Reactor.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m28_nether2b_02main_start