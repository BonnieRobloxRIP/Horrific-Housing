# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add cake
# house default rotation
execute as @e[type=brr:plate, tag=cake] at @s unless score gamemode game matches 11 run setblock ^-2 ^ ^3 cake
# sweeper
execute as @e[type=brr:plate, tag=cake] at @s if score gamemode game matches 11 run setblock ^2 ^21 ^2 cake
# end
execute as @r[type=brr:plate, tag=cake] at @s run tag @s remove cake