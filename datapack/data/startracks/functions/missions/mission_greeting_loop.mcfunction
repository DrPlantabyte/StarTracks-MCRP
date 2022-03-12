# mission zero: greetings
execute as @a if score @s total_time matches 1..20 run teleport @s 8 68 8 facing 7 68 8
execute as @a if score @s total_time matches 200 run function startracks:missions/greeting1
execute as @a if score @s total_time matches 400 run function startracks:missions/greeting2
execute as @a if score @s total_time matches 600 run function startracks:missions/greeting3
execute as @a if score @s total_time matches 800 run function startracks:missions/greeting4
execute as @a if score @s total_time matches 1000 run function startracks:missions/greeting5
execute as @a if score @s total_time matches 1200 run function startracks:missions/greeting6