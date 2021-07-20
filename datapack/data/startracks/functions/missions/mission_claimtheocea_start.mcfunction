# mission Claim the Ocean Monument
setblock 2 2 9 minecraft:bedrock replace
setblock 2 3 9 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_claimtheocea_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"We are detecting three powerful alien life forms in the ocean, guarding a strange submerged monument. Go claim it for the Terran Space Union and dissect it's three guardians for Science!","color":"white"}]
scoreboard objectives add o_claimtheocea minecraft.killed:minecraft.elder_guardian "Kill 3 Elder Guardians (for science)"
give @a written_book{pages:['{"text":"We are detecting three powerful alien life forms in the ocean, guarding a strange submerged monument. Go claim it for the Terran Space Union and dissect it\'s three guardians for Science!"}'],title:"Claim the Ocean Monument",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}