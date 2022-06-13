# Geological Survey 3E cleanup
give @a minecraft:diamond_block 3
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m25_guard0_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m24_cave3e