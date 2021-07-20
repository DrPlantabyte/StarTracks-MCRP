# mission Dragon Hunter
forceload add 2 5 2 5
setblock 2 2 5 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_dragonhunter_trigger"}
scoreboard objectives add t_dragonhunter minecraft.picked_up:minecraft.ender_pearl
