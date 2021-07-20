# mission Dragon Slayer
setblock 2 3 5 minecraft:bedrock replace
scoreboard objectives remove t_dragonslayer
scoreboard objectives remove o_dragonslayer
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Well done! That'll show the invaders who's boss! You make the Terran Space Union proud! Enjoy this bounty payment for the dragon's head","color":"white"}]
give @a minecraft:gold_block 35
give @a minecraft:gold_block 36
