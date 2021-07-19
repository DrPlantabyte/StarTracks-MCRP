# build a base mission part: 1
execute as @a if score @s stonebricks matches 0 run scoreboard objectives setdisplay sidebar wbeds
execute as @a if score @s stonebricks matches 0 run scoreboard players set @s stonebricks 100
execute as @a if score @s stonebricks matches 0.. if score @s wbeds matches 0.. run function startracks:missions/mission_basebuilder_finish