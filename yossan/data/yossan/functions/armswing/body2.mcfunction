scoreboard players reset @s armswing

tag @s add armswing

execute store success score Cache1 CacheA if data entity @s {SelectedItem:{tag:{Command:{CommandBlockAuto:{Enable:1b}}}}}

execute if score Cache1 CacheA matches 1 run function yossan:armswing/body3