# Nether 2A cleanup
give @a minecraft:wither_skeleton_skull 3
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m28_nether2b_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m27_nether2a