scoreboard players operation PlayerNumber CacheA = @s PlayerNumber


####

execute as @e[type=item,tag=widget] if score @s PlayerNumber = PlayerNumber CacheA positioned as @s positioned ~ ~0.25 ~ run function yossan:widget/hide/body1