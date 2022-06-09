####進行度などを更新

data remove storage minecraft:cache talked_to_villager.Find.States.Source.[0]

data modify storage minecraft:cache talked_to_villager.Find.States.Source insert 0 from storage minecraft:cache talked_to_villager.Find.States.Result

data modify block ~ ~ ~ Items.[0].tag.States.Progress.talked_to_villager set from storage minecraft:cache talked_to_villager.Find.States.Source