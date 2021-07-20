# mission Illuminate
setblock 2 2 11 minecraft:bedrock replace
setblock 2 3 11 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_illuminate_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"The villagers are unhappy with the Terran Space union for forgetting to mention the cyborg-zombies in the colony contract. See if you can fix things by lighting up the village with 64 lights.","color":"white"}]
scoreboard objectives add o_illuminate minecraft.used:minecraft.torch "Place 64 Lights"
scoreboard players set @a o_illuminate 0
give @a written_book{pages:['{"text":"The villagers are unhappy with the Terran Space union for forgetting to mention the cyborg-zombies in the colony contract. See if you can fix things by lighting up the village with 64 lights."}'],title:"Illuminate",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}