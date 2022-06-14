# Party 1 cleanup
give @a minecraft:firework_rocket{"Fireworks": {"Flight": 2, "Explosions": [{"Type": 2, "Colors": [14602026], "FadeColors": [2437522]}]}} 7
setblock 7 7 7 minecraft:bedrock destroy
function startracks:missions/m26_guard0_00start
scoreboard objectives setdisplay sidebar
scoreboard objectives remove _st_m25_party1