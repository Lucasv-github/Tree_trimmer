#Logs
execute at @s[nbt={Item:{id:"minecraft:mangrove_log"}}] run setblock ~ ~ ~ minecraft:mangrove_log

#Stripped logs
execute at @s[nbt={Item:{id:"minecraft:stripped_mangrove_log"}}] run setblock ~ ~ ~ minecraft:stripped_mangrove_log

#Wood
execute at @s[nbt={Item:{id:"minecraft:mangrove_wood"}}] run setblock ~ ~ ~ minecraft:mangrove_wood

#Stripped wood
execute at @s[nbt={Item:{id:"minecraft:stripped_mangrove_wood"}}] run setblock ~ ~ ~ minecraft:stripped_mangrove_wood

function tree_trimmer:1_20_post/replace_part