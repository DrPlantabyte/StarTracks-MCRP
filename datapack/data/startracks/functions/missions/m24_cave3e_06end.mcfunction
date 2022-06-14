# Geological Survey 3E cleanup
give @a minecraft:diamond_block 3
give @a minecraft:potion{"Potion": "minecraft:regeneration"} 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m25_party1_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m24_cave3e