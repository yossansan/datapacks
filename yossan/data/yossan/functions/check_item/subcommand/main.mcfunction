data modify entity @s Item.tag.Command.Cache.CommandBlockAuto.NowSubTargetPos set from entity @s Item.tag.Command.CommandBlockAuto.SubTargetPos

function yossan:check_item/subcommand/body1

data modify entity @s Item.tag.Command.CommandBlockAuto.SubTargetPos set from entity @s Item.tag.Command.Cache.CommandBlockAuto.NowSubTargetPos