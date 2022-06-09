execute store success score Cache1 CacheA if data entity @s {Item:{tag:{Command:{CommandBlockAuto:{Enable:1b}}}}}

execute if score Cache1 CacheA matches 0 run data modify block ~ 15 ~ auto set value 1b

execute if score Cache1 CacheA matches 1 run function yossan:check_item/body2

tag @s add checked_item