scoreboard players set @a spacesuit_score 0

scoreboard players add @a[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:leather_helmet"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:iron_helmet"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:gold_helmet"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:diamond_helmet"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:chainmail_helmet"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:netherite_helmet"}]}] spacesuit_score 1

scoreboard players add @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:leather_chestplate"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:iron_chestplate"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:gold_chestplate"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:diamond_chestplate"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:chainmail_chestplate"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:netherite_chestplate"}]}] spacesuit_score 1

scoreboard players add @a[nbt={Inventory:[{Slot:101b,Count:1b,id:"minecraft:leather_leggings"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b,Count:1b,id:"minecraft:iron_leggings"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b,Count:1b,id:"minecraft:gold_leggings"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b,Count:1b,id:"minecraft:diamond_leggings"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b,Count:1b,id:"minecraft:chainmail_leggings"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b,Count:1b,id:"minecraft:netherite_leggings"}]}] spacesuit_score 1

scoreboard players add @a[nbt={Inventory:[{Slot:100b,Count:1b,id:"minecraft:leather_boots"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b,Count:1b,id:"minecraft:iron_boots"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b,Count:1b,id:"minecraft:gold_boots"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b,Count:1b,id:"minecraft:diamond_boots"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b,Count:1b,id:"minecraft:chainmail_boots"}]}] spacesuit_score 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b,Count:1b,id:"minecraft:netherite_boots"}]}] spacesuit_score 1

execute as @a if score @s spacesuit_score matches 4 run effect give @s minecraft:water_breathing 1 1 true

execute as @a[nbt=!{Dimension:"minecraft:overworld"}] if score @s spacesuit_score matches 0..3 run effect give @s minecraft:wither 1 1
