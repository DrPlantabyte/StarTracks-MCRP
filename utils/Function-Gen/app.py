from mission_maker import *
make_mission(
		mission_name="Dragon Hunter",
		dirpath='.',
		machine_pos=Pos(2, 2, 5),
		trigger_scoreboard_type='minecraft.picked_up:minecraft.ender_pearl',
		trigger_scoreboard_value='1..',
		briefing='Aha! You have acquired an invader teleportation device. If you apply nanites to it, you should be able to hack into it\'s nano-processor to find the invader\'s home base.',
		objective_scoreboard_type='minecraft.crafted:minecraft.ender_eye',
		objective_scoreboard_display_name='Craft an Ender Seeker',
		objective_scoreboard_value='1..',
		debriefing='Very good! Throw it and it will point the way to the nearest invader portal. Take this. You may need it',
		reward_items=[Item('minecraft:bow'), Item('minecraft:arrow', 64)],
		next_mission="Dragon Slayer"
)
make_mission(
		mission_name="Dragon Slayer",
		dirpath='.',
		machine_pos=Pos(2, 2, 5),
		trigger_scoreboard_type='minecraft.picked_up:minecraft.ender_eye',
		trigger_scoreboard_value='1..',
		briefing='The leader of our galactic enemies, the Invaders of Ender, is a space dragon. Follow the seeker to find and activate one of their old portals. Then slay the dragon in the name of the Terran Space Union!',
		objective_scoreboard_type='minecraft.killed:minecraft.ender_dragon',
		objective_scoreboard_display_name='Slay the Dragon',
		objective_scoreboard_value='1..',
		debriefing='Well done! That\'ll show the invaders who\'s boss! You make the Terran Space Union proud! Enjoy this bounty payment for the dragon\'s head',
		reward_items=[Item('minecraft:gold_block', 35), Item('minecraft:gold_block', 36)]
)

make_mission(
		mission_name="Mine Time",
		dirpath='.',
		machine_pos=Pos(2, 2, 7),
		trigger_scoreboard_type='minecraft.crafted:minecraft.stone_pickaxe',
		trigger_scoreboard_value='1..',
		briefing='Now you are ready to mine! You are going to want iron, and lots of it. Mine 40 iron ore to win a prize.',
		objective_scoreboard_type='minecraft.mined:minecraft.iron_ore',
		objective_scoreboard_display_name='Mine 40 Iron Ore',
		objective_scoreboard_value='40..',
		debriefing='You have a bright future, clone- and mean cadet. The Terran Space Union could use more hard-working cadets like you.',
		reward_items=[Item('minecraft:cookie', 11)],
		next_mission="To Hell"
)
make_mission(
		mission_name="To Hell",
		dirpath='.',
		machine_pos=Pos(2, 2, 7),
		trigger_scoreboard_type='minecraft.crafted:minecraft.flint_and_steel',
		trigger_scoreboard_value='1..',
		briefing='Our scientists have detected that this world possesses a hyper-spatial fourth dimension, rich in neutron sand. You should be able to access it by making a giant flaming obsidian loop. Travel there and take a sample of the neutron sand.',
		objective_scoreboard_type='minecraft.picked_up:minecraft.soul_sand',
		objective_scoreboard_display_name='Find Neutron Sand',
		objective_scoreboard_value='1..',
		debriefing='Good work! Here, take this. I think you will need it.',
		reward_items=[Item('minecraft:potion',1,{'Potion':"minecraft:fire_resistance"})],
		next_mission="AI Singularity"
)
make_mission(
		mission_name="AI Singularity",
		dirpath='.',
		machine_pos=Pos(2, 2, 7),
		trigger_scoreboard_type='minecraft.picked_up:minecraft.wither_skeleton_skull',
		trigger_scoreboard_value='1..',
		briefing='Our scientists report that these alien cyborgs contain quantum tri-state AI processors. If you can combine three of their skulls with neutron sand, you may be able to create the most powerful AI possible: an AI singularity!',
		objective_scoreboard_type='minecraft.killed:minecraft.wither',
		objective_scoreboard_display_name='Conquer the AI Singularity',
		objective_scoreboard_value='1..',
		debriefing='I guess I should have warned you that AI singularities are hostile to all life. Anyway, you can use it\'s quantum reactor to create a powerful beacon.',
		reward_items=[Item('minecraft:lapis_block', 3)]
)

make_mission(
		mission_name="Claim the Ocean Monument",
		dirpath='.',
		machine_pos=Pos(2, 2, 9),
		trigger_scoreboard_type='minecraft.custom:minecraft.swim_one_cm',
		trigger_scoreboard_value='20000..',
		briefing='We are detecting three powerful alien life forms in the ocean, guarding a strange submerged monument. Go claim it for the Terran Space Union and dissect it\'s three guardians for Science!',
		objective_scoreboard_type='minecraft.killed:minecraft.elder_guardian',
		objective_scoreboard_display_name='Kill 3 Elder Guardians (for science)',
		objective_scoreboard_value='3..',
		debriefing='Fascinating! Our scientists have discovered a new element from their remains. You may keep the left-over samples.',
		reward_items=[Item('minecraft:bundle', 1, {'Items':[{'Slot':0,'id':'minecraft:prismarine_shard','Count':32},{'Slot':1,'id':'minecraft:prismarine_crystals','Count':31}]})]
)

make_mission(
		mission_name="Find a Village",
		dirpath='.',
		machine_pos=Pos(2, 2, 11),
		trigger_scoreboard_type='minecraft.custom:minecraft.walk_one_cm',
		trigger_scoreboard_value='50000..',
		briefing='While you\'re exploring, keep an eye out for the Boid Villagers. They\'ve requested your help, and unfortunately I forgot the coordinates of their village.',
		objective_scoreboard_type='minecraft.custom:minecraft.talked_to_villager',
		objective_scoreboard_display_name='Find a Villager',
		objective_scoreboard_value='1..',
		debriefing='You found them! Do try to keep them happy and safe. They took out a big loan from the Terran Space Union and we don\'t want them to default on their debt.',
		reward_items=[Item('minecraft:golden_apple')],
		next_mission="Illuminate"
)
make_mission(
		mission_name="Illuminate",
		dirpath='.',
		machine_pos=Pos(2, 2, 11),
		trigger_scoreboard_type='minecraft.custom:minecraft.talked_to_villager',
		trigger_scoreboard_value='5..',
		briefing='The villagers are unhappy with the Terran Space union for forgetting to mention the cyborg-zombies in the colony contract. See if you can fix things by lighting up the village with 64 lights.',
		objective_scoreboard_type='minecraft.used:minecraft.torch',
		objective_scoreboard_display_name='Place 64 Lights',
		reset_objective_score=True,
		objective_scoreboard_value='64..',
		debriefing='They can sleep well, now. Splash some emeralds around to improve the mood a little more.',
		reward_items=[Item('minecraft:emerald', 5)],
		next_mission="Pillage"
)
make_mission(
		mission_name="Pillage",
		dirpath='.',
		machine_pos=Pos(2, 2, 11),
		trigger_scoreboard_type='minecraft.killed:minecraft.pillager',
		trigger_scoreboard_value='1..',
		briefing='These pillagers have been a real pest. The villagers have posted a bounty for slaying 10 of them.',
		objective_scoreboard_type='minecraft.killed:minecraft.pillager',
		objective_scoreboard_display_name='Kill 10 Pillagers',
		objective_scoreboard_value='10..',
		debriefing='All in a day\'s work for the Terran Space Union! Good work, space cadet.',
		reward_items=[Item('minecraft:emerald', 20)],
		next_mission="Beat the Illagers"
)
make_mission(
		mission_name="Beat the Illagers",
		dirpath='.',
		machine_pos=Pos(2, 2, 11),
		trigger_scoreboard_type='minecraft.custom:minecraft.raid_win',
		trigger_scoreboard_value='1..',
		briefing='Time to teach those raiders a lesson. Find their headquarters and destroy their leader.',
		objective_scoreboard_type='minecraft.killed:minecraft.evoker',
		objective_scoreboard_display_name='Kill the Evoker',
		reset_objective_score=True,
		objective_scoreboard_value='1..',
		debriefing='Yes! Feel the might of the Terran Space Union!',
		reward_items=[Item('minecraft:enchanted_golden_apple')]
)



make_mission(
		mission_name="Green Thumb",
		dirpath='.',
		machine_pos=Pos(2, 2, 13),
		trigger_scoreboard_type='food',
		trigger_scoreboard_value='..17',
		briefing='Getting hungry? It\'s time you start planting a farm. Plant space wheat 24 seeds and I\'ll give you a special treat!',
		objective_scoreboard_type='minecraft.used:minecraft.wheat_seeds',
		objective_scoreboard_display_name='Plant 24 Seeds',
		reset_objective_score=True,
		objective_scoreboard_value='24..',
		debriefing='Now you can fill your belly with bread. And pie. I baked you a pie.',
		reward_items=[Item('minecraft:pumpkin_pie')],
		next_mission="Horsing Around"
)
make_mission(
		mission_name="Horsing Around",
		dirpath='.',
		machine_pos=Pos(2, 2, 13),
		trigger_scoreboard_type='minecraft.custom:minecraft.walk_one_cm',
		trigger_scoreboard_value='100000..',
		briefing='Walking is a slow way to explore. You should go tame a Cosmo-Horse so you can ride it.',
		objective_scoreboard_type='minecraft.custom:minecraft.horse_one_cm',
		objective_scoreboard_display_name='Ride a Horse',
		reset_objective_score=True,
		objective_scoreboard_value='10..',
		debriefing='Now you can explore far and wide. Here\'s a saddle for your horse.',
		reward_items=[Item('minecraft:saddle')]
)