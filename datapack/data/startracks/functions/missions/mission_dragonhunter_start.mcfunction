# mission Dragon Hunter
setblock 2 2 5 minecraft:bedrock replace
setblock 2 3 5 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_dragonhunter_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"Aha! You have acquired an invader teleportation device. If you apply nanites to it, you should be able to hack into it's nano-processor to find the invader's home base.","color":"white"}]
scoreboard objectives add o_dragonhunter minecraft.crafted:minecraft.ender_eye "Craft an Ender Seeker"
give @a written_book{pages:['{"text":"Aha! You have acquired an invader teleportation device. If you apply nanites to it, you should be able to hack into it\'s nano-processor to find the invader\'s home base."}'],title:"Dragon Hunter",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}