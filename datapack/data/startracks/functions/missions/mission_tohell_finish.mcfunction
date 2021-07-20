# mission To Hell
setblock 2 3 7 minecraft:bedrock replace
scoreboard objectives remove t_tohell
scoreboard objectives remove o_tohell
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Good work! Here, take this. I think you will need it.","color":"white"}]
give @a minecraft:potion{"Potion": "minecraft:fire_resistance"} 1
function startracks:missions/mission_aisingularit_setup
