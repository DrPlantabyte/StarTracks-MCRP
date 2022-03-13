# Farming 1A cleanup
give @a minecraft:beetroot_seeds 3
give @a minecraft:pumpkin_seeds 3
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m9_farm1b_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m8_farm1a