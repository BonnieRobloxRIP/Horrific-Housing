# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add homeless
execute as @e[type=brr:plate, tag=homeless] at @s run scoreboard players set @s "event building" -2
execute as @e[type=brr:plate, tag=homeless] at @s run scoreboard players set @s "security wall" 0
# house default rotation
execute as @e[type=brr:plate, tag=homeless, scores={rotation=0, upside=0}] at @s run structure load E22M1 ~-4 ~ ~-4
execute as @e[type=brr:plate, tag=homeless, scores={rotation=0, upside=1}] at @s run structure load E22M1 ~-4 ~-34 ~-4
# house 90_rotation
execute as @e[type=brr:plate, tag=homeless, scores={rotation=1, upside=0}] at @s run structure load E22M1 ~-5 ~ ~-4 90_degrees
execute as @e[type=brr:plate, tag=homeless, scores={rotation=1, upside=1}] at @s run structure load E22M1 ~-5 ~-34 ~-4 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=homeless, scores={rotation=2, upside=0}] at @s run structure load E22M1 ~-4 ~ ~-5 180_degrees
execute as @e[type=brr:plate, tag=homeless, scores={rotation=2, upside=1}] at @s run structure load E22M1 ~-4 ~-34 ~-5 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=homeless, scores={rotation=3, upside=0}] at @s run structure load E22M1 ~-4 ~ ~-4 270_degrees
execute as @e[type=brr:plate, tag=homeless, scores={rotation=3, upside=1}] at @s run structure load E22M1 ~-4 ~-34 ~-4 270_degrees
# sweeper

# end
execute as @e[type=brr:plate, tag=homeless] at @s run tag @s remove homeless