tag @s add flag2

execute at @s positioned ^ ^ ^3 as @e[distance=..4] positioned as @s positioned ~ ~ ~ facing entity @a[tag=flag2] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 unless entity @s[distance=..0.1] run tag @s add looked_mob

tag @s remove flag2