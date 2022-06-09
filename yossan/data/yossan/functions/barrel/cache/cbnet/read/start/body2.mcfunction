summon area_effect_cloud ~ ~ ~ {Tags:["cbnet_pos","flag1"]}

data modify entity @e[type=area_effect_cloud,tag=flag1,limit=1] Pos set from block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.Pos.[0]

tag @e[type=area_effect_cloud,tag=flag1] remove flag1

data remove block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.Pos.[0]

function yossan:barrel/cache/cbnet/read/start/main