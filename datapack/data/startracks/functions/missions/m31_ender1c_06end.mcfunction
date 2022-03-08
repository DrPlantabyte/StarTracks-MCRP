# Ender 1C cleanup
give @a minecraft:diamond 24
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m32_ender1d_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_onframe