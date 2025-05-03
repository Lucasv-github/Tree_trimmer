scoreboard players add Temp tree_count 1

execute if block ~ ~ ~ minecraft:oak_log run scoreboard players add Temp oak_l 1
execute if block ~ ~ ~ minecraft:spruce_log run scoreboard players add Temp spruce_l 1
execute if block ~ ~ ~ minecraft:birch_log run scoreboard players add Temp birch_l 1
execute if block ~ ~ ~ minecraft:jungle_log run scoreboard players add Temp jungle_l 1
execute if block ~ ~ ~ minecraft:acacia_log run scoreboard players add Temp acacia_l 1
execute if block ~ ~ ~ minecraft:dark_oak_log run scoreboard players add Temp dark_oak_l 1
execute if block ~ ~ ~ minecraft:mangrove_log run scoreboard players add Temp mangrove_l 1
execute if block ~ ~ ~ minecraft:cherry_log run scoreboard players add Temp cherry_l 1

execute if block ~ ~ ~ minecraft:stripped_oak_log run scoreboard players add Temp oak_ls 1
execute if block ~ ~ ~ minecraft:stripped_spruce_log run scoreboard players add Temp spruce_ls 1
execute if block ~ ~ ~ minecraft:stripped_birch_log run scoreboard players add Temp birch_ls 1
execute if block ~ ~ ~ minecraft:stripped_jungle_log run scoreboard players add Temp jungle_ls 1
execute if block ~ ~ ~ minecraft:stripped_acacia_log run scoreboard players add Temp acacia_ls 1
execute if block ~ ~ ~ minecraft:stripped_dark_oak_log run scoreboard players add Temp dark_oak_ls 1
execute if block ~ ~ ~ minecraft:stripped_mangrove_log run scoreboard players add Temp mangrove_ls 1
execute if block ~ ~ ~ minecraft:stripped_cherry_log run scoreboard players add Temp cherry_ls 1


execute if block ~ ~ ~ minecraft:oak_wood run scoreboard players add Temp oak_w 1
execute if block ~ ~ ~ minecraft:spruce_wood run scoreboard players add Temp spruce_w 1
execute if block ~ ~ ~ minecraft:birch_wood run scoreboard players add Temp birch_w 1
execute if block ~ ~ ~ minecraft:jungle_wood run scoreboard players add Temp jungle_w 1
execute if block ~ ~ ~ minecraft:acacia_wood run scoreboard players add Temp acacia_w 1
execute if block ~ ~ ~ minecraft:dark_oak_wood run scoreboard players add Temp dark_oak_w 1
execute if block ~ ~ ~ minecraft:mangrove_wood run scoreboard players add Temp mangrove_w 1
execute if block ~ ~ ~ minecraft:cherry_wood run scoreboard players add Temp cherry_w 1

execute if block ~ ~ ~ minecraft:stripped_oak_wood run scoreboard players add Temp oak_ws 1
execute if block ~ ~ ~ minecraft:stripped_spruce_wood run scoreboard players add Temp spruce_ws 1
execute if block ~ ~ ~ minecraft:stripped_birch_wood run scoreboard players add Temp birch_ws 1
execute if block ~ ~ ~ minecraft:stripped_jungle_wood run scoreboard players add Temp jungle_ws 1
execute if block ~ ~ ~ minecraft:stripped_acacia_wood run scoreboard players add Temp acacia_ws 1
execute if block ~ ~ ~ minecraft:stripped_dark_oak_wood run scoreboard players add Temp dark_oak_ws 1
execute if block ~ ~ ~ minecraft:stripped_mangrove_wood run scoreboard players add Temp mangrove_ws 1
execute if block ~ ~ ~ minecraft:stripped_cherry_wood run scoreboard players add Temp cherry_ws 1

summon minecraft:armor_stand ~ ~ ~ {Tags:["tree_blocked"],NoGravity:1b,Marker:1b,Invisible:1b,Silent:1b}

execute unless entity @s[tag=reached_leaves] positioned ~1 ~ ~ if block ~ ~ ~ #leaves run tag @s add reached_leaves
execute unless entity @s[tag=reached_leaves] positioned ~-1 ~ ~ if block ~ ~ ~ #leaves run tag @s add reached_leaves
execute unless entity @s[tag=reached_leaves] positioned ~ ~1 ~ if block ~ ~ ~ #leaves run tag @s add reached_leaves
execute unless entity @s[tag=reached_leaves] positioned ~ ~-1 ~ if block ~ ~ ~ #leaves run tag @s add reached_leaves
execute unless entity @s[tag=reached_leaves] positioned ~ ~ ~1 if block ~ ~ ~ #leaves run tag @s add reached_leaves
execute unless entity @s[tag=reached_leaves] positioned ~ ~ ~-1 if block ~ ~ ~ #leaves run tag @s add reached_leaves

execute positioned ~1 ~ ~ unless entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function tree_trimmer:count_iteration_1_20_post
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function tree_trimmer:count_iteration_1_20_post
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function tree_trimmer:count_iteration_1_20_post
execute positioned ~ ~-1 ~ unless entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function tree_trimmer:count_iteration_1_20_post
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function tree_trimmer:count_iteration_1_20_post
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function tree_trimmer:count_iteration_1_20_post