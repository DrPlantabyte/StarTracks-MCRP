from data import *
from commands import *
from os import path

def make_mission(
		mission_name: str,
		dirpath: str,
		machine_pos: Pos,
		trigger_scoreboard_type: str,
		trigger_scoreboard_value,
		briefing: str,
		objective_scoreboard_type: str,
		objective_scoreboard_display_name: str,
		objective_scoreboard_value,
		debriefing: str,
		reward_items: list[Item]
):
	fullname = mission_name
	mission_name = safename(mission_name)
	setup_path = path.join(dirpath, 'mission_%s_setup.mcfunction' % mission_name)
	trig_path = path.join(dirpath, 'mission_%s_trigger.mcfunction' % mission_name)
	start_path = path.join(dirpath, 'mission_%s_start.mcfunction' % mission_name)
	loop_path = path.join(dirpath, 'mission_%s_loop.mcfunction' % mission_name)
	finish_path = path.join(dirpath, 'mission_%s_finish.mcfunction' % mission_name)
	with open(setup_path, 'w', newline='\n') as setup, open(trig_path, 'w', newline='\n') as trigger, open(start_path, 'w', newline='\n') as start, open(loop_path, 'w', newline='\n') as loop, open(finish_path, 'w', newline='\n') as finish:
		setup.write('# mission %s\n' % fullname)
		trigger.write('# mission %s\n' % fullname)
		start.write('# mission %s\n' % fullname)
		loop.write('# mission %s\n' % fullname)
		finish.write('# mission %s\n' % fullname)

		tscore_name = 't_%s' % mission_name
		oscore_name = 'o_%s' % mission_name
		xz_pos = Pos(machine_pos.x, machine_pos.z)
		machine_pos2 = machine_pos.up(1)
		setup.write('forceload add %s %s\n' % (xz_pos, xz_pos))
		setup.write('setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_%s_trigger"}\n' % (machine_pos, mission_name))
		setup.write('scoreboard objectives add %s %s\n' % (tscore_name, trigger_scoreboard_type))

		trigger.write('execute as @a if score @s %s matches %s run function startracks:missions/mission_%s_start\n' % (tscore_name, trigger_scoreboard_value, mission_name))

		start.write('setblock %s minecraft:bedrock replace\n' % machine_pos)
		start.write(
			'setblock %s minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_%s_loop"}\n' % (
			machine_pos2, mission_name))
		start.write('tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"%s","color":"white"}]\n' % briefing)
		start.write('scoreboard objectives add %s %s "%s"\n' % (oscore_name, objective_scoreboard_type, objective_scoreboard_display_name))
		#start.write('scoreboard players set @a %s 0\n' % oscore_name)

		loop.write('execute as @a if score @s %s matches %s run function startracks:missions/mission_%s_finish\n' % (oscore_name, objective_scoreboard_value, mission_name))

		finish.write('setblock %s minecraft:bedrock replace\n' % machine_pos2)
		finish.write('scoreboard objectives remove %s\n' % tscore_name)
		finish.write('scoreboard objectives remove %s\n' % oscore_name)
		finish.write('tellraw @a ["",{"text":"[Commander Steve] ","color":"blue"},{"text":"%s","color":"white"}]\n' % debriefing)
		for item in reward_items:
			finish.write('give @a %s\n' % item)
	pass
def safename(n: str) -> str:
	out = ''
	safe_chars = 'abcdefghijklmnopqrstuvwxyz1234567890_'
	n = n.lower()
	for i in range(0,len(n)):
		c = n[c]
		if c in safe_chars and len(out) < 12:
			out += c
	if len(out) == 0:
		raise ValueError('Cannot make safe string from "%s"' % n)