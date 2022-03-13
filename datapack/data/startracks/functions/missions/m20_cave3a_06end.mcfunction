# Geological Survey 3A cleanup
give @a minecraft:potion{"Potion": "minecraft:night_vision"} 2
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m21_cave3b_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_depth