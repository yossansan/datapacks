tp @s ~ ~ ~

execute store result score findkey_1 CacheA if blocks ~ ~ ~ ~ ~ ~ 0 50 0 all

execute if score findkey_1 CacheA matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ air run function yossan:findkey/body1