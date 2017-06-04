# function to enforce space suits
scoreboard players set @a hasHelmet 0
scoreboard players set @a hasAir 1
##

# space helmet check
scoreboard players set @a hasHelmet 1 {Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}
scoreboard players set @a hasHelmet 1 {Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}
scoreboard players set @a hasHelmet 1 {Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}
scoreboard players set @a hasHelmet 1 {Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}
scoreboard players set @a hasHelmet 1 {Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}
# air check
execute @a ~ ~ ~ execute @p[r=1] ~ ~ ~ detect ~ 0 ~ minecraft:air * scoreboard players set @a hasAir 0
##

# helmet air supply
execute @a[score_hasHelmet_min=1] ~ ~ ~ effect @p[r=1] minecraft:water_breathing 1 0
execute @a[score_hasHelmet_min=1] ~ ~ ~ 
scoreboard players add @a[score_hasHelmet_min=1] hasAir 1
# for space, you need to be wearing a whole suit
# space chest check
scoreboard players add @a hasAir 1 {Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}
# space leggings check
scoreboard players add @a hasAir 1 {Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}
# space boots check
scoreboard players add @a hasAir 1 {Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}
scoreboard players add @a hasAir 1 {Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}
##

# suffocate those out in space without a helmet
execute @a[score_hasAir=3] ~ ~ ~ execute @p[r=1] ~ ~ ~ detect ~ ~128 ~ minecraft:air * effect @p[r=1] minecraft:wither 1 1