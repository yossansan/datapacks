tag @s add Active
tag @s remove Dormancy

execute if entity @s[tag=Enemy] run data merge entity @s {NoAI:0b}