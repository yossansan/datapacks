data modify entity @e[type=minecraft:armor_stand,tag=datapack_arm1,limit=1] Pos set from entity @s ArmorItems.[0].tag.Command.SpawnedLocation

execute positioned as @e[type=minecraft:armor_stand,tag=datapack_arm1] unless entity @s[distance=..50] run function yossan:mob/spawnedlocation/teleport