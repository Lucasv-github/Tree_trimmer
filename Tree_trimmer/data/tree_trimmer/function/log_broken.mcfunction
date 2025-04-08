#Logs
execute at @s[nbt={Item:{id:"minecraft:oak_log"}}] run setblock ~ ~ ~ minecraft:oak_log
execute at @s[nbt={Item:{id:"minecraft:spruce_log"}}] run setblock ~ ~ ~ minecraft:spruce_log
execute at @s[nbt={Item:{id:"minecraft:birch_log"}}] run setblock ~ ~ ~ minecraft:birch_log
execute at @s[nbt={Item:{id:"minecraft:jungle_log"}}] run setblock ~ ~ ~ minecraft:jungle_log
execute at @s[nbt={Item:{id:"minecraft:acacia_log"}}] run setblock ~ ~ ~ minecraft:acacia_log
execute at @s[nbt={Item:{id:"minecraft:dark_oak_log"}}] run setblock ~ ~ ~ minecraft:dark_oak_log
execute at @s[nbt={Item:{id:"minecraft:mangrove_log"}}] run setblock ~ ~ ~ minecraft:mangrove_log
execute at @s[nbt={Item:{id:"minecraft:cherry_log"}}] run setblock ~ ~ ~ minecraft:cherry_log
execute at @s[nbt={Item:{id:"minecraft:pale_oak_log"}}] run setblock ~ ~ ~ minecraft:pale_oak_log

#Wood
execute at @s[nbt={Item:{id:"minecraft:oak_wood"}}] run setblock ~ ~ ~ minecraft:oak_wood
execute at @s[nbt={Item:{id:"minecraft:spruce_wood"}}] run setblock ~ ~ ~ minecraft:spruce_wood
execute at @s[nbt={Item:{id:"minecraft:birch_wood"}}] run setblock ~ ~ ~ minecraft:birch_wood
execute at @s[nbt={Item:{id:"minecraft:jungle_wood"}}] run setblock ~ ~ ~ minecraft:jungle_wood
execute at @s[nbt={Item:{id:"minecraft:acacia_wood"}}] run setblock ~ ~ ~ minecraft:acacia_wood
execute at @s[nbt={Item:{id:"minecraft:dark_oak_wood"}}] run setblock ~ ~ ~ minecraft:dark_oak_wood
execute at @s[nbt={Item:{id:"minecraft:mangrove_wood"}}] run setblock ~ ~ ~ minecraft:mangrove_wood
execute at @s[nbt={Item:{id:"minecraft:cherry_wood"}}] run setblock ~ ~ ~ minecraft:cherry_wood
execute at @s[nbt={Item:{id:"minecraft:pale_oak_wood"}}] run setblock ~ ~ ~ minecraft:pale_oak_wood

#Stripped
execute at @s[nbt={Item:{id:"minecraft:stripped_oak_log"}}] run setblock ~ ~ ~ minecraft:stripped_oak_log
execute at @s[nbt={Item:{id:"minecraft:stripped_spruce_log"}}] run setblock ~ ~ ~ minecraft:stripped_spruce_log
execute at @s[nbt={Item:{id:"minecraft:stripped_birch_log"}}] run setblock ~ ~ ~ minecraft:stripped_birch_log
execute at @s[nbt={Item:{id:"minecraft:stripped_jungle_log"}}] run setblock ~ ~ ~ minecraft:stripped_jungle_log
execute at @s[nbt={Item:{id:"minecraft:stripped_acacia_log"}}] run setblock ~ ~ ~ minecraft:stripped_acacia_log
execute at @s[nbt={Item:{id:"minecraft:stripped_dark_oak_log"}}] run setblock ~ ~ ~ minecraft:stripped_dark_oak_log
execute at @s[nbt={Item:{id:"minecraft:stripped_mangrove_log"}}] run setblock ~ ~ ~ minecraft:stripped_mangrove_log
execute at @s[nbt={Item:{id:"minecraft:stripped_cherry_log"}}] run setblock ~ ~ ~ minecraft:stripped_cherry_log
execute at @s[nbt={Item:{id:"minecraft:stripped_pale_oak_log"}}] run setblock ~ ~ ~ minecraft:stripped_pale_oak_log

execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root,distance=..1] run function tree_trimmer:count
execute at @s run scoreboard players remove @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root] tree_count 1

execute at @s as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root] if score @s tree_count matches ..0 at @s run function tree_trimmer:destroy

kill @s