scoreboard players operation @s PlayerNumber = NextPlayerNumber GlobalScore

scoreboard players add NextPlayerNumber GlobalScore 1

function yossan:playerstorage/reset

execute positioned as @e[type=armor_stand,tag=selectstorage] run data modify block ~ ~ ~ Items.[0].tag.SkullOwner set from entity @s bukkit.lastKnownName