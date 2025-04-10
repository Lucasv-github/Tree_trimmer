execute at @s if block ~ ~-1 ~ #minecraft:dirt run tag @s add verified
execute at @s unless block ~ ~1 ~ #minecraft:logs run tag @s remove verified

execute at @s[tag=verified] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root,distance=..1] run tag @s add first_time
execute at @s[tag=first_time] align xyz positioned ~0.5 ~ ~0.5 run function tree_trimmer:count

tag @s[tag=first_time,tag=!reached_leaves] remove verified

execute at @s[tag=!verified] run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root]

execute at @s[tag=verified] run scoreboard players remove @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root] tree_count 1
execute at @s[tag=verified] run function tree_trimmer:log_broken

tag @s remove first_time
tag @s remove verified

