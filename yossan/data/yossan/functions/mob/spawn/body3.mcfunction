execute store result score @s CacheA run data get entity @s Item.Count

kill @s[scores={CacheA=1}]

####

execute store result entity @s Item.Count byte 1 run scoreboard players remove @s CacheA 1

tag @s remove checked_item