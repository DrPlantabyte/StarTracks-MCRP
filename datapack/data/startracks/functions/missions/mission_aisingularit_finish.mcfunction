# mission AI Singularity
setblock 2 3 7 minecraft:bedrock replace
scoreboard objectives remove t_aisingularit
scoreboard objectives remove o_aisingularit
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"I guess I should have warned you that AI singularities are hostile to all life. Anyway, you can use it's quantum reactor to create a powerful beacon.","color":"white"}]
give @a minecraft:lapis_block 3
