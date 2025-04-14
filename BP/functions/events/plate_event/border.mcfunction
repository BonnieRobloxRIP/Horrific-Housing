# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add border1
execute as @e[type=brr:plate, tag=border1] at @s run scoreboard players set @s border 1200
# house default rotation
execute as @e[type=brr:plate, tag=border1, scores={rotation=0, upside=0, large=0}] at @s run structure load E7M1 ~-4 ~ ~-4
execute as @e[type=brr:plate, tag=border1, scores={rotation=0, upside=0, large=1..}] at @s run structure load E7M2 ~-4 ~ ~-4
execute as @e[type=brr:plate, tag=border1, scores={rotation=0, upside=1, large=0}] at @s run structure load E7M1 ~-4 ~-2 ~-4
execute as @e[type=brr:plate, tag=border1, scores={rotation=0, upside=1, large=1..}] at @s run structure load E7M2 ~-4 ~-2 ~-4
# house 90_rotation
execute as @e[type=brr:plate, tag=border1, scores={rotation=1, upside=0, large=0}] at @s run structure load E7M1 ~-5 ~ ~-4 90_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=1, upside=0, large=1..}] at @s run structure load E7M2 ~-5 ~ ~-4 90_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=1, upside=1, large=0}] at @s run structure load E7M1 ~-5 ~-2 ~-4 90_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=1, upside=1, large=1..}] at @s run structure load E7M2 ~-5 ~-2 ~-4 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=border1, scores={rotation=2, upside=0, large=0}] at @s run structure load E7M1 ~-4 ~ ~-5 180_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=2, upside=0, large=1..}] at @s run structure load E7M2 ~-4 ~ ~-5 180_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=2, upside=1, large=0}] at @s run structure load E7M1 ~-4 ~-2 ~-5 180_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=2, upside=1, large=1..}] at @s run structure load E7M2 ~-4 ~-2 ~-5 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=border1, scores={rotation=3, upside=0, large=0}] at @s run structure load E7M1 ~-4 ~ ~-4 270_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=3, upside=0, large=1..}] at @s run structure load E7M2 ~-4 ~ ~-4 270_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=3, upside=1, large=0}] at @s run structure load E7M1 ~-4 ~-2 ~-4 270_degrees
execute as @e[type=brr:plate, tag=border1, scores={rotation=3, upside=1, large=1..}] at @s run structure load E7M2 ~-4 ~-2 ~-4 270_degrees
# sweeper

# end
execute as @e[type=brr:plate, tag=border1] at @s run tag @s add border
execute as @e[type=brr:plate, tag=border1] at @s run tag @s remove border1