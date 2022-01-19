# testing mission generator ideas

def main():
	pass

class Mission:
	def __init__(self, id, start_trigger, briefing_list, end_trigger, rewards, scoreboard ):
		self.id = id
		self.start_trigger = start_trigger
		self.briefing_list = briefing_list
		self.end_trigger = end_trigger
		self.rewards = rewards
		self.scoreboard = scoreboard
def make_mission_path(path_id, mission_list):
	# set a data value:
	## data modify storage minecraft:resource_location startracks:missions/mypath/progress set value 1
	# execute if stored resource exists (any value):
	## execute if data storage minecraft:resource_location startracks:missions/mypath/progress run say "test"
	# execute if stored value matches value
	## execute if data storage minecraft:resource_location {"startracks:missions/mypath/progress":1} run say "test"
	pass