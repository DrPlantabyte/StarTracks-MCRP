# Geological Survey 3d cleanup
give @a minecraft:potion{"Potion": "minecraft:regeneration"} 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m24_cave3e_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m23_cave3d