scoreboard players set Temp reg_1 0

function tree_trimmer:invoke_new_drops

execute if score Temp reg_1 matches 0 run function tree_trimmer:old_drops

function tree_trimmer:destroy_iteration

kill @s