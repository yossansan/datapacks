function yossan:task_scheduler/tick_1s/tick

function yossan:mob/priority/tick_1s/tick

function yossan:mob/enemy/tick_1s/tick

function yossan:title/tick_1s/tick


####60secondTick

execute store result score Cache1 CacheA run scoreboard players get cumulative_tick GlobalScore

scoreboard players operation Cache1 CacheA %= #1200 Const

execute if score Cache1 CacheA matches 0 run function yossan:tick/60second