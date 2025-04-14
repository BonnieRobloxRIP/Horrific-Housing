# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add pc
execute as @e[type=brr:plate, tag=pc] at @s run scoreboard players set @s "event building" 4
# house default rotation
execute as @e[type=brr:plate, tag=pc, scores={rotation=0}] at @s run structure load E18M1 ~-2 ~ ~-2
# house 90_rotation
execute as @e[type=brr:plate, tag=pc, scores={rotation=1}] at @s run structure load E18M1 ~-3 ~ ~-2 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=pc, scores={rotation=2}] at @s run structure load E18M1 ~-2 ~ ~-3 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=pc, scores={rotation=3}] at @s run structure load E18M1 ~-2 ~ ~-2 270_degrees
# end
execute as @e[type=brr:plate, tag=pc] at @s run tag @s remove pc