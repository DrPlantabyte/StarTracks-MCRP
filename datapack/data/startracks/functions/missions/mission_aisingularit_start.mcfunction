# mission AI Singularity
setblock 2 2 7 minecraft:bedrock replace
setblock 2 3 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_aisingularit_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Our scientists report that these alien cyborgs contain quantum tri-state AI processors. If you can combine three of their skulls with neutron sand, you may be able to create the most powerful AI possible: an AI singularity!","color":"white"}]
scoreboard objectives add o_aisingularit minecraft.killed:minecraft.wither "Conquer the AI Singularity"
give @a written_book{pages:['{"text":"Our scientists report that these alien cyborgs contain quantum tri-state AI processors. If you can combine three of their skulls with neutron sand, you may be able to create the most powerful AI possible: an AI singularity!"}'],title:"AI Singularity",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}