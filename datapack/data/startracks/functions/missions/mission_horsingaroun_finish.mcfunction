# mission Horsing Around
setblock 2 3 13 minecraft:bedrock replace
scoreboard objectives remove t_horsingaroun
scoreboard objectives remove o_horsingaroun
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Now you can explore far and wide. Here's a saddle for your horse.","color":"white"}]
give @a minecraft:saddle 1
