scoreboard players reset @s talked_to_villager

data remove storage minecraft:cache talked_to_villager

tag @s add talked_Player


#PlayerStorageを選択
function yossan:playerstorage/selectstorage/main

#プレイヤーが視点を合わせているmobをget
function yossan:def/get_lookmob/main

#村人の座標をスコアボードに保存
execute as @e[type=villager,tag=looked_mob,sort=nearest,limit=1] run function yossan:talked_to_villager/tick/body2

#進行度のリストをストレージに保存して検索
execute as @e[type=armor_stand,tag=selectstorage] positioned as @s run function yossan:talked_to_villager/tick/body3

#村人が話しかける
execute as @e[type=villager,tag=looked_mob,sort=nearest,limit=1] positioned as @s run function yossan:talked_to_villager/tick/body5

#PlayerStorageを更新
execute as @e[type=armor_stand,tag=selectstorage] positioned as @s run function yossan:talked_to_villager/tick/body7



####後処理

tag @e[tag=looked_mob] remove looked_mob

tag @s remove talked_Player