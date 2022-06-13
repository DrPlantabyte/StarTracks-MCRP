# Guard2 debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good work! Let's celebrate your success with some grilled fish!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150.. run function startracks:missions/m27_guard2_06end