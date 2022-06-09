data modify entity @e[type=minecraft:armor_stand,tag=datapack_arm1,limit=1] Pos set from entity @s SelectedItem.tag.Command.CommandBlockAuto.TargetPos

execute positioned as @e[type=minecraft:armor_stand,tag=datapack_arm1] run function yossan:exec_commandblock/by_player/main

tag @s add DropCommandBlockAuto