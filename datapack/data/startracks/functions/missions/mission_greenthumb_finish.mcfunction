# mission Green Thumb
setblock 2 3 13 minecraft:bedrock replace
scoreboard objectives remove t_greenthumb
scoreboard objectives remove o_greenthumb
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Now you can fill your belly with bread. And pie. I baked you a pie.","color":"white"}]
give @a minecraft:pumpkin_pie 1
function startracks:missions/mission_horsingaroun_setup
