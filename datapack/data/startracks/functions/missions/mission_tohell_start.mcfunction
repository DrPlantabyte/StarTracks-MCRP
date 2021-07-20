# mission To Hell
setblock 2 2 7 minecraft:bedrock replace
setblock 2 3 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_tohell_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Our scientists have detected that this world possesses a hyper-spatial fourth dimension, rich in neutron sand. You should be able to access it by making a giant flaming obsidian loop. Travel there and take a sample of the neutron sand.","color":"white"}]
scoreboard objectives add o_tohell minecraft.picked_up:minecraft.soul_sand "Find Neutron Sand"
give @a written_book{pages:['{"text":"Our scientists have detected that this world possesses a hyper-spatial fourth dimension, rich in neutron sand. You should be able to access it by making a giant flaming obsidian loop. Travel there and take a sample of the neutron sand."}'],title:"To Hell",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}