# Nether 2A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"The invader technology is beyond our own, but I know of a way to develop superior quantum technology.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"It's risky, but if you combine 3 Xeno-Borg skulls with 4 cubic meters of Neutron Sand, then the cyborg processors with overclock, creating an A.I. singularity","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 330 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 330 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"The problem with singularities is that they always attack their creator. But after you kill it, you can use it's core to create incredibly advanced technology.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 490.. run function startracks:missions/m30_nether2a_02main_start