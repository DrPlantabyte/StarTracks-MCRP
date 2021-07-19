# build a base mission part: 1
setblock 3 3 3 minecraft:bedrock replace
scoreboard objectives remove stonebricks
scoreboard objectives remove wbeds
scoreboard objectives remove craft_furnace
tellraw @a [{"text":"[Commander Steve] ","color":"blue"},{"text":"Yes, that looks like a good base. Congratulations! Here's a reward for your efforts.","color":"white"}]
give @a minecraft:blue_carpet 64
give @a minecraft:yellow_carpet 64
give @a minecraft:glass 64
give @a minecraft:iron_door 4