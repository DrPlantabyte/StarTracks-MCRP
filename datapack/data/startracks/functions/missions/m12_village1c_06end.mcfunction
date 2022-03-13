# Village 1C cleanup
give @a minecraft:iron_block 4
give @a minecraft:carved_pumpkin 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m13_farm2_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m12_village1c