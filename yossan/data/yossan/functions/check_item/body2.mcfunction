data modify entity @e[type=minecraft:armor_stand,tag=datapack_arm1,limit=1] Pos set from entity @s Item.tag.Command.CommandBlockAuto.TargetPos

execute store success score check_item_body2_1 CacheA if data entity @s {Item:{tag:{Command:{BePickupDelayZero:1b}}}}

execute if score check_item_body2_1 CacheA matches 1 run function yossan:check_item/body3_1

execute if score check_item_body2_1 CacheA matches 0 run function yossan:check_item/body3_2