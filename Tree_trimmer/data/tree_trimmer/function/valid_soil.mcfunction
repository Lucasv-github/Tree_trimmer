scoreboard players set Temp reg_1 0

#Tag changes makes this pretty annoying
execute at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:dirt run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:coarse_dirt run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:mycelium run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:podzol run scoreboard players set Temp reg_1 1

execute at @s if block ~ ~-1 ~ minecraft:rooted_dirt run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players set Temp reg_1 1

execute at @s if block ~ ~-1 ~ minecraft:mud run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:mangrove_roots run scoreboard players set Temp reg_1 1
execute at @s if block ~ ~-1 ~ minecraft:muddy_mangrove_roots run scoreboard players set Temp reg_1 1

function tree_trimmer:1_21_2_post/valid_soil