execute at @s if block ~ ~1 ~ #logs run tag @s add verified
execute at @s if block ~ ~-1 ~ #logs run tag @s add verified

execute at @s[tag=verified] run function tree_trimmer:log_broken
tag @s remove verified

