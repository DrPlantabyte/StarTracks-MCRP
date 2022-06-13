# Nether 2B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"When you are ready, brave clo- brave cadet, build the AI singularity by making a T with 4 blocks of Neutron Sand and then placing 3 Xeno-Borg Skulls on top.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Then kill it and take it's Quantum Reactor.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310.. run function startracks:missions/m30_nether2b_02main_start