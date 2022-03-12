# Nether 1B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good work! Looks like one of them dropped something. Dr. Alex, could you please identify this?","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170.. run function startracks:missions/m17_nether1b_06end