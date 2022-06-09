tp @e[type=minecraft:armor_stand,tag=datapack_arm1] @s

function yossan:barrel/cache/generate/main

data modify block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.Pos append from entity @e[type=minecraft:armor_stand,tag=datapack_arm1,limit=1] Pos