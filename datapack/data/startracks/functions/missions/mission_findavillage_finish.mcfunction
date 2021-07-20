# mission Find a Village
setblock 2 3 11 minecraft:bedrock replace
scoreboard objectives remove t_findavillage
scoreboard objectives remove o_findavillage
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"You found them! Do try to keep them happy and safe. They took out a big loan from the Terran Space Union and we don't want them to default on their debt.","color":"white"}]
give @a minecraft:golden_apple 1
function startracks:missions/mission_illuminate_setup
