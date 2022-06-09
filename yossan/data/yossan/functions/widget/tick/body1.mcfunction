scoreboard players operation PlayerNumber CacheA = @s PlayerNumber

tag @s add widget_tick_1

execute store result score armswinged CacheA if entity @s[tag=armswing]

execute as @e[type=item,tag=widget] if score @s PlayerNumber = PlayerNumber CacheA run data merge entity @s {CustomNameVisible:0b}

execute as @e[type=item,tag=widget] if score @s PlayerNumber = PlayerNumber CacheA positioned as @s positioned ~ ~-0.25 ~ facing entity @a[tag=widget,tag=widget_tick_1] eyes positioned ^ ^ ^1 rotated as @a[tag=widget,tag=widget_tick_1] positioned ^ ^ ^1 if entity @s[distance=..0.1] run function yossan:widget/tick/looked/main

####移動してたら閉じる

function yossan:playerstorage/selectstorage/main

execute positioned as @e[type=armor_stand,tag=selectstorage] as @e[type=minecraft:armor_stand,tag=datapack_arm1] run data modify entity @s Pos set from block ~ ~ ~ Items.[0].tag.widget.Cache.Pos

execute positioned as @e[type=minecraft:armor_stand,tag=datapack_arm1] if entity @s[distance=0.1..] run function yossan:widget/hide/with_init/main


####後処理

tag @s remove widget_tick_1