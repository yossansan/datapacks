
data remove storage minecraft:cache title.Text


####向いているmobを検索

tag @s add flag1

execute positioned ^ ^ ^3 as @e[distance=..4,type=zombie] positioned as @s facing entity @a[tag=flag1] feet positioned ^ ^ ^1 rotated as @a[tag=flag1] positioned ^ ^ ^1 if entity @s[distance=..0.6] run tag @s add flag2


####タイトルを生成

execute as @e[tag=flag2,sort=nearest,limit=1] run function yossan:title/tick_1s/body2


####表示

function yossan:title/show/actionbar/main


tag @s remove flag1
tag @e[tag=flag2] remove flag2