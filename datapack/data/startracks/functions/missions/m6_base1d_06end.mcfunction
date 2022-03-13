# Base Builder 1D cleanup
give @a minecraft:glass 64
give @a minecraft:red_carpet 64
give @a minecraft:yellow_concrete 64
give @a minecraft:blue_concrete 64
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m7_cave1_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m6_base1d