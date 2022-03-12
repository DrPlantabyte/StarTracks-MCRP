# Base Builder 1A debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good job! Now go mine some stone.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 130.. run function startracks:missions/m3_base1a_06end