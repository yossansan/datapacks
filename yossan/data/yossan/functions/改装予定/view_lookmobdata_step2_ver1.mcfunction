data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section1 set value '[{"text":"                            "}]'

execute store success score Cache1 CacheA run data get entity @s CustomName

execute if score Cache1 CacheA matches 1 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section2 set from entity @s CustomName

execute store result score Cache2 CacheA run data get entity @s Health 10000

execute store result score Cache3 CacheA run data get entity @s Attributes.[{Name:"minecraft:generic.max_health"}].Base 100

scoreboard players operation Cache2 CacheA /= Cache3 CacheA



execute if score Cache2 CacheA matches 10..20 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏","color":"red"},{"text":"▏▏▏▏▏▏▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 20..30 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏","color":"red"},{"text":"▏▏▏▏▏▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 30..40 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏","color":"red"},{"text":"▏▏▏▏▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 40..50 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏","color":"red"},{"text":"▏▏▏▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 50..60 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏▏","color":"red"},{"text":"▏▏▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 60..70 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏▏▏","color":"red"},{"text":"▏▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 70..80 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏▏▏▏","color":"red"},{"text":"▏▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 80..90 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏▏","color":"white"}]'

execute if score Cache2 CacheA matches 90..100 run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"white"}]'

execute if score Cache2 CacheA matches 100.. run data modify entity @e[tag=flag3,type=minecraft:armor_stand,limit=1] ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3 set value '[{"text":"▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"","color":"white"}]'




title @p times 0 20 0

execute if score Cache1 CacheA matches 1 run title @p subtitle [{"nbt":"ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section1","entity":"@e[tag=flag3,type=minecraft:armor_stand,limit=1]","interpret":true},{"nbt":"ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section2","entity":"@e[tag=flag3,type=minecraft:armor_stand,limit=1]","interpret":true},{"nbt":"ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3","entity":"@e[tag=flag3,type=minecraft:armor_stand,limit=1]","interpret":true}]

execute unless score Cache1 CacheA matches 1 run title @p subtitle [{"nbt":"ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section1","entity":"@e[tag=flag3,type=minecraft:armor_stand,limit=1]","interpret":true},{"selector":"@s"},{"nbt":"ArmorItems.[0].tag.Command.Cache.viewlookmobdata.Section3","entity":"@e[tag=flag3,type=minecraft:armor_stand,limit=1]","interpret":true}]

title @p title ""