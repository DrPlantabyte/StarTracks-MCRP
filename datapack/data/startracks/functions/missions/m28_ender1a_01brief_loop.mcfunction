# Ender 1A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"These Invaders of Ender and their cybernetic minions are really causing a lot of trouble. It's time to take the fight to them!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Go take out a few of the invaders and collect their phase crystals.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310.. run function startracks:missions/m28_ender1a_02main_start