tp @s 20 81 -10

execute store success score Cache1 CacheA run data modify entity @s Pos set from storage minecraft:cache widget.show.main.showPos

data remove storage minecraft:cache widget.show.main.showPos

data remove block 0 50 0 Items

execute positioned as @s run data modify block 0 50 0 Items set from block ~ ~1 ~ Items

execute positioned as @s run data merge block ~ ~3 ~ {auto:1b}