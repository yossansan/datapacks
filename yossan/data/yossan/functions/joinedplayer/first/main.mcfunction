scoreboard players operation @s PlayerNumber = NextPlayerNumber GlobalScore

scoreboard players add NextPlayerNumber GlobalScore 1

function yossan:playerstorage/reset

execute positioned as @e[type=armor_stand,tag=selectstorage] run data modify block ~ ~ ~ Items.[0].tag.SkullOwner set from entity @s bukkit.lastKnownName


####ようこそ

tellraw @a [{"selector":"@s","color":"aqua","bold":true},{"text":"が初めてYossanServerに参加しました！！"}]

execute positioned as @s run playsound minecraft:entity.player.levelup master @p ~ ~ ~

tp @s 100000 52 0

spawnpoint @s 100000 52 0

give @s wooden_sword{Unbreakable:1b} 1

gamemode adventure @s[gamemode=survival]