# mission Horsing Around
setblock 2 2 13 minecraft:bedrock replace
setblock 2 3 13 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_horsingaroun_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Walking is a slow way to explore. You should go tame a Cosmo-Horse so you can ride it.","color":"white"}]
scoreboard objectives add o_horsingaroun minecraft.custom:minecraft.horse_one_cm "Ride a Horse"
scoreboard players set @a o_horsingaroun 0
give @a written_book{pages:['{"text":"Walking is a slow way to explore. You should go tame a Cosmo-Horse so you can ride it."}'],title:"Horsing Around",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}