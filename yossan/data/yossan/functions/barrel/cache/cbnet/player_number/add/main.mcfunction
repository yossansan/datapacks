function yossan:barrel/cache/generate/main

execute store result storage minecraft:cache cbnet.player_number int 1 run scoreboard players get @s PlayerNumber

data modify block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.PlayerNumber append from storage minecraft:cache cbnet.player_number