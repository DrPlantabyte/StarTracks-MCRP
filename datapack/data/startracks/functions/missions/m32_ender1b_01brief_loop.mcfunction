# Ender 1B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Their phase crystals are an advanced form of teleportation technology. However, I may be able to hack into it's memory with the use of nanite dust.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m32_ender1b_02main_start