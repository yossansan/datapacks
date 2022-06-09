tag @s add flag1

execute as @e[type=!arrow,type=!item,type=!experience_orb,type=!armor_stand,distance=..2.9] positioned as @s facing entity @a[tag=flag1] feet positioned ^ ^ ^1 rotated as @a[tag=flag1] positioned ^ ^ ^1 if entity @s[distance=..0.5] run tag @s add flag2

execute positioned as @s run tag @e[type=minecraft:armor_stand,tag=PlayerDataStorage,sort=nearest,limit=1] add flag3

execute positioned as @s as @e[tag=flag2,sort=nearest,limit=1] run function yossan:view_lookmobdata_step2_ver1

tag @e[tag=flag2] remove flag2

tag @e[tag=flag3,type=minecraft:armor_stand] remove flag3

tag @s remove flag1