# Nether 1C debrief loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"I see... This organism creates nanoscopic fuels. You can use it to create nanite serums. I'd recommend making fire protection nanite serum.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190.. run function startracks:missions/m18_nether1c_06end