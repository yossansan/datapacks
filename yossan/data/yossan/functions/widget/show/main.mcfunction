#初期化
scoreboard players operation PlayerNumber CacheA = @s PlayerNumber

tag @s add widget


####PlayerStorageにプレイヤーの状態を保存

function yossan:playerstorage/selectstorage/main

execute positioned as @e[type=armor_stand,tag=selectstorage] run function yossan:widget/show/body3


####既にメニューが表示されているならhideを実行

scoreboard players set Cache1 CacheA 0

execute positioned as @e[type=item,tag=widget] if score @s PlayerNumber = PlayerNumber CacheA run scoreboard players set Cache1 CacheA 1

execute if score Cache1 CacheA matches 1 run function yossan:widget/hide/main


##

#メニューの樽の座標を取得
execute as @e[type=minecraft:armor_stand,tag=datapack_arm1] run function yossan:widget/show/body2

#メニューの向きを取得
execute positioned as @e[type=armor_stand,tag=selectstorage] as @e[type=minecraft:armor_stand,tag=datapack_arm1] run data modify entity @s Rotation set from block ~ ~ ~ Items.[0].tag.widget.Cache.Rotation

#アイテムを召喚
execute positioned as @s as @e[type=minecraft:armor_stand,tag=datapack_arm1] rotated as @s rotated ~ 0 positioned ^ ^1.32 ^-0.75 rotated ~-48 0 run function yossan:widget/show/body1


####後処理

execute as @e[type=item,tag=widget,tag=flag1] run scoreboard players operation @s PlayerNumber = PlayerNumber CacheA

tag @e[type=item,tag=flag1] remove flag1

data merge block 27 81 -4 {auto:1b}