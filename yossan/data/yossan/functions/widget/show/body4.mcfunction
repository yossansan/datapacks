execute rotated as @s positioned ^ ^ ^3 run summon item ~ ~ ~ {Tags:["flag1"],Item:{id:"minecraft:stone",Count:1b},NoGravity:1b}
execute rotated as @s positioned ^ ^ ^3 as @e[type=item,tag=flag1,sort=nearest,limit=1] run data modify entity @s Item set from block 0 50 0 Items.[0]
data remove block 0 50 0 Items.[0]
execute at @s run tp @s ~ ~ ~ ~12 ~