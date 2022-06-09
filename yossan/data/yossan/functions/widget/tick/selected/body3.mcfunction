execute store result score widget.tick.selected.body1_2 CacheA unless data block ~ ~1 ~ {Items:[]} 

execute if score widget.tick.selected.body1_2 CacheA matches 1 run data modify storage minecraft:cache widget.show.main.showPos set from entity @s Pos