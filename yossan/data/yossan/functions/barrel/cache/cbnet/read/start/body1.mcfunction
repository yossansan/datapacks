execute as @a if score @s PlayerNumber = cbnet_PlayerNumber_read_1 CacheA run tag @s add cbnet_PlayerNumber

data remove block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.PlayerNumber.[0]

function yossan:barrel/cache/cbnet/read/start/main