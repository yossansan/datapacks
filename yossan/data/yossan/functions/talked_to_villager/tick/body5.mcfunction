#進行度を取得
execute store result score talked_to_villager_Progress CacheA store result score Count CacheA run data get storage minecraft:cache talked_to_villager.Find.States.Result.Progress


#####進行度に合ったページを取得

data modify storage minecraft:cache talked_to_villager.Find.pages.Source set from block ~ ~-2 ~ Items.[{Slot:26b}].tag.pages

scoreboard players remove Count CacheA 1

function yossan:talked_to_villager/tick/body6


#限界突破回避
execute if data storage minecraft:cache {talked_to_villager:{Find:{pages:{Source:[]}}}} run scoreboard players set talked_to_villager_Progress CacheA 0


####喋る（限界突破時以外）
execute unless score talked_to_villager_Progress CacheA matches 0 run tellraw @p[tag=talked_Player] [{"text":"["},{"nbt":"CustomName","entity":"@s","interpret":true},{"text":"] "},{"nbt":"talked_to_villager.Find.pages.Result","storage":"minecraft:cache"}]


####進行度を進める

execute store result storage minecraft:cache talked_to_villager.Find.States.Result.Progress int 1 run scoreboard players add talked_to_villager_Progress CacheA 1


####限界突破時

execute if score talked_to_villager_Progress CacheA matches 1 run function yossan:talked_to_villager/tick/body5