####キャッシュを消去

function yossan:playerstorage/selectstorage/main

execute positioned as @e[type=armor_stand,tag=selectstorage] run data remove block ~ ~ ~ Items.[0].tag.widget.Cache


####

function yossan:widget/hide/main

tag @s remove widget