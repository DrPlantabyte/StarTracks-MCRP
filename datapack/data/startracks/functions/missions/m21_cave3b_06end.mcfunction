# Geological Survey 3B cleanup
give @a minecraft:diamond_pickaxe{"Enchantments": [{"id": "fortune", "lvl": 3}, {"id": "unbreaking", "lvl": 3}]} 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m22_cave3c_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m21_cave3b