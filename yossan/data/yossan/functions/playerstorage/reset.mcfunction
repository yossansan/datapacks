function yossan:playerstorage/selectstorage/main

execute positioned as @e[type=armor_stand,tag=selectstorage] run data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"PlayerData"}'}}}]}

execute positioned as @e[type=armor_stand,tag=selectstorage] run data modify block ~ ~ ~ Items.[0].tag merge value {States:{HP:100,PlayerLevel:{Level:1,NeedXP:10,NextNeedXP:10,}},LastSelectedItem:air}