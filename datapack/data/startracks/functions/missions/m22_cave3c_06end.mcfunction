# Geological Survey 3C cleanup
give @a minecraft:potion{"Potion": "minecraft:regeneration"} 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m23_cave3d_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m22_cave3c