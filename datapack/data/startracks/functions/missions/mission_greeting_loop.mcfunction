# mission zero: greetings
scoreboard players add @a greet_time 1
execute as @a if score @s greet_time matches 200 run function startracks:missions/greeting1
execute as @a if score @s greet_time matches 400 run function startracks:missions/greeting2
execute as @a if score @s greet_time matches 600 run function startracks:missions/greeting3
execute as @a if score @s greet_time matches 800 run function startracks:missions/greeting4
execute as @a if score @s greet_time matches 1000 run function startracks:missions/greeting5
execute as @a if score @s greet_time matches 1200 run function startracks:missions/greeting6