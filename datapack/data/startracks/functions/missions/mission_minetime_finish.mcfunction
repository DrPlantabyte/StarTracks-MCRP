# mission Mine Time
setblock 2 3 7 minecraft:bedrock replace
scoreboard objectives remove t_minetime
scoreboard objectives remove o_minetime
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"You have a bright future, clone- and mean cadet. The Terran Space Union could use more hard-working cadets like you.","color":"white"}]
give @a minecraft:cookie 11
function startracks:missions/mission_tohell_setup
