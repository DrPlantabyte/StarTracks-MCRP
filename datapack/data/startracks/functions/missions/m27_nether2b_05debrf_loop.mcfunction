# Nether 2B debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Victory! Well done clone! You've made the Terran Space Union proud!","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 150 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 150 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Please accept your contractual 0.001% royalty payment from the technology we've gained by your efforts.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 290.. run function startracks:missions/m27_nether2b_06end