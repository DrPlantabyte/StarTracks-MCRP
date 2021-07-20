# mission Find a Village
setblock 2 2 11 minecraft:bedrock replace
setblock 2 3 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_findavillage_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"While you're exploring, keep an eye out for the Boid Villagers. They've requested your help, and unfortunately I forgot the coordinates of their village.","color":"white"}]
scoreboard objectives add o_findavillage minecraft.custom:minecraft.talked_to_villager "Find a Villager"
give @a written_book{pages:['{"text":"While you\'re exploring, keep an eye out for the Boid Villagers. They\'ve requested your help, and unfortunately I forgot the coordinates of their village."}'],title:"Find a Village",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}