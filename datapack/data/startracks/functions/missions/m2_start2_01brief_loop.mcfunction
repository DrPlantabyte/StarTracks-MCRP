# Start 2 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Now that you've explored a little, make a crafting station so you can produce your own supplies as you bravely explore this new world.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m2_start2_02main_start