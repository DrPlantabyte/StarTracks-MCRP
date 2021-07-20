# mission Pillage
setblock 2 3 11 minecraft:bedrock replace
scoreboard objectives remove t_pillage
scoreboard objectives remove o_pillage
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"All in a day's work for the Terran Space Union! Good work, space cadet.","color":"white"}]
give @a minecraft:emerald 20
function startracks:missions/mission_beattheillag_setup
