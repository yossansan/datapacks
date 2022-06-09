data remove storage minecraft:cache title.Text

data modify storage minecraft:cache title.Text.Section1 set value '[{"text":"                            "}]'


####名前

execute store success score Cache1 CacheA run data get entity @s CustomName

execute if score Cache1 CacheA matches 1 run data modify storage minecraft:cache title.Text.Section2 set from entity @s CustomName


####レベル

execute if score Cache1 CacheA matches 1 run data modify storage minecraft:cache title.Text.Section3 set value '[{"text":"_Lv."}]'

execute if score Cache1 CacheA matches 1 run data modify storage minecraft:cache title.Text.Section4 set from entity @s ArmorItems.[0].tag.Command.MobStates.Level


####Health

execute store result score Cache1 CacheA run data get entity @s Health 10000

execute store result score Cache2 CacheA run data get entity @s Attributes.[{Name:"minecraft:generic.max_health"}].Base 100

scoreboard players operation Cache1 CacheA /= Cache2 CacheA

execute if score Cache1 CacheA matches 0..10 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"","color":"red"},{"text":"▏▏▏▏▏▏▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 10..20 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏","color":"red"},{"text":"▏▏▏▏▏▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 20..30 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏","color":"red"},{"text":"▏▏▏▏▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 30..40 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏","color":"red"},{"text":"▏▏▏▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 40..50 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏","color":"red"},{"text":"▏▏▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 50..60 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏▏","color":"red"},{"text":"▏▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 60..70 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏▏▏","color":"red"},{"text":"▏▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 70..80 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏▏▏▏","color":"red"},{"text":"▏▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 80..90 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏▏","color":"white"}]'
execute if score Cache1 CacheA matches 90..100 run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"white"}]'
execute if score Cache1 CacheA matches 100.. run data modify storage minecraft:cache title.Text.Section5 set value '[{"text":"▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"","color":"white"}]'