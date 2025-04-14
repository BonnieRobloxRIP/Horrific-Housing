# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add fe
execute as @e[type=brr:plate, tag=fe] at @s run scoreboard players reset @s flood
execute as @e[type=brr:plate, tag=fe] at @s run scoreboard players reset @s "flood button switch"
execute as @e[type=brr:plate, tag=fe] at @s run scoreboard players reset @s "flood button"
execute as @e[type=brr:plate, tag=fe] at @s run scoreboard players set @s "event building" 5
# house default rotation
execute as @e[type=brr:plate, tag=fe, scores={rotation=0}] at @s run structure load E19M1 ~-3 ~-1 ~-3
# house 90_rotation
execute as @e[type=brr:plate, tag=fe, scores={rotation=1}] at @s run structure load E19M1 ~-4 ~-1 ~-3 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=fe, scores={rotation=2}] at @s run structure load E19M1 ~-3 ~-1 ~-4 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=fe, scores={rotation=3}] at @s run structure load E19M1 ~-3 ~-1 ~-3 270_degrees
# end
execute as @e[type=brr:plate, tag=fe] at @s run tag @s remove fe