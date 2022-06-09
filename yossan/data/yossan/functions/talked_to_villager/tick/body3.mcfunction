# as @e[type=armor_stand,tag=selectstorage] positioned as @s


#進行度のリストをストレージに保存
data modify storage minecraft:cache talked_to_villager.Find.States.Source set from block ~ ~ ~ Items.[0].tag.States.Progress.talked_to_villager

#一周回ったかどうか調べるためのやつ
execute store result score Cache_villager_X3 CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Source.[-1].Pos.[0]
execute store result score Cache_villager_Y3 CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Source.[-1].Pos.[1]
execute store result score Cache_villager_Z3 CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Source.[-1].Pos.[2]


#検索
function yossan:talked_to_villager/tick/body4


####見つかった場合

#execute if score IsFound CacheA matches 1 run say found




####見つからなかった場合

#execute if score IsFound CacheA matches 0 run say notfound
#execute if score IsFound CacheA matches 0 run tellraw @a {"nbt":"Items.[0].tag.States","block":"~ ~ ~"}

execute if score IsFound CacheA matches 0 run data modify block ~ ~ ~ Items.[0].tag.States.Progress.talked_to_villager insert 0 value {Pos:[0,0,0],Progress:1}

execute if score IsFound CacheA matches 0 store result block ~ ~ ~ Items.[0].tag.States.Progress.talked_to_villager.[0].Pos.[0] int 1 run scoreboard players get Cache_villager_X1 CacheA
execute if score IsFound CacheA matches 0 store result block ~ ~ ~ Items.[0].tag.States.Progress.talked_to_villager.[0].Pos.[1] int 1 run scoreboard players get Cache_villager_Y1 CacheA
execute if score IsFound CacheA matches 0 store result block ~ ~ ~ Items.[0].tag.States.Progress.talked_to_villager.[0].Pos.[2] int 1 run scoreboard players get Cache_villager_Z1 CacheA

execute if score IsFound CacheA matches 0 run function yossan:talked_to_villager/tick/body3 