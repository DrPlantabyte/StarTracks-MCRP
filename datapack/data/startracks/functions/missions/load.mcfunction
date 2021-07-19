# setup function
## first, use marker block to track first load
forceload add 0 0 15 15
execute if block 1 1 1 minecraft:netherite_block as @r run function startracks:missions/make_start_hut 
## make spawn base
## finally, place marker block
fill 0 0 0 2 2 2 minecraft:bedrock
setblock 1 1 1 minecraft:netherite_block