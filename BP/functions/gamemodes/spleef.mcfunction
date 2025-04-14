# timer
scoreboard players remove spleef gamemodes 1 
# regenerate
execute if score spleef gamemodes matches ..0 run structure load G8M1 -32 0 8 0_degrees none block_by_block 1
# player
execute as @a[tag=game] at @s if block ~ ~-1 ~ cyan_wool run setblock ~ ~-1 ~ air
execute as @a[tag=game] at @s if block ~ ~-1 ~ green_wool run setblock ~ ~-1 ~ air
# end
execute if score spleef gamemodes matches ..0 run scoreboard players set spleef gamemodes 2400