execute if block ~ ~-1 ~ air run setblock ~ ~ ~ command_block[facing=up]

execute unless block ~ ~-1 ~ air run setblock ~ ~ ~ chain_command_block[facing=up]{auto:1b}

execute positioned as @s run data modify block ~ ~ ~ Command set from storage minecraft:cache task_scheduler.add_task