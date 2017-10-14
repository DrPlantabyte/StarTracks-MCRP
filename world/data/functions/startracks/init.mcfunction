# world initialization
gamerule commandBlockOutput false
scoreboard objectives add hasHelmet dummy
scoreboard objectives add hasAir dummygamerule commandBlockOutput falsegamerule logAdminCommands false
gamerule gameLoopFunction startracks:spacesuit_update

# how air works:
# worlds/area where the void is exposed (y=0 is air), then the areas with air 
# are defined by the presence of barrier blocks at y+128. Thus to make a 
# spaceship, clear out the blocks to expose the void, then build your
# spaceship, then clone it up +128y, then fill and replace it with barrier 
# blocks.
# 
# Logic:
# if block at y=0 is air:
# - if block at y=~128 is not a barrier block and player not wearing a helmet:
#   - apply wither
# 
# 
