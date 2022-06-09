execute store result score AddTime CacheA run data get block ~ ~ ~ Items.[0].tag.Enchantments.[0].lvl

data modify storage minecraft:cache task_scheduler.add_task set from block ~ ~ ~ Items.[1].tag.BlockEntityTag.Command

##

scoreboard players operation AddTime CacheA += Time_TaskScheduler GlobalScore

scoreboard players operation AddTime CacheA %= #100 Const

##

tp @s 15 100 0

execute store result entity @s Pos.[2] double 1 run scoreboard players get AddTime CacheA

##

execute positioned as @s unless block ~ ~ ~ air run function yossan:task_scheduler/add_task/body2

execute positioned as @s run function yossan:task_scheduler/add_task/body3