#先頭を最後尾に移動
data modify storage minecraft:cache talked_to_villager.Find.States.Source insert -1 from storage minecraft:cache talked_to_villager.Find.States.Source.[0]
data remove storage minecraft:cache talked_to_villager.Find.States.Source.[0]


#一周した場合を除く

scoreboard players set Cache1 CacheA 0

execute if score Cache_villager_X2 CacheA = Cache_villager_X3 CacheA if score Cache_villager_Y2 CacheA = Cache_villager_Y3 CacheA if score Cache_villager_Z2 CacheA = Cache_villager_Z3 CacheA run scoreboard players set Cache1 CacheA 1

execute unless score Cache_villager_Y2 CacheA matches 0 if score Cache1 CacheA matches 0 run function yossan:talked_to_villager/tick/body4