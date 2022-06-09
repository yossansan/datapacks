data modify entity @s {} merge from block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT

data modify entity @s ArmorItems.[0].tag.Command.MobStates.SpawnedLocation set from entity @s Pos


####ステータスを取得

execute store result score Level CacheA run data get entity @s ArmorItems.[0].tag.Command.MobStates.Level

execute store result score BaseHP CacheA run data get entity @s ArmorItems.[0].tag.Command.BaseMobStates.HP

execute store result score BaseATK CacheA run data get entity @s ArmorItems.[0].tag.Command.BaseMobStates.ATK

execute store result score BaseDEF CacheA run data get entity @s ArmorItems.[0].tag.Command.BaseMobStates.DEF

execute store result score BaseSpeed CacheA run data get entity @s ArmorItems.[0].tag.Command.BaseMobStates.Speed

execute if score Level CacheA matches 0 store result entity @s ArmorItems.[0].tag.Command.MobStates.Level int 1 run scoreboard players set Level CacheA 1


####計算して代入

execute store result entity @s Health float 0.05 store result entity @s Attributes.[{Name:"generic.max_health"}].Base double 0.05 run scoreboard players operation BaseHP CacheA *= Level CacheA

execute store result entity @s Attributes.[{Name:"generic.attack_damage"}].Base double 0.01 run scoreboard players operation BaseATK CacheA *= Level CacheA

execute store result entity @s Attributes.[{Name:"generic.armor"}].Base double 0.01 run scoreboard players operation BaseDEF CacheA *= Level CacheA

#execute store result entity @s Attributes.[{Name:"generic.movement_speed"}].Base double 0.001 run scoreboard players operation BaseSpeed CacheA *= Level CacheA




tag @s remove flag1