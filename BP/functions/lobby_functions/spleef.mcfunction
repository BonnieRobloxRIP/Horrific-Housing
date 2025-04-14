# reload on countdown end
scoreboard players remove spleef lobby 1
# skins
execute if score spleef lobby matches ..0 if score skin lobby matches 0 run structure load L1 -8 4 -24 0_degrees none block_by_block 1
execute if score spleef lobby matches ..0 if score skin lobby matches 1 run structure load L1a -8 4 -24 0_degrees none block_by_block 1
execute if score spleef lobby matches ..0 if score skin lobby matches 2 run structure load L1b -8 4 -24 0_degrees none block_by_block 1
execute if score spleef lobby matches ..0 if score skin lobby matches 3 run structure load L1c -8 4 -24 0_degrees none block_by_block 1
# player interaction
execute as @a[tag=lobby] at @s if score skin lobby matches 0 if block ~ ~-1 ~ green_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 0 if block ~ ~-1 ~ cyan_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 1 if block ~ ~-1 ~ black_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 1 if block ~ ~-1 ~ purple_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 2 if block ~ ~-1 ~ gray_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 2 if block ~ ~-1 ~ light_gray_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 3 if block ~ ~-1 ~ green_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 3 if block ~ ~-1 ~ cyan_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 3 if block ~ ~-1 ~ red_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 3 if block ~ ~-1 ~ magenta_wool run setblock ~ ~-1 ~ air
execute as @a[tag=lobby] at @s if score skin lobby matches 3 if block ~ ~-1 ~ pink_wool run setblock ~ ~-1 ~ air
# lobby and game random music setup
execute if score spleef lobby matches ..0 run scoreboard players random music lobby 0 7
execute if score spleef lobby matches ..0 run scoreboard players random music_game lobby 0 4
# reset timer
execute if score spleef lobby matches ..0 run scoreboard players set spleef lobby 400