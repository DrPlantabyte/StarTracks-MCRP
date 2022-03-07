from story_maker import *
import os, sys
from os import path


## missions
story_missions = []
story_missions.append(Mission(
	mission_id='greet',
	mission_name = 'Greetings',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Welcome new clone- I mean cadet- Welcome new cadet to the Terran Space Union!",
		"We've sent you to this recently terraformed planet to build an outpost and explore this world (for potential profits).",
		"We've already sold a number of colony contracts to the Boids, but they may need help defending their new villages.",
		"Oh, that reminds me: our enemies, the Invaders of Ender, are here too. They're trying to destroy this world and claim it for themselves.",
		"Their dark-photon technology allows them to teleport their cybernetic monsters to any dark shadow. Be careful and place lights everywhere!",
		"Now go out there and show them the might of the Terran Space Union! Over and out."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.crafting_table',
	objective_scoreboard_display_name = 'Craft a Crafting Station',
	objective_scoreboard_value = 1,
	debriefing = [
		"Splendid! The crafting station will help you convert resources into useful items."
	],
	reward_items = [],
	reset_objective_score = True,
	event_function = None

))
story_missions.append(Mission(
	mission_id='base1a',
	mission_name = 'Base Builder 1A',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"With all the cyborg monsters and kill bots coming out at night, you'll need to build a defensible base to call home.",
		"First, you'll want to make a pickaxe so you can collect some stone"
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.stone_pickaxe',
	objective_scoreboard_display_name = 'Craft a Stone Pickaxe',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good job!"
	],
	reward_items = [],
	reset_objective_score = False,
	event_function = None
))
story_missions.append(Mission(
	mission_id='base1b',
	mission_name = 'Base Builder 1B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Next you'll need a furnace."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.furnace',
	objective_scoreboard_display_name = 'Craft a Furnace',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good job!"
	],
	reward_items = [],
	reset_objective_score = False,
	event_function = None
))
story_missions.append(Mission(
	mission_id='base1c',
	mission_name = 'Base Builder 1C',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Next you'll need lots of light. Craft 20 lights."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.torch',
	objective_scoreboard_display_name = 'Craft 20 Lights',
	objective_scoreboard_value = 20,
	debriefing = [
		"Good job!"
	],
	reward_items = [],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='base1d',
	mission_name = 'Base Builder 1D',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Finally, no base is complete without a cloning bed. Craft a white cloning bed and place it in your base (and sleep on it too).",
		"I'll give you a house warming gift when you do.",
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.white_bed',
	objective_scoreboard_display_name = 'Craft a White Crafting Bed',
	objective_scoreboard_value = 1,
	debriefing = [
		"Well done! What a beautiful little hovel you've built. Here, take these materials to help decorate your new home."
	],
	reward_items = [Item('minecraft:glass', 64), Item('minecraft:red_carpet', 64),
					Item('minecraft:yellow_concrete', 64), Item('minecraft:blue_concrete', 64)],
	reset_objective_score = False,
	event_function = None
))
story_missions.append(Mission(
	mission_id='cave1',
	mission_name = 'Geological Survey 1',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Greetings! I'm the Terran Space Union's chief science officer, Dr. Alex. I have a mission for you",
		"While you are exploring, please assist me with a geological survey of the minerals on this world.",
		"All you need to do is mine 32 cubic meters of iron ore. I'll reward you with a brand new space suit."
	],
	objective_scoreboard_type = 'minecraft.mined:minecraft.iron_ore',
	objective_scoreboard_display_name = 'Mine 32 Iron Ore',
	objective_scoreboard_value = 32,
	debriefing = [
		"Interesting... These readings suggest that you may also find diamonds, cybernite, and redstone farther down in the subsurface."
	],
	reward_items = [Item('minecraft:iron_helmet'), Item('minecraft:iron_chestplate'),
					Item('minecraft:iron_leggings'), Item('minecraft:iron_boots')],
	reset_objective_score = False,
	event_function = None
))
story_missions.append(Mission(
	mission_id='farm1a',
	mission_name = 'Farming 1A',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"According to my calculations, you will need to start your own agriculture operation in order to assure your survival on this planet.",
		"Many edible species have already been seeded on this world. Simply break some tall grass to find Space Wheat Seeds"
	],
	objective_scoreboard_type = 'minecraft.picked_up:minecraft.wheat_seeds',
	objective_scoreboard_display_name = 'Collect 12 Seeds',
	objective_scoreboard_value = 12,
	debriefing = [
		"That will be sufficient to start a primitive farm. Use a hoe to till the soil and then plant the seeds near open water."
	],
	reward_items = [],
	reset_objective_score = False,
	event_function = None
))

story_missions.append(Mission(
	mission_id='farm1b',
	mission_name = 'Farming 1B',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"You will also require animal resources. Build an animal pen, then use your wheat harvest to lure some animals into your pen.",
		"Finally, feed the animals to stimulate the reproductive process to ensure a continued supply of nutrition."
	],
	objective_scoreboard_type = 'minecraft.custom:minecraft.animals_bred',
	objective_scoreboard_display_name = 'Breed 2 Animals',
	objective_scoreboard_value = 2,
	debriefing = [
		"In case you feel particularly attached to your animals, here are some name tags."
	],
	reward_items = [Item('minecraft:name_tag', 12)],
	reset_objective_score = False,
	event_function = None
))
story_missions.append(Mission(
	mission_id='village1a',
	mission_name = 'Village1a',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"It's time we start helping (and profiting from) the Boid Villagers. Go make contact with the nearest village",
	],
	objective_scoreboard_type = 'minecraft.custom:minecraft.talked_to_villager',
	objective_scoreboard_display_name = 'Talk to a Villager',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good work! Here's some emeralds to trade with them. Don't spend it all in one place."
	],
	reward_items = [Item('minecraft:emerald', 3)],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='village1b',
	mission_name = 'Village 1B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"The representative from the Boid Federation tells me that the Invaders are sending robot pillagers to harass the villagers",
		"Go kill a couple of them to send a message that we're serious about defending the Boids (and selling them defense contracts)"
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.pillager',
	objective_scoreboard_display_name = 'Destroy 10 Pillagers',
	objective_scoreboard_value = 10,
	debriefing = [
		"That'll teach them!",
		"Here's a Defendo-Bot defense kit to protect the village while you're away. I've lost the manual, but I'm sure you'll figure it out."
	],
	reward_items = [Item('minecraft:iron_block', 4), Item('minecraft:carved_pumpkin',1)],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='farm2',
	mission_name = 'Farming 2',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"I'd like to study the genetically engineered Mega-Bees we sent to this world. Build a beehive, and then use flowers to lure some Mega-Bees to it."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.beehive',
	objective_scoreboard_display_name = 'Craft Beehive',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good job! Bee sure to surround the hive with flowers. You can also lure the bees to your hive with flowers.",
		"Here's a sampling of Mega-Bee products you can make. Remember to use smoke to keep the Mega-Bees calm when you interact with their hive."
	],
	reward_items = [Item('minecraft:honey_bottle', 3), Item('minecraft:blue_candle', 3)],
	reset_objective_score = True,
	event_function = None
))

story_missions.append(Mission(
	mission_id='cave2a',
	mission_name = 'Geological Survey 2a',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Sensors indicate that this planet harbors fully subterranean ecosystems, including underground plants with bioluminescent fruit.",
		"Azalea trees tend to grow above these underground forests.",
		"The Terran Space Union installed a microscopic mass spectrometer in your mouth. If you could just taste some glowing fruit, I can study it."
	],
	objective_scoreboard_type = 'minecraft.used:minecraft.glow_berries',
	objective_scoreboard_display_name = 'Eat 5 Glow Berries',
	objective_scoreboard_value = 5,
	debriefing = [
		"Fascinating! Readings suggest that the fruit is both delicious and nutritious, with only a few side-effects."
	],
	reward_items = [],
	reset_objective_score = True,
	event_function = None
))

story_missions.append(Mission(
	mission_id='village2',
	mission_name = 'Village2',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"The Boids are complaining that nobody is buying their wares. Do some trading with them to improve their economy."
	],
	objective_scoreboard_type = 'minecraft.custom:minecraft.traded_with_villager',
	objective_scoreboard_display_name = '12 Villager Trades',
	objective_scoreboard_value = 12,
	debriefing = [
		"Good job! They've given us a 4/5 star review on SpaceBook. Wait... I'm picking up something on our sensors..."
	],
	reward_items = [],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='nether1a',
	mission_name = 'Nether 1A',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Gadzooks! The invaders are using hyperspace to send an attack squad. Prepare to fight!"
	],
	objective_scoreboard_type = None, # None type to not have a scoreboard
	objective_scoreboard_display_name = None,
	objective_scoreboard_value = 0,
	debriefing = [
		"Here! Take this gun and destroy the monsters!"
	],
	reward_items = [Item('minecraft:bow'), Item('minecraft:arrow', 24)],
	reset_objective_score = True,
	event_function = 'startracks:events/portal_attack_all'
))
story_missions.append(Mission(
	mission_id='nether1b',
	mission_name = 'Nether 1B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [],
	objective_scoreboard_type = 'minecraft.killed:minecraft.zombie',
	objective_scoreboard_display_name = 'Slay 10 Cyborgs',
	objective_scoreboard_value = 10,
	debriefing = [
		"Good work! Looks like one of them dropped something. Dr. Alex, could you please identify this?"
	],
	reward_items = [Item('minecraft:nether_wart', 1)],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='nether1c',
	mission_name = 'Nether 1C',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Fascinating! It appears to be a bryophyte, some kind of wart, made of neutron-dense elements. It must be a netherspace native plant.",
		"Cadet, this is a clue to the invader's dark-photon technology. You must go to netherspace collect more samples."
	],
	objective_scoreboard_type = 'minecraft.mined:minecraft.nether_wart',
	objective_scoreboard_display_name = 'Collect 10 Nano-Mold',
	objective_scoreboard_value = 10,
	debriefing = [
		"I see... This organism creates nanoscopic fuels. You can use it to create nanite serums. I'd recommend making fire protection nanite serum."
	],
	reward_items = [],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='nether1d',
	mission_name = 'Nether 1D',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"But in order to make nanite serum, you will also need a source of nanites.",
		"You should be able to, *ahem*, 'liberate' some from one of those fire-shooting probes"
	],
	objective_scoreboard_type = 'minecraft.picked_up:minecraft.blaze_rod',
	objective_scoreboard_display_name = 'Collect 3  Nanite Reactors',
	objective_scoreboard_value = 3,
	debriefing = [
		"You can now build a nanite factory and start making nanite serum. Here's some glass bottles to help get you started."
	],
	reward_items = [Item('minecraft:glass_bottle',3)],
	reset_objective_score = False,
	event_function = None
))

story_missions.append(Mission(
	mission_id='guard1',
	mission_name = 'Guard1',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"We are detecting strange signals from a strange monuments out in the ocean. IT appears to be interfering with the planet's climate systems.",
		"Go find one of these monuments and if you encounter any unusual organisms, dissect one of them for science!",
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.guardian',
	objective_scoreboard_display_name = 'Kill a Guardian (for science)',
	objective_scoreboard_value = 1,
	debriefing = [
		"Fascinating! These creatures are not native to this planet. They came from somewhere else, and it appears they are trying to flood the whole planet.",
		"If not stopped, they may render this plannet uninhabitable to air-breathing organisms."
	],
	reward_items = [],
	reset_objective_score = True,
	event_function = "startracks:events/storm"
))
story_missions.append(Mission(
	mission_id='guard2',
	mission_name = 'Guard2',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"These ocean-dwelling aliens must be stopped before they flood the whole world!",
		"I'm detecting three particularly large ones nearby, emitting energy fields that are manipulating the climate to make it constantly rain. Eliminate them!"
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.elder_guardian',
	objective_scoreboard_display_name = 'Kill 3 Elder Guardians',
	objective_scoreboard_value = 3,
	debriefing = [
		"Good work! Let's celebrate your success with some grilled fish!"
	],
	reward_items = [Item('minecraft:cooked_cod', 3)],
	reset_objective_score = False,
	event_function = 'startracks:events/permastorm_start'
))
story_missions.append(Mission(
	mission_id='guard3',
	mission_name = 'Guard3',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"With the elder guardians defeated, the climate is returning to normal."
	],
	objective_scoreboard_type = None,
	objective_scoreboard_display_name = None,
	objective_scoreboard_value = 0,
	debriefing = [],
	reward_items = [],
	reset_objective_score = False,
	event_function = 'startracks:events/permastorm_end'
))

story_missions.append(Mission(
	mission_id='nether2a',
	mission_name = 'Nether 2A',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"The invader technology is beyond our own, but I know of a way to develop superior quantum technology.",
		"It's risky, but if you combine 3 Xeno-Borg skulls with 4 cubic meters of Neutron Sand, then the cyborg processors with overclock, creating an A.I. singularity",
		"The problem with singularities is that they always attack their creator. But after you kill it, you can use it's core to create incredibly advanced technology."
	],
	objective_scoreboard_type = 'minecraft.picked_up:minecraft.wither_skeleton_skull',
	objective_scoreboard_display_name = 'Collect a Xeno-Borg Skull',
	objective_scoreboard_value = 1,
	debriefing = [
		"That was a lot of work just to get one Xeno-Borg skull. Fortunately, my duplicator invention can produce near-perfect copies. Here you go!"
	],
	reward_items = [Item('minecraft:wither_skeleton_skull',3)],
	reset_objective_score = True,
	event_function = None
))
story_missions.append(Mission(
	mission_id='nether2b',
	mission_name = 'Nether 2B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"When you are ready, brave clo- brave cadet, build the AI singularity.",
		"Then kill it and take it's Quantum Reactor."
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.wither',
	objective_scoreboard_display_name = "Kill an AI Singularity",
	objective_scoreboard_value = 1,
	debriefing = [
		"Victory! Well done clone! You've made the Terran Space Union proud!",
		"Please accept this 0.001% royalty payment from the technology we've gained by your efforts."
	],
	reward_items = [Item('minecraft:gold_block',35)],
	reset_objective_score = False,
	event_function = None
))



## setup
output_dir = '.'
machine_pos = Pos(7, 7, 7)
briefing_scoreboard = '_st_briefing'
mission_init = 'story_start.mcfunction'
init_coms = ['# start of story missions']
init_coms += ['scoreboard objectives add %s dummy' % briefing_scoreboard]
init_coms += ['function startracks:missions/%s_00start' % story_missions[0].mission_id]
write_to_file( '\n'.join(init_coms), mission_init)
## prefix story order
for i in range(0,len(story_missions)):
	story_missions[i].mission_id = 'm%s_%s' % (i, story_missions[i].mission_id)
## write files
for i in range(0,len(story_missions)-1):
	story_missions[i].write_functions(
		machine_pos=machine_pos,
		briefing_timer_scoreboard=briefing_scoreboard,
		dirpath=output_dir,
		shared_init_file=mission_init,
		next_mission_id=story_missions[i+1].mission_id
	)
