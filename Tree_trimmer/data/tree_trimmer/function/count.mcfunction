#Prevent placing a new however
execute unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tree_root"],NoGravity:1b,Marker:1b,Invisible:1b,Silent:1b}

scoreboard players set Temp oak_l 0
scoreboard players set Temp spruce_l 0
scoreboard players set Temp birch_l 0
scoreboard players set Temp jungle_l 0
scoreboard players set Temp acacia_l 0
scoreboard players set Temp mangrove_l 0
scoreboard players set Temp cherry_l 0
scoreboard players set Temp pale_oak_l 0

scoreboard players set Temp oak_ls 0
scoreboard players set Temp spruce_ls 0
scoreboard players set Temp birch_ls 0
scoreboard players set Temp jungle_ls 0
scoreboard players set Temp acacia_ls 0
scoreboard players set Temp mangrove_ls 0
scoreboard players set Temp cherry_ls 0
scoreboard players set Temp pale_oak_ls 0


scoreboard players set Temp oak_w 0
scoreboard players set Temp spruce_w 0
scoreboard players set Temp birch_w 0
scoreboard players set Temp jungle_w 0
scoreboard players set Temp acacia_w 0
scoreboard players set Temp dark_oak_w 0
scoreboard players set Temp mangrove_w 0
scoreboard players set Temp cherry_w 0
scoreboard players set Temp pale_oak_w 0

scoreboard players set Temp oak_ws 0
scoreboard players set Temp spruce_ws 0
scoreboard players set Temp birch_ws 0
scoreboard players set Temp jungle_ws 0
scoreboard players set Temp acacia_ws 0
scoreboard players set Temp dark_oak_ws 0
scoreboard players set Temp mangrove_ws 0
scoreboard players set Temp cherry_ws 0
scoreboard players set Temp pale_oak_ws 0

scoreboard players set Temp tree_count 0

function tree_trimmer:count_iteration

kill @e[type=minecraft:armor_stand,tag=tree_blocked]

scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] oak_l = Temp oak_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] spruce_l = Temp spruce_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] birch_l = Temp birch_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] jungle_l = Temp jungle_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] acacia_l = Temp acacia_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] mangrove_l = Temp mangrove_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] cherry_l = Temp cherry_l
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] pale_oak_l = Temp pale_oak_l

scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] oak_ls = Temp oak_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] spruce_ls = Temp spruce_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] birch_ls = Temp birch_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] jungle_ls = Temp jungle_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] acacia_ls = Temp acacia_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] mangrove_ls = Temp mangrove_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] cherry_ls = Temp cherry_ls
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] pale_oak_ls = Temp pale_oak_ls


scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] oak_w = Temp oak_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] spruce_w = Temp spruce_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] birch_w = Temp birch_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] jungle_w = Temp jungle_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] acacia_w = Temp acacia_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] dark_oak_w = Temp dark_oak_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] mangrove_w = Temp mangrove_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] cherry_w = Temp cherry_w
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] pale_oak_w = Temp pale_oak_w

scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] oak_ws = Temp oak_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] spruce_ws = Temp spruce_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] birch_ws = Temp birch_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] jungle_ws = Temp jungle_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] acacia_ws = Temp acacia_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] dark_oak_ws = Temp dark_oak_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] mangrove_ws = Temp mangrove_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] cherry_ws = Temp cherry_ws
scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] pale_oak_ws = Temp pale_oak_ws

scoreboard players operation @n[type=minecraft:armor_stand,tag=tree_root] tree_count = Temp tree_count