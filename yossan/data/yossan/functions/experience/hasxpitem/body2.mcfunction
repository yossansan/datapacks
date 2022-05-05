#Remove NeedXP


execute positioned as @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3

execute store result score Cache1 CacheA run data get block ~ ~ ~ Items.[0].tag.States.PlayerLevel.NeedXP

execute store result score Cache2 CacheA run data get entity @s Inventory.[{id:"minecraft:nether_star"}].tag.XP

execute store result block ~ ~ ~ Items.[0].tag.States.PlayerLevel.NeedXP int 1 run scoreboard players operation Cache1 CacheA -= Cache2 CacheA

title @s actionbar [{"text":"現在のプレイヤーレベル："},{"nbt":"Items.[0].tag.States.PlayerLevel.Level","block":"~ ~ ~"},{"text":" 次のレベルまで："},{"nbt":"Items.[0].tag.States.PlayerLevel.NeedXP","block":"~ ~ ~"}]

clear @s minecraft:nether_star 1

execute if score Cache1 CacheA matches ..0 run function yossan:experience/hasxpitem/body3