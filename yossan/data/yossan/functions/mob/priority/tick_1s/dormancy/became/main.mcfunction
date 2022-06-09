tag @s add Dormancy
tag @s remove Active

execute if entity @s[tag=Enemy] run data merge entity @s {NoAI:1b}