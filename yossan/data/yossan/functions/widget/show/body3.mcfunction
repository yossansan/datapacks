#Pos
data modify block ~ ~ ~ Items.[0].tag.widget.Cache.Pos set from entity @s Pos

#Rotation_設定されていないなら実行
scoreboard players set Cache1 CacheA 0

execute store success score Cache1 CacheA run data get block ~ ~ ~ Items.[0].tag.widget.Cache.Rotation

execute if score Cache1 CacheA matches 0 run data modify block ~ ~ ~ Items.[0].tag.widget.Cache.Rotation set from entity @s Rotation