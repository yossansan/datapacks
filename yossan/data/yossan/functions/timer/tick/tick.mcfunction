execute store result score Cache1 CacheA run scoreboard players add cumulative_tick GlobalScore 1

scoreboard players operation Cache1 CacheA %= #20 Const

execute if score Cache1 CacheA matches 0 run function yossan:tick/second