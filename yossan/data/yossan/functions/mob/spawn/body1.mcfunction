####

data modify storage minecraft:cache Mob.spawn.type set from block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[0].tag.Command.MobStates.type

execute if data storage minecraft:cache {Mob:{spawn:{type:"minecraft:zombie_spawn_egg"}}} positioned as @s run summon zombie ~ ~ ~ {Tags:["flag1","Enemy"]}

execute if data storage minecraft:cache {Mob:{spawn:{type:"minecraft:skeleton_spawn_egg"}}} positioned as @s run summon skeleton ~ ~ ~ {Tags:["flag1","Enemy"]}

execute if data storage minecraft:cache {Mob:{spawn:{type:"minecraft:slime_spawn_egg"}}} positioned as @s run summon slime ~ ~ ~ {Tags:["flag1","Enemy"]}

execute as @e[tag=flag1,limit=1] run function yossan:mob/spawn/body2


####

execute positioned as @s as @e[type=item,sort=nearest,limit=1] run function yossan:mob/spawn/body3