# Guard2 briefing loop
scoreboard players add @a _st_briefing 1
execute as @a if score @s _st_briefing matches 30 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"These ocean-dwelling aliens must be stopped before they flood the whole world!","color":"white"}]
execute as @a if score @s _st_briefing matches 210 run tellraw @s ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"I'm detecting three particularly large ones nearby, emitting energy fields that are manipulating the climate to make it constantly rain. Eliminate them!","color":"white"}]
execute as @a if score @s _st_briefing matches 390.. run function startracks:missions/m25_guard2_02main_start