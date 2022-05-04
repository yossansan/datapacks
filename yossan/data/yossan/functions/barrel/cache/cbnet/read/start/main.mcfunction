execute store success score Cache1 CacheA store result score cbnet_PlayerNumber_read_1 CacheA run data get block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.PlayerNumber.[0]

execute if score Cache1 CacheA matches 1 run function yossan:barrel/cache/cbnet/read/start/body1

execute store success score Cache1 CacheA run data get block ~ ~ ~ Items.[{Slot:0b}].tag.cbnet.Pos.[0]

execute if score Cache1 CacheA matches 1 run function yossan:barrel/cache/cbnet/read/start/body2