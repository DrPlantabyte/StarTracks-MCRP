# Geological Survey 1 cleanup
give @a minecraft:iron_helmet 1
give @a minecraft:iron_chestplate 1
give @a minecraft:iron_leggings 1
give @a minecraft:iron_boots 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m8_farm1a_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m7_cave1