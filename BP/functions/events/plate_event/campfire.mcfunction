# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add campfire
# house default rotation
execute as @e[type=brr:plate, tag=campfire] at @s unless score gamemode game matches 11 run setblock ^-1 ^ ^2 campfire
# sweeper
execute as @e[type=brr:plate, tag=campfire] at @s if score gamemode game matches 11 run setblock ^ ^21 ^ campfire
# end
execute as @r[type=brr:plate, tag=campfire] at @s run tag @s remove campfire