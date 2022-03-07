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
			objective_scoreboard_value: int,
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

	def write_functions(self, machine_pos: Pos, briefing_timer_scoreboard: str, dirpath, next_mission_id: str = None):
		start_func_name = 'missions/%s_00start' % ( self.mission_id)
		briefing_loop_func_name = 'missions/%s_01brief_loop' % ( self.mission_id)
		mission_start_func_name = 'missions/%s_02main_start' % ( self.mission_id)
		mission_loop_func_name = 'missions/%s_03main_loop' % ( self.mission_id)
		mission_end_func_name = 'missions/%s_04main_end' % ( self.mission_id)
		debrief_loop_func_name = 'missions/%s_05debrf_loop' % ( self.mission_id)
		final_func_name = 'missions/%s_06end' % ( self.mission_id)

		mission_scoreboard = '_st_%s' % self.mission_id
		## MC data storage examples:
		# /data modify storage startracks:data briefing_tick set value 0
		#
		# /data get storage startracks:data briefing_tick
		# /execute if data storage startracks:data {briefing_tick:1} as @p run say "hi"
		setup_commands: list[str] = ['# %s setup' % self.mission_name]
		brief_coms: list[str] = ['# %s briefing loop' % self.mission_name]
		mission_start_coms: list[str] = ['# %s mission start' % self.mission_name]
		mission_coms: list[str] = ['# %s mission loop' % self.mission_name]
		mission_end_coms: list[str] = ['# %s mission end' % self.mission_name]
		debrief_coms: list[str] = ['# %s debrief loop' % self.mission_name]
		final_coms: list[str] = ['# %s cleanup' % self.mission_name]

		### setup
		#setup_commands += ['forceload add %s %s' % (machine_pos.x, machine_pos.z)] # assuming already force-loaded
		#setup_commands += ['scoreboard objectives add %s dummy' % briefing_timer_scoreboard ] # assuming briefing timing scoreboard is already setup
		setup_commands += ['scoreboard players set @a %s 0' % briefing_timer_scoreboard]
		setup_commands += ['setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:%s"} destroy' % (machine_pos.block_pos(), briefing_loop_func_name)]
		setup_commands += ['scoreboard objectives add %s %s \"%s\"' % (mission_scoreboard, self.objective_scoreboard_type, self.objective_scoreboard_display_name)]
		setup_commands += ['scoreboard objectives setdisplay sidebar %s' % mission_scoreboard]
		if self.reset_objective_score:
			setup_commands += ['scoreboard players set @a %s 0' % mission_scoreboard]

		### briefing
		brief_coms += ['scoreboard players add @a %s 1' % briefing_timer_scoreboard]
		briefing_interval_time_seconds = 9 # time between messages during briefing
		btick = 30
		for msg in self.briefing:
			brief_coms += ['execute as @a if score @s %s matches %s run tellraw @s ["",{"text":"[%s] ","color":"%s"},{"text":"%s","color":"white"}]' % (briefing_timer_scoreboard, int(btick), self.briefer, self.briefer_color, msg)]
			#
			btick += briefing_interval_time_seconds * 20 # 20 ticker per second
		brief_coms += [
			'execute as @a if score @s %s matches %s.. run function startracks:%s' % (
			briefing_timer_scoreboard, btick, mission_start_func_name)]

		### mission
		mission_start_coms += ['setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:%s"} destroy' % (machine_pos.block_pos(), mission_loop_func_name)]
		mission_coms += ['execute as @a if score @s %s matches %s.. run function startracks:%s' % (
			mission_scoreboard, self.objective_scoreboard_value, mission_end_func_name)]
		mission_end_coms += ['setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:%s"} destroy' % (machine_pos.block_pos(), debrief_loop_func_name)]
		if self.reward_items is not None:
			for item in self.reward_items:
				mission_end_coms += ['give @a %s' % item]
		mission_end_coms += ['scoreboard players set @a %s 0' % briefing_timer_scoreboard]

		### debriefing
		debrief_coms += ['scoreboard players add @a %s 1' % briefing_timer_scoreboard]
		btick = 30
		for msg in self.debriefing:
			debrief_coms += [
				'execute as @a if score @s %s matches %s run tellraw @s ["",{"text":"[%s] ","color":"%s"},{"text":"%s","color":"white"}]' % (
				briefing_timer_scoreboard, int(btick), self.briefer, self.briefer_color, msg)]
			#
			btick += briefing_interval_time_seconds * 20  # 20 ticker per second
		debrief_coms += [
			'execute as @a if score @s %s matches %s.. run function startracks:%s' % (
			briefing_timer_scoreboard, btick, final_func_name)]

		### clean-up/next mission
		final_coms += ['setblock %s minecraft:bedrock destroy' % machine_pos.block_pos()]
		if next_mission_id is not None:
			next_mission_start_func = 'missions/%s_00start' % ( next_mission_id )
			final_coms += ['function startracks:%s' % next_mission_start_func]
		# write to files
		write_to_file('\n'.join(setup_commands), path.join(dirpath, '%s.mcfunction' % start_func_name))
		write_to_file('\n'.join(brief_coms), path.join(dirpath, '%s.mcfunction' % briefing_loop_func_name))
		write_to_file('\n'.join(mission_start_coms), path.join(dirpath, '%s.mcfunction' % mission_start_func_name))
		write_to_file('\n'.join(mission_coms), path.join(dirpath, '%s.mcfunction' % mission_loop_func_name))
		write_to_file('\n'.join(mission_end_coms), path.join(dirpath, '%s.mcfunction' % mission_end_func_name))
		write_to_file('\n'.join(debrief_coms), path.join(dirpath, '%s.mcfunction' % debrief_loop_func_name))
		write_to_file('\n'.join(final_coms), path.join(dirpath, '%s.mcfunction' % final_func_name))


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