data modify entity @s {} merge from block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT

data modify entity @s ArmorItems.[0].tag.Command.SpawnedLocation set from entity @s Pos

tag @s remove flag1