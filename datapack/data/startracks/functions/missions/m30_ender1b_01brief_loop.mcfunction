# Ender 1B briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Their phase crystals are an advanced form of teleportation technology. However, I may be able to hack into it's memory with the use of nanite dust.","color":"white"}]
execute as @a if score @s _st_briefing matches 210.. run function startracks:missions/m30_ender1b_02main_start