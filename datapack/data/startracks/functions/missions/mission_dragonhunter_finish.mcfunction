# mission Dragon Hunter
setblock 2 3 5 minecraft:bedrock replace
scoreboard objectives remove t_dragonhunter
scoreboard objectives remove o_dragonhunter
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Very good! Throw it and it will point the way to the nearest invader portal. Take this. You may need it","color":"white"}]
give @a minecraft:bow 1
give @a minecraft:arrow 64
function startracks:missions/mission_dragonslayer_setup
