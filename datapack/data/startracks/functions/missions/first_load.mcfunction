# function runs once on first world load 
## respawn counter
scoreboard objectives add clone_count deathCount "Clone #"
scoreboard objectives setdisplay list clone_count
scoreboard objectives setdisplay belowName clone_count
## starter hut
setworldspawn 8 68 8
execute positioned 8 68 8 run function startracks:missions/make_start_hut
function startracks:missions/m0_story_start