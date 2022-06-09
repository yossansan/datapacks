#先頭を消去
execute unless score Count CacheA matches 0 run data remove storage minecraft:cache talked_to_villager.Find.pages.Source.[0]

execute unless score Count CacheA matches 0 run scoreboard players remove Count CacheA 1

#残り回数が0だった場合
execute if score Count CacheA matches 0 run data modify storage minecraft:cache talked_to_villager.Find.pages.Result set from storage minecraft:cache talked_to_villager.Find.pages.Source.[0]

#残り回数が0だった場合を除く
execute unless score Count CacheA matches 0 run function yossan:talked_to_villager/tick/body6