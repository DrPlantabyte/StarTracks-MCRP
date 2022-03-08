# Farming 2 cleanup
give @a minecraft:honey_bottle 3
give @a minecraft:blue_candle 3
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m14_cave2_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m13_farm2