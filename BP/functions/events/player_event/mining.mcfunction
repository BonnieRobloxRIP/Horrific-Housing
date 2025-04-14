# event
execute as @r[tag=game, tag=!miner] at @s run tag @s add miner1
execute as @a[tag=miner1] at @s run give @s diamond_pickaxe
execute as @a[tag=miner1] at @s run gamemode survival @s
execute as @a[tag=miner1] at @s run tag @s add miner
execute as @a[tag=miner1] at @s run tag @s remove miner1