
####座標を取得

execute store result score Cache_villager_X2 CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Source.[0].Pos.[0]
execute store result score Cache_villager_Y2 CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Source.[0].Pos.[1]
execute store result score Cache_villager_Z2 CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Source.[0].Pos.[2]


####照合
scoreboard players set IsFound CacheA 0

execute if score Cache_villager_X1 CacheA = Cache_villager_X2 CacheA if score Cache_villager_Y1 CacheA = Cache_villager_Y2 CacheA if score Cache_villager_Z1 CacheA = Cache_villager_Z2 CacheA run scoreboard players set IsFound CacheA 1


####座標が一致した場合

execute if score IsFound CacheA matches 1 run data modify storage minecraft:cache talked_to_villager.Find.States.Result set from storage minecraft:cache talked_to_villager.Find.States.Source.[0]


####座標が一致しなかった場合

execute if score IsFound CacheA matches 0 run function yossan:talked_to_villager/tick/body4_2