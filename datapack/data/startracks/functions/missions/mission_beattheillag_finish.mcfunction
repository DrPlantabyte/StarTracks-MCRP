# mission Beat the Illagers
setblock 2 3 11 minecraft:bedrock replace
scoreboard objectives remove t_beattheillag
scoreboard objectives remove o_beattheillag
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Yes! Feel the might of the Terran Space Union!","color":"white"}]
give @a minecraft:enchanted_golden_apple 1
