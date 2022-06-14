# Nether 1C briefing loop
scoreboard players add @a _st_briefing 1
execute as @a at @s if score @s _st_briefing matches 30 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Fascinating! It appears to be a bryophyte, some kind of wart, made of neutron-dense elements. It must be a netherspace native plant.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 190 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~
execute as @a at @s if score @s _st_briefing matches 190 run tellraw @s ["",{"text":"[Chief Scientist Alex] ","color":"green"},{"text":"Cadet, this is a clue to the invader's dark-photon technology. Go to netherspace collect more samples and then return to this world.","color":"white"}]
execute as @a at @s if score @s _st_briefing matches 350.. run function startracks:missions/m18_nether1c_02main_start