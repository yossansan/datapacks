####初期化

data remove entity @s Offers.Recipes

#data modify block ~ ~-2 ~ Items.[{Slot:17b}] merge value {Count:1b,Slot:17b,id:"minecraft:bedrock",tag:{display:{Lore:['{"text":"基本的に触らないでください"}'],Name:'{"text":"キャッシュ","bold":true}'}}}


####メイン処理

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:18b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:9b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:0b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:19b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:10b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:1b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:20b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:11b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:2b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:21b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:12b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:3b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:22b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:13b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:4b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:23b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:14b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:5b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:24b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:15b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:6b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe

data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buy set from block ~ ~-2 ~ Items.[{Slot:25b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.buyB set from block ~ ~-2 ~ Items.[{Slot:16b}]
data modify storage minecraft:cache Mob.villager.trader.oneRecipe.sell set from block ~ ~-2 ~ Items.[{Slot:7b}]
data modify entity @s Offers.Recipes append from storage minecraft:cache Mob.villager.trader.oneRecipe
data remove storage minecraft:cache Mob.villager.trader.oneRecipe