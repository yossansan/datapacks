execute as @p positioned as @e[type=minecraft:armor_stand,tag=datapack_arm1] run function yossan:exec_commandblock/by_player/main

tp @s @p

tag @p add DropCommandBlockAuto

data merge block 24 81 -4 {auto:1b}

data modify entity @s PickupDelay set value 0