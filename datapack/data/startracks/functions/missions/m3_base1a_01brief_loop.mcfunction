# Base Builder 1A briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"With all the cyborg monsters and kill-bots coming out at night, you'll need to build a defensible base to call home.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Thanks to the latest advancements in budget-saving technology, you can craft a pickaxe from almost any material, even wood!","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m3_base1a_02main_start