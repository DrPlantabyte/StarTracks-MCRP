# Party 1 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Happy birthday, Terran Space Union! Here's some fireworks to light-up the sky. Don't let anyone rain on your parade!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m25_party1_06end