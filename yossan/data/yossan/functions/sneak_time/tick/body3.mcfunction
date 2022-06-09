####PlayerStorageから取得

execute store result score Last_sneak_time CacheA run data get block ~ ~ ~ Items.[0].tag.sneak_time.Last_sneak_time

####処理

execute if score @s sneak_time = Last_sneak_time CacheA store result block ~ ~ ~ Items.[0].tag.sneak_time.Last_sneak_time int 1 run scoreboard players set @s sneak_time 0

execute unless score @s sneak_time = Last_sneak_time CacheA store result block ~ ~ ~ Items.[0].tag.sneak_time.Last_sneak_time int 1 run scoreboard players get @s sneak_time

#first
execute if score @s sneak_time matches 1 run function yossan:sneak_time/first/main

#1sec
execute if score @s sneak_time matches 20 run function yossan:sneak_time/1sec/main