from story_maker import *
import os, sys
from os import path

test_dir = sys.argv[1]
if not path.isdir(test_dir):
	print('Dir "%s" does not exist'% test_dir)
	exit(1)

#
m = Mission(
	mission_id='m1_test1',
	mission_name = 'test 1',
	briefer = 'Alex',
	briefer_color = 'green',
	briefing = ['Hello.', 'Part 2, make a stone pickaxe', 'Part 3. Done'],
	objective_scoreboard_type = 'minecraft.crafted:minecraft.stone_pickaxe',
	objective_scoreboard_display_name = 'Craft Stone Pickaxe',
	objective_scoreboard_value = 1,
	debriefing = ['Hooray!', 'You did it!', "Here's your reward"],
	reward_items = [Item('minecraft:cookie', 12), Item('minecraft:potion',1,{'Potion':"minecraft:fire_resistance"})],
	reset_objective_score = False,
	event_function = None
)
m.write_functions(machine_pos=Pos(9,9,9), briefing_timer_scoreboard='briefing_tick', dirpath=test_dir)
