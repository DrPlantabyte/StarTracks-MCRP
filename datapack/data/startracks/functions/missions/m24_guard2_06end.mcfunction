# Guard2 cleanup
give @a minecraft:cooked_cod 3
give @a minecraft:golden_apple 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m25_guard3_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m24_guard2