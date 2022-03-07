#!/usr/bin/python3
import os
from os import path
from data import *
from commands import *

class Mission:
	def __init__(
			self,
			mission_id,
			mission_name: str,
			briefer: str,
			briefer_color: str,
			briefing: list[str],
			objective_scoreboard_type: str,
			objective_scoreboard_display_name: str,
			objective_scoreboard_value,
			debriefing: list[str],
			reward_items: list[Item],
			reset_objective_score:bool = False,
			event_function:str = None
	):
		self.mission_id = mission_id
		self.mission_name = mission_name
		self.briefer = briefer
		self.briefer_color = briefer_color
		self.briefing = briefing
		self.objective_scoreboard_type = objective_scoreboard_type
		self.objective_scoreboard_display_name = objective_scoreboard_display_name
		self.objective_scoreboard_value = objective_scoreboard_value
		self.debriefing = debriefing
		self.reward_items = reward_items
		self.reset_objective_score = reset_objective_score
		self.event_function = event_function

	def write_functions(self, machine_pos: Pos, briefing_timer_scoreboard: str, dirpath, index="", next_mission_id = None):
		start_func_name = 'missions/m%s_%s_start' % (index, self.mission_id)
		loop_func_name = 'missions/m%s_%s_loop' % (index, self.mission_id)
		## MC data storage examples:
		# /data modify storage startracks:data briefing_tick set value 0
		#
		# /data get storage startracks:data briefing_tick
		# /execute if data storage startracks:data {briefing_tick:1} as @p run say "hi"
		setup_commands: list[str] = ['# %s setup' % self.mission_name]
		tick_commands: list[str] = ['# %s loop' % self.mission_name]
		#setup_commands += ['forceload add %s %s' % (machine_pos.x, machine_pos.z)] # assuming already force-loaded
		#setup_commands += ['scoreboard objectives add %s dummy' % briefing_timer_scoreboard ] # assuming briefing timing scoreboard is already setup
		setup_commands += ['scoreboard players set @a %s 0' % briefing_timer_scoreboard]
		tick_commands += ['scoreboard players add @a %s 1' % briefing_timer_scoreboard]
		setup_commands += ['setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:%s"}' % (machine_pos.block_pos(), loop_func_name)]
		briefing_interval_time_seconds = 9 # time between messages during briefing
		btick = 100
		for msg in self.briefing:
			tick_commands += ['execute as @a if score @s briefing_tick matches %s run tellraw @s ["",{"text":"[%s] ","color":"%s"},{"text":"%s","color":"white"}]\n' % (int(btick), self.briefer, self.briefer_color, msg)]
			#
			btick += briefing_interval_time_seconds * 20 # 20 ticker per second

		# TODO: implement
		write_to_file('\n'.join(setup_commands), path.join(dirpath, '%s.mcfunction' % start_func_name))
		write_to_file('\n'.join(tick_commands), path.join(dirpath, '%s.mcfunction' % loop_func_name))


def write_to_file(content, filepath):
	parent_dir = path.dirname(path.abspath(filepath))
	if not path.isdir(parent_dir):
		os.makedirs(parent_dir)
	with open(filepath, 'w') as fout:
		print('\t',filepath,sep='')
		fout.write(content)
		print(content)
		print()
	# done