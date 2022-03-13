# Village1a setup
scoreboard players set @a _st_briefing 0
setblock 7 7 7 minecraft:repeating_command_block[facing=up]{auto:1b,powered:0b,Command:"function startracks:missions/m10_village1a_01brief_loop"} destroy
scoreboard objectives add _st_m10_village1a minecraft.custom:minecraft.talked_to_villager "Talk to a Villager"