# Ender 1D briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"According to intel, the Invaders of Ender are led by the Ender Dragon, a being of great power and cunning.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Your mission, if you choose to accept it, is to go to Ender and slay the Ender Dragon","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 310 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Now prepare yourself! It will be a very difficult fight.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 430.. run function startracks:missions/m35_ender1d_02main_start