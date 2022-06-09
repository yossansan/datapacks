####コマブロ実行

execute positioned ~ ~2 ~ run function yossan:barrel/cache/cbnet/player_number/add/main

data merge block ~ ~3 ~ {auto:1b}

####ページが存在するなら実行

execute if score widget.tick.selected.body1_2 CacheA matches 1 run function yossan:widget/show/main