# Nether 1D cleanup
give @a minecraft:glass_bottle 3
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m20_cave3a_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m19_nether1d