####変更時の処理

execute if entity @s[tag=!Active] run function yossan:mob/priority/tick_1s/active/became/main


####メイン処理

execute if entity @s[type=villager] facing entity @p feet run tp @s ~ ~ ~ ~ ~