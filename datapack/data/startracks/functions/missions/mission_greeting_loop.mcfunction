# mission zero: greetings
scoreboard players add @a greet_time 1
execute as @a if score @s greet_time matches 200 run function startracks:missions/greeting1
execute as @a if score @s greet_time matches 280 run function startracks:missions/greeting2
execute as @a if score @s greet_time matches 560 run function startracks:missions/greeting3
execute as @a if score @s greet_time matches 740 run function startracks:missions/greeting4
execute as @a if score @s greet_time matches 920 run function startracks:missions/greeting5
execute as @a if score @s greet_time matches 2000 run function startracks:missions/greeting6