# Nether 2B cleanup
give @a minecraft:gold_block 35
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m32_ender1a_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m31_nether2b