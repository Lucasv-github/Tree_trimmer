scoreboard players set Temp reg_1 0

function tree_trimmer:valid_soil

execute if score Temp reg_1 matches 1 run tag @s add valid_tree
execute at @s unless block ~ ~1 ~ #minecraft:logs run tag @s remove valid_tree

#Place back here to get correct count
execute as @s[tag=valid_tree] run function tree_trimmer:replace_part

#Will further validate with leaves
#Need to count every time to detect external changes
execute at @s[tag=valid_tree] align xyz positioned ~0.5 ~ ~0.5 run function tree_trimmer:count

#Increase break counter
execute at @s[tag=valid_tree] align xyz positioned ~0.5 ~ ~0.5 as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_root] run scoreboard players add @s tree_break 1

#Did it break?
execute at @s[tag=valid_tree] align xyz positioned ~0.5 ~ ~0.5 as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=tree_root] if score @s tree_break >= @s tree_count run function tree_trimmer:destroy

#Undo if turned out not to be tree
execute at @s[tag=!reached_leaves] run setblock ~ ~ ~ minecraft:air

#Don't dispose of the item if tree
kill @s[tag=reached_leaves]

