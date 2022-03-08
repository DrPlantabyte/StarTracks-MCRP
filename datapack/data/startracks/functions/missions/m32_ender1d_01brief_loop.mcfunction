# Ender 1D briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"According to intel, the Invaders of Ender are lead by the Ender Dragon, a being of great power and cunning.","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Your mission, if you choose to accept it, is to go to Ender and slay the Ender Dragon","color":"white"}]
execute as @a if score @s _st_briefing matches 390 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Now prepare yourself! You will need to be prepared for a very difficult fight.","color":"white"}]
execute as @a if score @s _st_briefing matches 570.. run function startracks:missions/m32_ender1d_02main_start