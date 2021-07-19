# build a base mission part: 1
setblock 3 2 3 minecraft:bedrock replace
setblock 3 3 3 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_basebuilder_loop"}
## briefing
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"You call that dirt-hole an exploration outpost? No! Make a proper outpost, with 100 stone bricks and a white cloning bed.","color":"white"}]
scoreboard objectives add stonebricks minecraft.used:minecraft.stone_bricks "Stone Bricks"
scoreboard players set @a stonebricks -100
scoreboard objectives setdisplay sidebar stonebricks
scoreboard objectives add wbeds minecraft.used:minecraft.white_bed "White Cloning Bed"
scoreboard players set @a wbeds -1