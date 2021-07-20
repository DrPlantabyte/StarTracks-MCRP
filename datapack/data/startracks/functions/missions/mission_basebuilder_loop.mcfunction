# build a base mission part: 1
execute as @a if score @s stonebricks matches 40 run scoreboard objectives setdisplay sidebar wbeds
execute as @a if score @s stonebricks matches 40 run scoreboard players set @s stonebricks 41
execute as @a if score @s stonebricks matches 40.. if score @s wbeds matches 1.. run function startracks:missions/mission_basebuilder_finish