# mission Claim the Ocean Monument
setblock 2 3 9 minecraft:bedrock replace
scoreboard objectives remove t_claimtheocea
scoreboard objectives remove o_claimtheocea
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Fascinating! Our scientists have discovered a new element from their remains. You may keep the left-over samples.","color":"white"}]
give @a minecraft:bundle{"Items": [{"Slot": 0, "id": "minecraft:prismarine_shard", "Count": 32}, {"Slot": 1, "id": "minecraft:prismarine_crystals", "Count": 31}]} 1
