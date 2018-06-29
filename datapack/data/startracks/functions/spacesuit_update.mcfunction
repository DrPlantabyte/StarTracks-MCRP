# function to enforce space suits
scoreboard players set @a hasHelmet 0
scoreboard players set @a hasAir 4
##

# space helmet check
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players set @s hasHelmet 1
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run scoreboard players set @s hasHelmet 1
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run scoreboard players set @s hasHelmet 1
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run scoreboard players set @s hasHelmet 1
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run scoreboard players set @s hasHelmet 1
# air check
## no air in the end (or void-exposed regions of the overworld)
execute as @a if block ~ 0 ~ minecraft:air run scoreboard players set @s hasAir 0
#execute as @a if block ~ 0 ~ #startracks:air run scoreboard players set @s hasAir 0
## no air in nether
execute as @a if block ~ 127 ~ minecraft:bedrock run scoreboard players set @s hasAir 0 0
## except if there is barrer blocks at +128 blocks, that's signifying air pocket
execute as @a if block ~ ~128 ~ minecraft:barrier run scoreboard players set @s hasAir 4
##

# helmet air supply
execute as @a if score @s hasHelmet matches 1 run effect give @s minecraft:water_breathing 1 0 true 
execute as @a if score @s hasHelmet matches 1 run effect scoreboard players add @s hasAir 1

# for space, you need to be wearing a whole suit

# space chest check
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players add @s hasAir 1

# space leggings check
execute as @a if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run scoreboard players add @s hasAir 1

# space boots check
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players add @s hasAir 1
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run scoreboard players add @s hasAir 1
##

# suffocate those out in space without a helmet
execute as @a if score @s hasAir matches ..3 run effect give @s minecraft:wither 1 1 true

