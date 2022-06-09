tp @s 15 100 0

execute store result entity @s Pos.[2] double 1 run scoreboard players get Time_TaskScheduler GlobalScore

execute positioned as @s run fill ~ ~ ~ ~ ~10 ~ air

##

scoreboard players add Time_TaskScheduler GlobalScore 1

execute store result entity @s Pos.[2] double 1 run scoreboard players operation Time_TaskScheduler GlobalScore %= #100 Const

execute positioned as @s run data merge block ~ ~ ~ {auto:1b}