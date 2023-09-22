# Party 1 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"With that dirty business out of the way, why don't you relax a little? Oh, I know!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 170 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 170 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"It just so happens to be the Terran Space Union's birthday tomorrow. Your next mission is to bake a birthday cake!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 310.. run function startracks:missions/m25_party1_02main_start