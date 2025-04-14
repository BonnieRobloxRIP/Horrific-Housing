# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add igloo
execute as @e[type=brr:plate, tag=igloo] at @s run scoreboard players set @s "event building" 2
# house default rotation
execute as @e[type=brr:plate, tag=igloo, scores={rotation=0, upside=0}] at @s run structure load E6M1 ~-2 ~ ~-2
execute as @e[type=brr:plate, tag=igloo, scores={rotation=0, upside=1}] at @s run structure load E6M1a ~-2 ~-33 ~-2
# house 90_rotation
execute as @e[type=brr:plate, tag=igloo, scores={rotation=1, upside=0}] at @s run structure load E6M1 ~-3 ~ ~-2 90_degrees
execute as @e[type=brr:plate, tag=igloo, scores={rotation=1, upside=1}] at @s run structure load E6M1a ~-3 ~-33 ~-2 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=igloo, scores={rotation=2, upside=0}] at @s run structure load E6M1 ~-2 ~ ~-3 180_degrees
execute as @e[type=brr:plate, tag=igloo, scores={rotation=2, upside=1}] at @s run structure load E6M1a ~-2 ~-33 ~-3 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=igloo, scores={rotation=3, upside=0}] at @s run structure load E6M1 ~-2 ~ ~-2 270_degrees
execute as @e[type=brr:plate, tag=igloo, scores={rotation=3, upside=1}] at @s run structure load E6M1a ~-2 ~-33 ~-2 270_degrees
# sweeper

# end
execute as @e[type=brr:plate, tag=igloo] at @s run tag @s remove igloo