# Guard2 cleanup
give @a minecraft:cooked_cod 3
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m29_guard3_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m28_guard2