####近くのプレイヤーを検知

execute store success score mob_priority_tick_1s_1 CacheA if entity @a[distance=..15]


####ティック処理

execute if score mob_priority_tick_1s_1 CacheA matches 1 run function yossan:mob/priority/tick_1s/active/main
execute if score mob_priority_tick_1s_1 CacheA matches 0 run function yossan:mob/priority/tick_1s/dormancy/main