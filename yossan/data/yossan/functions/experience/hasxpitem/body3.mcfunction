execute store result score Cache3 CacheA run data get block ~ ~ ~ Items.[0].tag.States.PlayerLevel.Level

execute store result score Cache4 CacheA run data get block ~ ~ ~ Items.[0].tag.States.PlayerLevel.NextNeedXP

execute store result block ~ ~ ~ Items.[0].tag.States.PlayerLevel.Level int 1 run scoreboard players add Cache3 CacheA 1

scoreboard players add Cache4 CacheA 10

scoreboard players operation Cache4 CacheA *= #11 Const

execute store result block ~ ~ ~ Items.[0].tag.States.PlayerLevel.NextNeedXP int 1 run scoreboard players operation Cache4 CacheA /= #10 Const

execute store result block ~ ~ ~ Items.[0].tag.States.PlayerLevel.NeedXP int 1 run scoreboard players operation Cache1 CacheA += Cache4 CacheA

execute positioned as @s run function yossan:experience/hasxpitem/body4