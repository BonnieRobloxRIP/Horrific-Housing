# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper, scores={"event building"=!5}] at @s run tag @s add security_wall
execute as @e[type=brr:plate, tag=security_wall] at @s run scoreboard players set @s "security wall" 1
# house default rotation
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=0, upside=0}] at @s run structure load E8M1 ~-3 ~ ~-3
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=0, upside=1}] at @s run structure load E8M1a ~-3 ~-13 ~-3
# house 90_rotation
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=1, upside=0}] at @s run structure load E8M1 ~-4 ~ ~-3 90_degrees
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=1, upside=1}] at @s run structure load E8M1a ~-4 ~-13 ~-3 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=2, upside=0}] at @s run structure load E8M1 ~-3 ~ ~-4 180_degrees
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=2, upside=1}] at @s run structure load E8M1a ~-3 ~-13 ~-4 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=3, upside=0}] at @s run structure load E8M1 ~-3 ~ ~-3 270_degrees
execute as @e[type=brr:plate, tag=security_wall, scores={rotation=3, upside=1}] at @s run structure load E8M1a ~-3 ~-13 ~-3 270_degrees
# sweeper

# end
execute as @e[type=brr:plate, tag=security_wall] at @s run tag @s remove security_wall