#!/usr/bin/python3
import json, os, re, collections, operator
from os import path

THIS_DIR = path.dirname(path.abspath(__file__))
source_json = path.join(THIS_DIR, 'reference', 'vanilla', 'en_us.json')
destination_json = path.join(THIS_DIR, 'common', 'assets', 'minecraft', 'lang', 'en_us.json')

def main():
	print(path.abspath(THIS_DIR))
	#
	with open(source_json, 'r') as file_in, open(destination_json,'w') as file_out:
		src_data = json.load(file_in)
		out_data = {}
		for key in src_data:
			src_val = src_data[key]
			dst_val = change(key=key, val=src_val)
			if dst_val is not None and src_val != dst_val:
				out_data[key] = dst_val
		print_and_write(json.dumps(sort_dict(out_data), indent='  '), file_out)
#
def print_and_write(text, file_handle):
	print(text)
	file_handle.write(text)
#
def sort_dict(d):
	keys = sorted(d)
	dd = collections.OrderedDict()
	for k in keys:
		dd[k] = d[k]
	return dd
#
def change(key, val):
	# example : if re.search('apple|oak',key) == None: return None
	text = val
	
	## Rayguns
	if re.search('[Ff]lint|[Bb]ow|Arrow',val) != None and re.search('[Bb]owl|Projectile\:|debug|Parrot',val) == None:
		text = text.replace(' bow and arrow',' raygun')
		text = text.replace('Flint and Steel','Pocket Laser')
		text = text.replace('Crossbow', 'Plasma Cannon')
		text = text.replace(' crossbow', ' plasma cannon')
		text = text.replace('Bow', 'Raygun')
		text = text.replace('Flint', 'Laser Crystal')
		text = text.replace('Arrow', 'Raybolt')
	
	
	## other weapons and armor
	text = text.replace('Leather armor','Spacesuit')
	if re.search('Cap|Tunic|Pants|Boots',val) != None:
		text = text.replace('Leather','Spacesuit')
	text = text.replace('Chainmail','Cybersuit')
	if re.search('Helmet|Chestplate|Leggings|Boots',val) != None:
		text = text.replace('Iron','Armored Spacesuit')
		text = text.replace('Diamond','Forcefield')
	text = text.replace('Leather','Pleather')
	
	if re.search('helmet|chestplate|leggings|boots',key) != None:
		text = text.replace('Chainmail Chestplate','Chainmail Shirt').replace('Chainmail Hemlet','Chainmail Hood')
	
	## plants and animals
	text = text.replace('Turtle', 'Turdle')
	text = text.replace('Apple','Starfruit')
	text = text.replace('Wheat','Space Wheat')
	text = text.replace('Pumpkin','Brainfruit')
	text = text.replace('Melon','Starmelon')
	text = text.replace('Bamboo','Zamboo')
	text = text.replace('Sugar Cane','Supercane')
	text = text.replace('Paper','Silicon Sheet')
	text = text.replace('Potato','Tater')
	text = text.replace('Carrot','Eyeberry')
	text = text.replace('Beetroot','Astro-Beet')
	text = text.replace('Chicken','Starchick')
	text = text.replace('Feather','Star Feather')
	text = text.replace('Sheep','Polysheep')
	text = text.replace('Wool','Polyfiber')
	text = text.replace('String','Polymer')
	text = text.replace('Rabbit','Bunny')
	text = text.replace('Cow','Soymoo')
	text = text.replace('Beef','Tofu')
	text = text.replace('Steak','Nutri-Cube')
	text = text.replace('Milk','Soymilk')
	text = text.replace('Pufferfish','Inflatofish')
	text = text.replace('Salmon','Redfish')
	text = text.replace('Cod','Brownfish')
	text = text.replace('Dolphin','Aquarian')
	text = text.replace('Glistering','Sparkling')
	text = text.replace('Bat','Squeaker')
	if re.search('[Bb]ee',val) != None and 'advancements' not in key:
		# bees
		if re.search('[Bb]een|[Bb]eet|[Bb]eef',val) == None:
			# but not beef or beet or been
			text = text.replace('Bee','Mega-Bee').replace('bee','mega-bee')
	text = text.replace('Spider','Spyder')
	text = text.replace('Silverfish','Stoneworm')
	text = text.replace('Horse','Cosmo-Horse')
	text = text.replace('Skeleton Cosmo-Horse','Robo-Horse')
	text = text.replace('Zombie Cosmo-Horse','Cyborg-Horse')
	text = text.replace('Donkey','Zonkey')
	text = text.replace('Mule','Wonkey')
	text = text.replace('Llama','Star Llama')
	text = text.replace('Cat','Nyan-Cat')
	text = text.replace('Ocelot','Wild Nyan-Cat')
	text = text.replace('Parrot','Flutter')
	if 'Piglin' not in text and 'Pigman' not in text:
		text = text.replace('Pig','Porker')
	text = text.replace('Polar Bear','Solar Bear')
	text = text.replace('Squid','Octopod')
	text = text.replace('Fox','Starfox')
	text = text.replace('Panda','Space-Panda')
	text = text.replace('Wolf','Wuff')
	if 'Sign' in text:
		text = text.replace('Acacia','Orange')
		text = text.replace('Birch','Blue')
		text = text.replace('Dark Oak','Red')
		text = text.replace('Jungle','Green')
		text = text.replace('Oak ','')
		text = text.replace('Spruce','Magenta')
	text = text.replace('Oak','Starwood')
	text = text.replace('Birch','Whitewood')
	text = text.replace('Acacia','Orangewood')
	text = text.replace('Spruce','Brownwood')
	text = text.replace('Creeper','Boom-Bot')
	text = text.replace('Smite','Purify')
	text = text.replace('Wither Rose','Void Rose')
	
	
	## friends and foes
	text = text.replace('Zombified Piglin','Infected Piglin')
	text = text.replace('Zoglin','Infected Hoglin')
	text = text.replace('Zombie','Cyborg')
	text = text.replace(' zombie',' cyborg')
	text = text.replace('Skeleton','Proto-Borg')
	text = text.replace('Husk','Mummy-Borg')
	text = text.replace('Stray','Ice-Borg')
	text = text.replace('Wither Skeleton','Xeno-Borg')
	text = text.replace('Wither Skull','Xeno-Borg Skull')
	text = text.replace('Withering Heights','Ultimate Creation')
	text = text.replace('Summon the Wither','Build AI Singularity')
	if not 'effect.minecraft' in key:
		text = text.replace('Wither','AI Singularity')
	text = text.replace('Witch','Cyber-Witch')
	text = text.replace('Vex','Drone')
	text = text.replace('a Totem','an Totem')
	text = text.replace('Totem of Undying','Insta-Clone')
	text = text.replace('Totem','Insta-Clone')
	text = text.replace('Summon an Iron Golem','Build a Defendo-Bot')
	text = text.replace('Iron Golem','Defendo-Bot')
	text = text.replace('Snow Golem','Snow-Bot')
	text = text.replace('Shulker Box','Subspace Crate')
	text = text.replace('Shulker Shell','Structo-Bot Frame')
	text = text.replace('Shulker','Structo-Bot')
	text = text.replace('Cratees','Crates')
	text = text.replace('Ender Pearl','Phase Crystal')
	text = text.replace('Eye of Ender','Ender Seeker')

	## blocks and machines
	text = text.replace('Chipped Anvil','Aging Repair-Bot')
	text = text.replace('Anvil','Repair-Bot')
	text = text.replace('Bookshelf','Data Core')
	text = text.replace('Table','Station')
	text = text.replace('Blaze Rod','Nanite Reactor')
	text = text.replace('Blaze Powder','Nanite Dust')
	text = text.replace('Blaze','Probe')
	text = text.replace('Brewing Stand','Nanite Factory')
	text = text.replace('Nether Wart', 'Nano-Mold')
	text = text.replace('Lapis Lazuli','Cybernite')
	text = text.replace('Fletching','Munitions')
	text = text.replace('Smoker','Oven')
	text = text.replace('Charcoal','Fuel Cell')
	text = text.replace('Block of Coal','Nuclear Reactor')
	text = text.replace('Coal','Thorium')
	if val == 'Nether Brick':
		text = 'Nethersteel Ingot'
	text = re.sub('Nether Bricks*','Nethersteel',text)
	text = text.replace('Red Nethersteel','Nethersteel Conduit')
	text = text.replace('Popped Chorus Fruit','Astrosteel Ingot')
	text = text.replace('Chorus ','Mecha-')
	text = text.replace('Purpur', 'Astrosteel')
	text = text.replace('Bone Meal', 'Fertilizer')
	
	
	## GUI
	text = text.replace('Create New World', 'Discover New World')
	
	
	## misc
	text = text.replace('Book','Tablet')
	text = text.replace(' book',' tablet')
	text = text.replace('Enchanted Tablet','Cybermancy Program')
	text = text.replace('Disenchant','Uninstall')
	text = text.replace('Enchanting','Cybermancy')
	text = text.replace('Enchanted','Cybernetic')
	text = text.replace('Enchantment','Upgrade')
	text = text.replace('Enchant','Upgrade')
	text = text.replace('Potion','Nanite Serum')
	text = text.replace('Painting','View Screen')
	text = text.replace(' enchantment',' upgrade')
	text = text.replace('Quill','Stylus')
	text = text.replace('Curse of ','Glitch: ')
	text = text.replace('Bed','Cloning Bed')
	text = text.replace('Respawn Anchor','Recall Anchor')
	text = text.replace('respawn anchor','recall anchor')
	text = text.replace('Redstone Dust','Redstone Wire')
	text = text.replace('Stone Pressure Plate','Pressure Plate')
	text = text.replace('Nether Star','Quantum Reactor')
	text = text.replace('Soul Speed','Neutron Repellent')
	text = text.replace('Soul escapes','Essence escapes')
	text = text.replace('Soul','Neutron')
	text = text.replace(' soul',' neutron')
	text = text.replace('Ender Chest','Hyperchest')
	text = text.replace('End Rod','Glow Rod')
	text = text.replace('End Stone Brick','Moon Brick')
	text = text.replace('End Stone','Moon Rock')
	text = text.replace('Netherite', 'Adamantium')
	if 'Redstone' not in val:
		text = text.replace('Torch', 'Light')
	
	
	## steel
	if re.search('ore|advancements',key) == None:
		text = text.replace('Iron ','Steel ').replace('iron ','steel ')
		
	
	return text

#
if __name__ == '__main__':
	main()
#
