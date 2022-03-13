# Nether 1B cleanup
give @a minecraft:nether_wart 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m18_nether1c_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m17_nether1b