# mission Dragon Slayer
setblock 2 2 5 minecraft:bedrock replace
setblock 2 3 5 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_dragonslayer_loop"}
tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"The leader of our galactic enemies, the Invaders of Ender, is a space dragon. Follow the seeker to find and activate one of their old portals. Then slay the dragon in the name of the Terran Space Union!","color":"white"}]
scoreboard objectives add o_dragonslayer minecraft.killed:minecraft.ender_dragon "Slay the Dragon"
give @a written_book{pages:['{"text":"The leader of our galactic enemies, the Invaders of Ender, is a space dragon. Follow the seeker to find and activate one of their old portals. Then slay the dragon in the name of the Terran Space Union!"}'],title:"Dragon Slayer",author:"Commander Steve",display:{Lore:["Mission Briefing"]}}