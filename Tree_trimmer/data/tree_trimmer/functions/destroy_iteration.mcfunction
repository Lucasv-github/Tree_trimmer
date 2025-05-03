setblock ~ ~ ~ minecraft:air

execute positioned ~1 ~ ~ if block ~ ~ ~ #logs run function tree_trimmer:destroy_iteration
execute positioned ~-1 ~ ~ if block ~ ~ ~ #logs run function tree_trimmer:destroy_iteration
execute positioned ~ ~1 ~ if block ~ ~ ~ #logs run function tree_trimmer:destroy_iteration
execute positioned ~ ~-1 ~ if block ~ ~ ~ #logs run function tree_trimmer:destroy_iteration
execute positioned ~ ~ ~1 if block ~ ~ ~ #logs run function tree_trimmer:destroy_iteration
execute positioned ~ ~ ~-1 if block ~ ~ ~ #logs run function tree_trimmer:destroy_iteration