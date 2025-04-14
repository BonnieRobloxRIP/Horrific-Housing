# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add ice_floor
execute as @e[type=brr:plate, tag=ice_floor] at @s run scoreboard players set @s floor 1
# house default rotation
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=0, large=0}] at @s unless score @s "event building" matches -1 run structure load E1M1 ~-2 ~-1 ~-2
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=0, large=1}] at @s unless score @s "event building" matches -1 run structure load E1M1a ~-3 ~-1 ~-3
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=0, large=2..}] at @s unless score @s "event building" matches -1 run structure load E1M1b ~-4 ~-1 ~-4
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=0, large=0, "event building"=-1}] at @s run structure load E1M2 ~-2 ~-1 ~-2
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=0, large=1, "event building"=-1}] at @s run structure load E1M2a ~-3 ~-1 ~-3
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=0, large=2.., "event building"=-1}] at @s run structure load E1M2b ~-4 ~-1 ~-4
# house 90_rotation
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=1, large=0}] at @s unless score @s "event building" matches -1 run structure load E1M1 ~-3 ~-1 ~-2 90_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=1, large=1}] at @s unless score @s "event building" matches -1 run structure load E1M1a ~-4 ~-1 ~-3 90_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=1, large=2..}] at @s unless score @s "event building" matches -1 run structure load E1M1b ~-5 ~-1 ~-4 90_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=1, large=0, "event building"=-1}] at @s run structure load E1M2 ~-3 ~-1 ~-2 90_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=1, large=1, "event building"=-1}] at @s run structure load E1M2a ~-4 ~-1 ~-3 90_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=1, large=2.., "event building"=-1}] at @s run structure load E1M2b ~-5 ~-1 ~-4 90_degrees
# house 180_rotation
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=2, large=0}] at @s unless score @s "event building" matches -1 run structure load E1M1 ~-2 ~-1 ~-3 180_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=2, large=1}] at @s unless score @s "event building" matches -1 run structure load E1M1a ~-3 ~-1 ~-4 180_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=2, large=2..}] at @s unless score @s "event building" matches -1 run structure load E1M1b ~-4 ~-1 ~-5 180_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=2, large=0, "event building"=-1}] at @s run structure load E1M2 ~-2 ~-1 ~-3 180_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=2, large=1, "event building"=-1}] at @s run structure load E1M2a ~-3 ~-1 ~-4 180_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=2, large=2.., "event building"=-1}] at @s run structure load E1M2b ~-4 ~-1 ~-5 180_degrees
# house 270_rotation
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=3, large=0}] at @s unless score @s "event building" matches -1 run structure load E1M1 ~-2 ~-1 ~-2 270_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=3, large=1}] at @s unless score @s "event building" matches -1 run structure load E1M1a ~-3 ~-1 ~-3 270_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=3, large=2..}] at @s unless score @s "event building" matches -1 run structure load E1M1b ~-4 ~-1 ~-4 270_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=3, large=0, "event building"=-1}] at @s run structure load E1M2 ~-2 ~-1 ~-2 270_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=3, large=1, "event building"=-1}] at @s run structure load E1M2a ~-3 ~-1 ~-3 270_degrees
execute as @e[tag=ice_floor, type=brr:plate, scores={rotation=3, large=2.., "event building"=-1}] at @s run structure load E1M2b ~-4 ~-1 ~-4 270_degrees
# sweeper

# end
execute as @e[type=brr:plate, tag=ice_floor] at @s run tag @s remove ice_floor