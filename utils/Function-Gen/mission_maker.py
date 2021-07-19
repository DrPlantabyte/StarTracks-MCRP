from data import *
from commands import *
from os import path

def make_mission(
		mission_name: str,
		dirpath: str,
		machine_pos: Pos,
		trigger_scoreboard_type: str,
		trigger_scoreboard_value,
		objective_scoreboard_type: str,
		objective_scoreboard_value: int,
		reward_items: list[Item]
):
	setup_path = path.join(dirpath, 'mission_%s_setup.mcfunction' % mission_name)
	trig_path = path.join(dirpath, 'mission_%s_trigger.mcfunction' % mission_name)
	start_path = path.join(dirpath, 'mission_%s_start.mcfunction' % mission_name)
	loop_path = path.join(dirpath, 'mission_%s_loop.mcfunction' % mission_name)
	finish_path = path.join(dirpath, 'mission_%s_finish.mcfunction' % mission_name)
	with open(setup_path, 'w', newline='\n') as setup, open(trig_path, 'w', newline='\n') as trigger, open(start_path, 'w', newline='\n') as start, open(loop_path, 'w', newline='\n') as loop, open(finish_path, 'w', newline='\n') as finish:
		setup.write('# mission %s\n' % mission_name)
		trigger.write('# mission %s\n' % mission_name)
		start.write('# mission %s\n' % mission_name)
		loop.write('# mission %s\n' % mission_name)
		finish.write('# mission %s\n' % mission_name)

		tscore_name = 't_%s' % mission_name
		xz_pos = Pos(machine_pos.x, machine_pos.z)
		setup.write('forceload add %s %s\n' % (xz_pos, xz_pos))
		setup.write('setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_%s_trigger"}\n' % (machine_pos, mission_name))
		setup.write('scoreboard objectives add %s %s\n' % (tscore_name, trigger_scoreboard_type))

		trigger.write('execute as @a if score @s %s matches %s run function startracks:missions/mission_%s_start\n' % (tscore_name, trigger_scoreboard_value, mission_name))

		start.write('forceload add %s %s\n' % (xz_pos, xz_pos))
	pass