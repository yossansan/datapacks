data remove block 0 50 0 Items

data modify block 0 50 0 Items.[{Slot:0b}] set from entity @s Item

execute as @e[type=minecraft:armor_stand,tag=datapack_arm1] positioned 20 81 -10 run function yossan:widget/tick/selected/body2