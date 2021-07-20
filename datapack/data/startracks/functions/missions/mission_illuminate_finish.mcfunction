# mission Illuminate
setblock 2 3 11 minecraft:bedrock replace
scoreboard objectives remove t_illuminate
scoreboard objectives remove o_illuminate
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"They can sleep well, now. Splash some emeralds around to improve the mood a little more.","color":"white"}]
give @a minecraft:emerald 5
function startracks:missions/mission_pillage_setup
