# setup function
setworldspawn 8 68 8
## first, use marker block to track first load
gamerule commandBlockOutput false
forceload add 0 0 15 15
execute unless block 1 1 1 minecraft:netherite_block run schedule function startracks:missions/first_load 1t
## finally, place marker block
### reserving loaded space for mission machines
execute unless block 1 1 1 minecraft:netherite_block run fill 0 0 0 15 15 15 minecraft:bedrock
setblock 1 1 1 minecraft:netherite_block