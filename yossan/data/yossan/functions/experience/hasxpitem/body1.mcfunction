function yossan:playerstorage/selectstorage/main

execute positioned as @e[type=armor_stand,tag=selectstorage] run function yossan:experience/hasxpitem/body2

data merge block 36 81 -4 {auto:1b}