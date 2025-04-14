# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add nuke1
# house default rotation
execute as @e[type=brr:plate, tag=nuke1, scores={rotation=0}] at @s run structure load E49M1 ~1 ~ ~2 
# house 90_rotation
execute as @e[type=brr:plate, tag=nuke1, scores={rotation=1}] at @s run structure load E49M1 ~-4 ~ ~1 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=nuke1, scores={rotation=2}] at @s run structure load E49M1 ~-3 ~ ~-4 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=nuke1, scores={rotation=3}] at @s run structure load E49M1 ~2 ~ ~-3 270_degrees
# end
execute as @e[type=brr:plate, tag=nuke1] at @s run tag @s remove nuke1