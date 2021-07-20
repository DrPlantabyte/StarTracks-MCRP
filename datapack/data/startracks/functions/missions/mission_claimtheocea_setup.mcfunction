# mission Claim the Ocean Monument
forceload add 2 9 2 9
setblock 2 2 9 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/mission_claimtheocea_trigger"}
scoreboard objectives add t_claimtheocea minecraft.custom:minecraft.swim_one_cm
