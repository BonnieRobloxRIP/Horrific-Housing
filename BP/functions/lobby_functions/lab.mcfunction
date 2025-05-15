# effects when item detected
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run camerashake add @a 0.2 1 positional
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run camerashake add @a 0.2 1 positional
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run camerashake add @a 0.2 1 positional
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run camerashake add @a 0.2 1 positional
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run camera @s fade time 0 0 0.2 color 119 0 188
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run camera @s fade time 0 0 0.2 color 119 0 188
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run camera @s fade time 0 0 0.2 color 119 0 188
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run camera @s fade time 0 0 0.2 color 119 0 188
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run particle brr:item_collected 5 -16 -8
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run particle brr:item_collected 7 -16 -8
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run particle brr:item_collected 7 -16 -3
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run particle brr:item_collected 5 -16 -3
# sound
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run playsound sfx.lobby.item_collected @a
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run playsound sfx.lobby.item_collected @a
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run playsound sfx.lobby.item_collected @a
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run playsound sfx.lobby.item_collected @a
# pedistal load
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run structure load L2 5 -16 -9
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run structure load L2a 7 -16 -9
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run structure load L2b 7 -16 -4
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run structure load L2c 5 -16 -4
# message when item placed
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run tellraw @a {"rawtext":[{"text": "§b"},{"selector": "@s"},{"text":" §5Placed an item"}]}
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run tellraw @a {"rawtext":[{"text": "§b"},{"selector": "@s"},{"text":" §5Placed an item"}]}
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run tellraw @a {"rawtext":[{"text": "§b"},{"selector": "@s"},{"text":" §5Placed an item"}]}
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run tellraw @a {"rawtext":[{"text": "§b"},{"selector": "@s"},{"text":" §5Placed an item"}]}
# item scores
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 0 run scoreboard players set item1 subspace 1
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 0 run scoreboard players set item2 subspace 1
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 0 run scoreboard players set item3 subspace 1
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 0 run scoreboard players set item4 subspace 1
# remove item from player
execute as @a[hasitem={item=brr:marshmallow997_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item1 subspace matches 1 run clear @s brr:marshmallow997_plush 1
execute as @a[hasitem={item=brr:bonnie_plush}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item2 subspace matches 1 run clear @s brr:bonnie_plush 1
execute as @a[hasitem={item=brr:subspace_tripmine_block}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item3 subspace matches 1 run clear @s brr:subspace_tripmine_block 1
execute as @a[hasitem={item=brr:his_hand}, x=2, y=-16, z=-10, dx=7, dy=5, dz=9] at @s if score item4 subspace matches 1 run clear @s brr:his_hand 1 
