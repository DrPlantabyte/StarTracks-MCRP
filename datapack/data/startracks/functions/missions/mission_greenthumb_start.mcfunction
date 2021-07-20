# mission Green Thumb
setblock 2 2 13 minecraft:bedrock replace
setblock 2 3 13 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_greenthumb_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Getting hungry? It's time you start planting a farm. Plant space wheat 24 seeds and I'll give you a special treat!","color":"white"}]
scoreboard objectives add o_greenthumb minecraft.used:minecraft.wheat_seeds "Plant 24 Seeds"
scoreboard players set @a o_greenthumb 0
give @a written_book{pages:['{"text":"Getting hungry? It\'s time you start planting a farm. Plant space wheat 24 seeds and I\'ll give you a special treat!"}'],title:"Green Thumb",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}