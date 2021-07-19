# function runs once on first world load 
## respawn counter
scoreboard objectives add clone_count deathCount "Clone #"
scoreboard objectives setdisplay list clone_count
scoreboard objectives setdisplay belowName clone_count
## starter hut
execute positioned 8 68 8 run function startracks:missions/make_start_hut
