from story_maker import *
import os, sys
from os import path

depth_scoreboard_name = '_st_depth'
end_frame_score_name = '_st_onframe'

## missions
story_missions = []
story_missions.append(Mission(
	mission_id='start1',
	mission_name = 'Start 1',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [],
	objective_scoreboard_type = 'minecraft.custom:minecraft.time_since_death',
	objective_scoreboard_display_name = '', # empty string for hidden scoreboard
	objective_scoreboard_value = 2400,
	debriefing = [],
	reward_items = [],
	reset_objective_score = True,
	event_functions = None

))
story_missions.append(Mission(
	mission_id='start2',
	mission_name = 'Start 2',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Now that you've explored a little, make a crafting station so you can produce your own supplies as you bravely explore this new world."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.crafting_table',
	objective_scoreboard_display_name = 'Craft a Crafting Station',
	objective_scoreboard_value = 1,
	debriefing = [
		"Splendid! The crafting station will help you convert resources into useful items."
	],
	reward_items = [],
	reset_objective_score = False,
	event_functions = None

))
story_missions.append(Mission(
	mission_id='base1a',
	mission_name = 'Base Builder 1A',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"With all the cyborg monsters and kill-bots coming out at night, you'll need to build a defensible base to call home.",
		"Thanks to the latest advancements in budget-saving technology, you can craft a pickaxe from almost any material, even wood!"
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.wooden_pickaxe',
	objective_scoreboard_display_name = 'Craft a Wooden Pickaxe',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good job! Now go mine some stone."
	],
	reward_items = [],
	reset_objective_score = False,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='base1b',
	mission_name = 'Base Builder 1B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Next you'll need a furnace so that you can smelt toxic ores into metal ingots and cook your food too."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.furnace',
	objective_scoreboard_display_name = 'Craft a Furnace',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good job!"
	],
	reward_items = [],
	reset_objective_score = False,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='base1c',
	mission_name = 'Base Builder 1C',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Next you'll need lots of light to repel the invaders' dark-photon monster teleportation technology. 20 lights should be enough to start with."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.torch',
	objective_scoreboard_display_name = 'Craft 20 Lights',
	objective_scoreboard_value = 20,
	debriefing = [
		"Good job!"
	],
	reward_items = [],
	reset_objective_score = False,
	event_functions = None
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
	objective_scoreboard_display_name = 'Craft a White Bed',
	objective_scoreboard_value = 1,
	debriefing = [
		"Well done! What a beautiful little hovel you've built. Here, take these materials to help decorate your new home."
	],
	reward_items = [Item('minecraft:glass', 64), Item('minecraft:red_carpet', 64),
					Item('minecraft:yellow_concrete', 64), Item('minecraft:blue_concrete', 64)],
	reset_objective_score = False,
	event_functions = None
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
		"Interesting... These readings suggest that you may also find gold, diamonds, cybernite, and redstone farther down in the subsurface."
	],
	reward_items = [Item('minecraft:iron_helmet'), Item('minecraft:iron_chestplate'),
					Item('minecraft:iron_leggings'), Item('minecraft:iron_boots')],
	reset_objective_score = False,
	event_functions = None
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
		"That will be sufficient to start a primitive farm. Use a hoe to till the soil and then plant the seeds near open water.",
		"Here's a few more seeds for you to add diversity to your diet."
	],
	reward_items = [Item('minecraft:beetroot_seeds', 3), Item('minecraft:pumpkin_seeds', 3)],
	reset_objective_score = False,
	event_functions = None
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
	objective_scoreboard_display_name = 'Breed 10 Animals',
	objective_scoreboard_value = 10,
	debriefing = [
		"In case you feel particularly attached to your animals, here are some name tags and a leash."
	],
	reward_items = [Item('minecraft:name_tag', 12), Item('minecraft:lead', 1)],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='village1a',
	mission_name = 'Village1a',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"It's time we start helping the Boid Villagers. Go find a village and make contact with them",
	],
	objective_scoreboard_type = 'minecraft.custom:minecraft.talked_to_villager',
	objective_scoreboard_display_name = 'Talk to a Villager',
	objective_scoreboard_value = 1,
	debriefing = [
		"Good work! Here's some emeralds to trade with them. Don't spend it all in one place."
	],
	reward_items = [Item('minecraft:emerald', 3)],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='village1b',
	mission_name = 'Village1B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"According to my translator, the Boids are telling you that they need more lights around the village.",
	],
	objective_scoreboard_type = 'minecraft.used:minecraft.torch',
	objective_scoreboard_display_name = 'Place 100 Lights',
	objective_scoreboard_value = 100,
	debriefing = [
		"Good work! Here's some more emeralds to trade with them."
	],
	reward_items = [Item('minecraft:emerald', 5)],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='village1c',
	mission_name = 'Village 1C',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"The representative from the Boid Federation tells me that the Invaders are sending robot pillagers to harass the villagers",
		"They hide out in watch towers between raids.",
		"Go destroy a few of these pillagers to send a message that we're serious about defending the Boids (and selling them defense contracts)"
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.pillager',
	objective_scoreboard_display_name = 'Destroy 5 Pillagers',
	objective_scoreboard_value = 5,
	debriefing = [
		"That'll teach them!",
		"Here's a Defendo-Bot defense kit to protect the village while you're away. I've lost the manual, but I'm sure you'll figure it out."
	],
	reward_items = [Item('minecraft:iron_block', 4), Item('minecraft:carved_pumpkin',1)],
	reset_objective_score = True,
	event_functions = ['execute as @s at @s run function startracks:events/flying_pillager_attack']
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
	event_functions = ['recipe give @a beehive']
))

story_missions.append(Mission(
	mission_id='cave2',
	mission_name = 'Geological Survey 2',
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
	event_functions = None
))

story_missions.append(Mission(
	mission_id='village2',
	mission_name = 'Village2',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"The Boids are complaining again. They say that nobody is buying their wares. Do some trading with them to improve their economy."
	],
	objective_scoreboard_type = 'minecraft.custom:minecraft.traded_with_villager',
	objective_scoreboard_display_name = '12 Villager Trades',
	objective_scoreboard_value = 12,
	debriefing = [
		"Good job! They've given us a 4/5 star review on SpaceBook. Wait... I'm picking up something on our sensors..."
	],
	reward_items = [],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='nether1a',
	mission_name = 'Nether 1A',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Gadzooks! The invaders are using netherspace to send an attack squad. Prepare to fight!"
	],
	objective_scoreboard_type = None, # None type to not have a scoreboard
	objective_scoreboard_display_name = None,
	objective_scoreboard_value = 0,
	debriefing = [
		"Here! Take this gun and destroy the monsters!"
	],
	reward_items = [Item('minecraft:bow'), Item('minecraft:arrow', 24)],
	reset_objective_score = True,
	event_functions = ['execute as @s at @s run function startracks:events/portal_attack']
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
	event_functions = None
))
story_missions.append(Mission(
	mission_id='nether1c',
	mission_name = 'Nether 1C',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Fascinating! It appears to be a bryophyte, some kind of wart, made of neutron-dense elements. It must be a netherspace native plant.",
		"Cadet, this is a clue to the invader's dark-photon technology. Go to netherspace collect more samples and then return to this world."
	],
	objective_scoreboard_type = 'minecraft.mined:minecraft.nether_wart',
	objective_scoreboard_display_name = 'Collect 10 Nano-Mold',
	objective_scoreboard_value = 10,
	debriefing = [
		"I see... This organism creates nanoscopic fuels. You can use it to create nanite serums. I'd recommend making fire protection nanite serum."
	],
	reward_items = [],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='nether1d',
	mission_name = 'Nether 1D',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"But in order to make nanite serum, you will also need a source of nanites.",
		"You should be able to, *ahem*, 'liberate' some from one of those fire-shooting netherspace probes"
	],
	objective_scoreboard_type = 'minecraft.picked_up:minecraft.blaze_rod',
	objective_scoreboard_display_name = 'Collect 3 Nanite Reactors',
	objective_scoreboard_value = 3,
	debriefing = [
		"You can now build a nanite factory and start making nanite serum. Here's some glass bottles to help get you started."
	],
	reward_items = [Item('minecraft:glass_bottle',3)],
	reset_objective_score = False,
	event_functions = None
))

story_missions.append(Mission(
	mission_id='cave3a',
	mission_name = 'Geological Survey 3A',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"I have another scientific mission for you. I need you to get close to the planet's mantel and take a sample.",
		"You'll need to go deep into the caves. Very deep."
	],
	objective_scoreboard_type = 'dummy',
	objective_scoreboard_display_name = 'Go Deeper',
	objective_scoreboard_value = 100,
	debriefing = [
		"Interesting... Very Interesting... You be careful down there. Here, this should help you avoid some of the dangers."
	],
	reward_items = [Item('minecraft:potion', 2, {'Potion':"minecraft:night_vision"})],
	reset_objective_score = True,
	event_functions = ['function startracks:misc/depth_check_start'],
	existing_scoreboard = depth_scoreboard_name,
))
story_missions.append(Mission(
	mission_id='cave3b',
	mission_name = 'Geological Survey 3B',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Now take a few samples from the deepslate rock. The deeper the better!"
	],
	objective_scoreboard_type = 'minecraft.mined:minecraft.deepslate',
	objective_scoreboard_display_name = 'Mine 20 Deepslate',
	objective_scoreboard_value = 20,
	debriefing = [
		"Perfect! With this information, I'm able to craft for you a cybernetically enhanced pick that is able to more efficiently gather resources.",
		"Wait, I'm picking up a strange signal from deep underground... Commander Steve, you need to see this!"
	],
	reward_items = [Item('minecraft:diamond_pickaxe',1,{'Enchantments':[{'id':'fortune','lvl':3},{'id':'unbreaking','lvl':3}]})],
	reset_objective_score = True,
	event_functions = ['function startracks:misc/depth_check_stop'],
	existing_scoreboard = None,
))
story_missions.append(Mission(
	mission_id='cave3c',
	mission_name = 'Geological Survey 3C',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Space cadet! We've detected traces of Sculk spores in those rocks you just mined!",
		"Sculk is an invasive and hostile organism that spreads like a fungus, consuming both life and stone. It will devour the world from within!",
		"This world has been infected with Sculk! Find the Sculk infestation and mine a sample so we can locate the source."
	],
	objective_scoreboard_type = 'minecraft.mined:minecraft.sculk',
	objective_scoreboard_display_name = 'Mine 25 Sculk',
	objective_scoreboard_value = 25,
	debriefing = [
		"Excelent work, clone- I mean cadet! Drink this serum to neutralize any Sculk you may have accidentally inhaled.",
		"Dr. Alex, what is your the diagnosis?"
	],
	reward_items = [Item('minecraft:potion', 1, {'Potion':"minecraft:regeneration"})],
	reset_objective_score = True,
	event_functions = [],
	existing_scoreboard = None,
))
story_missions.append(Mission(
	mission_id='cave3d',
	mission_name = 'Geological Survey 3d',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"This is bad! The Sculk infection is maturing, producing Sculk Catalysts that are emitting spores whenever a creature dies nearby.",
		"Cadet, I need more data. Find and break 3 Sculk Catalysts."
	],
	objective_scoreboard_type = 'minecraft.mined:minecraft.sculk_catalyst',
	objective_scoreboard_display_name = 'Break 3 Sculk Catalysts',
	objective_scoreboard_value = 3,
	debriefing = [
		"Unbelievable! The Sculk did not get here by accident! Some evil being has been cultivating it, protecting it, and helping it spread.",
		"There's some kind of Sculk Warden on this world. They probably have some kind of Sculk laboratory hidden deep underground."
	],
	reward_items = [Item('minecraft:potion', 1, {'Potion':"minecraft:regeneration"})],
	reset_objective_score = True,
	event_functions = [],
	existing_scoreboard = None,
))
story_missions.append(Mission(
	mission_id='cave3e',
	mission_name = 'Geological Survey 3E',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Space cadet! Your mission is to find this vile Sculk Warden, and destroy them!"
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.warden',
	objective_scoreboard_display_name = 'Kill the Warden',
	objective_scoreboard_value = 1,
	debriefing = [
		"Another space villain brought to justice! Good work, clone! Take these blocks of diamond as your reward"
	],
	reward_items = [Item('minecraft:diamond_block', 3), Item('minecraft:potion', 1, {'Potion':"minecraft:regeneration"})],
	reset_objective_score = False,
	event_functions = [],
	existing_scoreboard = None,
))

story_missions.append(Mission(
	mission_id='party1',
	mission_name = 'Party 1',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"With that dirty business out of the way, why don't you relax a little? Oh, I know!",
		"It just so happens to be the Terran Space Union's birthday tomorrow. Your next mission is to bake a birthday cake!"
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.cake',
	objective_scoreboard_display_name = 'Bake a Cake',
	objective_scoreboard_value = 1,
	debriefing = [
		"Happy birthday, Terran Space Union! Here's some fireworks to light-up the sky. Don't let anyone rain on your parade!"
	],
	reward_items = [Item('minecraft:firework_rocket', 7, {'Fireworks':{'Flight':2,'Explosions':[{'Type':2,'Colors':[14602026],'FadeColors':[2437522]}]}})],
	reset_objective_score = True,
	event_functions = [],
	existing_scoreboard = None,
))

story_missions.append(Mission(
	mission_id='guard0',
	mission_name = 'Guard0',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [],
	objective_scoreboard_type = None,
	objective_scoreboard_display_name = None,
	objective_scoreboard_value = 0,
	debriefing = [],
	reward_items = [],
	reset_objective_score = True,
	event_functions = ["function startracks:events/storm"]
))
story_missions.append(Mission(
	mission_id='guard1',
	mission_name = 'Guard1',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"We are detecting energy signatures from a strange monument out in the ocean. It appears to be interfering with the planet's climate systems.",
		"Go find one of these monuments and if you encounter any unusual organisms, dissect one of them for thorough identification.",
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.guardian',
	objective_scoreboard_display_name = 'Kill an Ocean Guardian',
	objective_scoreboard_value = 1,
	debriefing = [
		"Fascinating! These creatures are not native to this planet. They came from somewhere else, and it appears they are trying to flood the whole planet!",
		"If not stopped, they may render this plannet uninhabitable to air-breathing organisms."
	],
	reward_items = [],
	reset_objective_score = True,
	event_functions = ["function startracks:events/storm"]
))
story_missions.append(Mission(
	mission_id='guard2',
	mission_name = 'Guard2',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"These ocean-dwelling aliens must be stopped before they flood the whole world!",
		"I'm detecting three particularly large ones nearby. They've started manipulating the climate to make it constantly rain. Eliminate them to stop the storm!"
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.elder_guardian',
	objective_scoreboard_display_name = 'Kill 3 Elder Guardians',
	objective_scoreboard_value = 3,
	debriefing = [
		"Good work! Let's celebrate your success with some grilled fish!"
	],
	reward_items = [Item('minecraft:cooked_cod', 3)],
	reset_objective_score = False,
	event_functions = ['function startracks:events/permastorm_start']
))
story_missions.append(Mission(
	mission_id='guard3',
	mission_name = 'Guard3',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"With the elder guardians defeated, the climate is returning to normal. Here's a proper reward for your heroic actions."
	],
	objective_scoreboard_type = None,
	objective_scoreboard_display_name = None,
	objective_scoreboard_value = 0,
	debriefing = [],
	reward_items = [Item('minecraft:enchanted_golden_apple', 1)],
	reset_objective_score = False,
	event_functions = ['function startracks:events/permastorm_end']
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
	event_functions = None
))
story_missions.append(Mission(
	mission_id='nether2b',
	mission_name = 'Nether 2B',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"When you are ready, brave clo- brave cadet, build the AI singularity by making a T with 4 blocks of Neutron Sand and then placing 3 Xeno-Borg Skulls on top.",
		"Then kill it and take it's Quantum Reactor."
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.wither',
	objective_scoreboard_display_name = "Kill an AI Singularity",
	objective_scoreboard_value = 1,
	debriefing = [
		"Victory! Well done clone! You've made the Terran Space Union proud!",
		"Please accept your contractual 0.001% royalty payment from the technology we've gained by your efforts."
	],
	reward_items = [Item('minecraft:gold_block',35)],
	reset_objective_score = False,
	event_functions = None
))

story_missions.append(Mission(
	mission_id='ender1a',
	mission_name = 'Ender 1A',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"These Invaders of Ender and their cybernetic minions are really causing a lot of trouble. It's time to take the fight to them!",
		"Go take out a few of the invaders and collect their phase crystals."
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.enderman',
	objective_scoreboard_display_name = "Slay 4 Invaders",
	objective_scoreboard_value = 4,
	debriefing = [
		"Yes! Take that, invaders! You cannot stop the Terran Space Union!"
	],
	reward_items = [Item('minecraft:ender_pearl',1)],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='ender1b',
	mission_name = 'Ender 1B',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Their phase crystals are an advanced form of teleportation technology. However, I may be able to hack into it's memory with the use of nanite dust."
	],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.ender_eye',
	objective_scoreboard_display_name = "Craft Ender Seeker",
	objective_scoreboard_value = 1,
	debriefing = [
		"Success! The crystal has been reprogrammed to move in the direction of the invader's Ender Portal when thrown."
	],
	reward_items = [],
	reset_objective_score = True,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='ender1c',
	mission_name = 'Ender 1C',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"Use the Ender Seeker to find the portal to the invader's homeworld, and then stand on it so our sensors can study it."
	],
	objective_scoreboard_type = 'dummy',
	objective_scoreboard_display_name = "Stand on Ender Portal",
	objective_scoreboard_value = 1,
	debriefing = [
		"Yes, this is it! This is the portal to Ender, homeworld of the Invaders.",
		"Here, take these diamonds as a reward for your dedication. You're probably going to need them."
	],
	reward_items = [Item('minecraft:diamond',24)],
	reset_objective_score = True,
	event_functions = None,
	existing_scoreboard=end_frame_score_name
))
story_missions.append(Mission(
	mission_id='ender1d',
	mission_name = 'Ender 1D',
	briefer = 'Commander Steve',
	briefer_color = 'blue',
	briefing = [
		"According to intel, the Invaders of Ender are led by the Ender Dragon, a being of great power and cunning.",
		"Your mission, if you choose to accept it, is to go to Ender and slay the Ender Dragon",
		"Now prepare yourself! It will be a very difficult fight."
	],
	objective_scoreboard_type = 'minecraft.killed:minecraft.ender_dragon',
	objective_scoreboard_display_name = "Slay the Dragon",
	objective_scoreboard_value = 1,
	debriefing = [
		"Incredible! Cadet, you have earned a great victory for the Terran Space Union!"
	],
	reward_items = [Item('minecraft:ender_pearl',16)],
	reset_objective_score = False,
	event_functions = None
))
story_missions.append(Mission(
	mission_id='ender1e',
	mission_name = 'Ender 1E',
	briefer = 'Chief Scientist Alex',
	briefer_color = 'green',
	briefing = [
		"Without the Ender Dragon, the cyborg threat has been eliminated within 2.5 kilometers of the outpost. Lands farther out may still be dangerous.'",
		"There is still much to discover. Safe journey, brave explorer. Over and out."
	],
	objective_scoreboard_type = None,
	objective_scoreboard_display_name = None,
	objective_scoreboard_value = 0,
	debriefing = [],
	reward_items = [],
	reset_objective_score = False,
	event_functions = ['function startracks:events/endgame_reward']
))


## prefix story order
for i in range(0,len(story_missions)):
	story_missions[i].mission_id = 'm%s_%s' % (i+1, story_missions[i].mission_id)

## setup
output_dir = '.'
machine_pos = Pos(7, 7, 7)
briefing_scoreboard = '_st_briefing'
mission_init = 'missions/m0_story_start.mcfunction'
init_coms = ['# start of story missions']
init_coms += ['gamerule doPatrolSpawning true']
init_coms += ['scoreboard objectives add %s dummy' % briefing_scoreboard]
init_coms += ['scoreboard objectives add %s dummy "Stand on Ender Portal"' % end_frame_score_name]
init_coms += ['setblock 7 7 5 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"scoreboard players set @a[y=-64,dy=14] %s 50"} destroy' % (depth_scoreboard_name)]
init_coms += ['setblock 7 7 3 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:end_portal_frame run scoreboard players set @s %s 1"} destroy' % (end_frame_score_name)]
init_coms += ['function startracks:missions/%s_00start' % story_missions[0].mission_id]
write_to_file( '\n'.join(init_coms), mission_init)

## write files
for i in range(0,len(story_missions)):
	if (i+1) < len(story_missions):
		story_missions[i].write_functions(
			machine_pos=machine_pos,
			briefing_timer_scoreboard=briefing_scoreboard,
			dirpath=output_dir,
			shared_init_file=mission_init,
			next_mission_id=story_missions[i+1].mission_id
		)
	else:
		story_missions[i].write_functions(
			machine_pos=machine_pos,
			briefing_timer_scoreboard=briefing_scoreboard,
			dirpath=output_dir,
			shared_init_file=mission_init,
			next_mission_id=None
		)
