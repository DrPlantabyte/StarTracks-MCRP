# mission zero: greetings
scoreboard players add @a greet_time 1
execute as @a if score @s greet_time matches 100 run function startracks:missions/greeting1
execute as @a if score @s greet_time matches 340 run function startracks:missions/greeting2
execute as @a if score @s greet_time matches 580 run function startracks:missions/greeting3
execute as @a if score @s greet_time matches 820 run function startracks:missions/greeting4
execute as @a if score @s greet_time matches 1060 run function startracks:missions/greeting5
execute as @a if score @s greet_time matches 1300 run function startracks:missions/greeting6