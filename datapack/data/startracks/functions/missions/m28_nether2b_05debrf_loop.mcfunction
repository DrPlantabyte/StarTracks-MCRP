# Nether 2B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Victory! Well done clone! You've made the Terran Space Union proud!","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Please accept your contractual 0.001% royalty payment from the technology we've gained by your efforts.","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m28_nether2b_06end