data merge block 33 81 -4 {auto:1b}

execute as @e[type=minecraft:armor_stand,tag=datapack_arm1] run data modify entity @s Pos set from block ~ ~ ~ Items.[0].tag.sneak_time.first.Pos

execute positioned as @e[type=minecraft:armor_stand,tag=datapack_arm1] if entity @s[distance=..0.1] run function yossan:widget/show/main