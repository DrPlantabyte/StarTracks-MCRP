# Base Builder 1B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Next you'll need a furnace so that you can smelt toxic ores into metal ingots and cook your food too.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m4_base1b_02main_start