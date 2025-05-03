execute if block ~ ~ ~ minecraft:mangrove_log run scoreboard players add Temp mangrove_l 1
execute if block ~ ~ ~ minecraft:stripped_mangrove_log run scoreboard players add Temp mangrove_ls 1
execute if block ~ ~ ~ minecraft:mangrove_wood run scoreboard players add Temp mangrove_w 1
execute if block ~ ~ ~ minecraft:stripped_mangrove_wood run scoreboard players add Temp mangrove_ws 1

function tree_trimmer:1_20_post/count_iteration
