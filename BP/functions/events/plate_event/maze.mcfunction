# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add maze
execute as @e[type=brr:plate, tag=maze] at @s run scoreboard players set @s "event building" 3
# house default rotation
execute as @e[type=brr:plate, tag=maze, scores={rotation=0, upside=0}] at @s run structure load E16M1 ~-2 ~-1 ~-2
execute as @e[type=brr:plate, tag=maze, scores={rotation=0, upside=1}] at @s run structure load E16M1a ~-2 ~-33 ~-2
# house 90_rotation
execute as @e[type=brr:plate, tag=maze, scores={rotation=1, upside=0}] at @s run structure load E16M1 ~-4 ~-1 ~-2 90_degrees
execute as @e[type=brr:plate, tag=maze, scores={rotation=1, upside=1}] at @s run structure load E16M1a ~-4 ~-33 ~-2 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=maze, scores={rotation=2, upside=0}] at @s run structure load E16M1 ~-2 ~-1 ~-4 180_degrees
execute as @e[type=brr:plate, tag=maze, scores={rotation=2, upside=1}] at @s run structure load E16M1a ~-2 ~-33 ~-4 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=maze, scores={rotation=3, upside=0}] at @s run structure load E16M1 ~-2 ~-1 ~-2 270_degrees
execute as @e[type=brr:plate, tag=maze, scores={rotation=3, upside=1}] at @s run structure load E16M1a ~-2 ~-33 ~-2 270_degrees
# sweeper

# end
execute as @e[type=brr:plate, tag=maze] at @s run tag @s remove maze