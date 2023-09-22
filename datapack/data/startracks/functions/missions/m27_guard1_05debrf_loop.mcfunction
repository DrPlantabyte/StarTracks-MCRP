# Guard1 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Fascinating! These creatures are not native to this planet. They came from somewhere else, and it appears they are trying to flood the whole planet!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"If not stopped, they may render this plannet uninhabitable to air-breathing organisms.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 330.. run function startracks:missions/m27_guard1_06end