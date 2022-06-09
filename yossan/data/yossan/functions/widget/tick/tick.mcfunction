#widgetが表示されているときのみ実行
#実行元のコマブロの座標[27 81 -4]

execute unless entity @a[tag=widget] run data merge block 27 81 -4 {auto:0b}

execute as @a[tag=widget] run function yossan:widget/tick/body1