# Farming 1B cleanup
give @a minecraft:name_tag 12
give @a minecraft:lead 1
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m10_village1a_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m9_farm1b