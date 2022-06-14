# Ender 1A cleanup
give @a minecraft:ender_pearl 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m33_ender1b_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m32_ender1a