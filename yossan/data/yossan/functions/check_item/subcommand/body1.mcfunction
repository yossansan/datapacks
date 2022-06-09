data modify entity @s Pos set from entity @s Item.tag.Command.CommandBlockAuto.SubTargetPos.[0]

data remove entity @s Item.tag.Command.CommandBlockAuto.SubTargetPos.[0]

execute positioned as @s run data modify block ~ ~ ~ auto set value 1b

execute unless data entity @s {Item:{tag:{Command:{CommandBlockAuto:{SubTargetPos:[]}}}}} run function yossan:check_item/subcommand/body1