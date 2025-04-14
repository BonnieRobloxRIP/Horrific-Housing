# value setting
execute as @r[type=brr:plate, tag=!border, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add large
execute as @e[type=brr:plate, tag=large] at @s run scoreboard players add @s large 1
# house default rotation
execute as @e[type=brr:plate, tag=large, scores={rotation=0, large=1,"event building"=0..}] at @s run structure load E12M1 ~-3 ~-1 ~-3
execute as @e[type=brr:plate, tag=large, scores={rotation=0, large=2.., "event building"=0..}] at @s run structure load E12M2 ~-4 ~-1 ~-4
execute as @e[type=brr:plate, tag=large, scores={rotation=0, large=1, "event building"=-1}] at @s run structure load E12M1a ~-3 ~-1 ~-3
execute as @e[type=brr:plate, tag=large, scores={rotation=0, large=2.., "event building"=-1}] at @s run structure load E12M2a ~-4 ~-1 ~-4
# house 90_rotation
execute as @e[type=brr:plate, tag=large, scores={rotation=1, large=1, "event building"=0..}] at @s run structure load E12M1 ~-4 ~-1 ~-3 90_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=1, large=2.., "event building"=0..}] at @s run structure load E12M2 ~-5 ~-1 ~-4 90_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=1, large=1, "event building"=-1}] at @s run structure load E12M1a ~-4 ~-1 ~-3 90_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=1, large=2.., "event building"=-1}] at @s run structure load E12M2a ~-5 ~-1 ~-4 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=large, scores={rotation=2, large=1, "event building"=0..}] at @s run structure load E12M1 ~-3 ~-1 ~-4 180_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=2, large=2.., "event building"=0..}] at @s run structure load E12M2 ~-4 ~-1 ~-5 180_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=2, large=1, "event building"=-1}] at @s run structure load E12M1a ~-3 ~-1 ~-4 180_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=2, large=2.., "event building"=-1}] at @s run structure load E12M2a ~-4 ~-1 ~-5 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=large, scores={rotation=3, large=1, "event building"=0..}] at @s run structure load E12M1 ~-3 ~-1 ~-3 270_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=3, large=2.., "event building"=0..}] at @s run structure load E12M2 ~-4 ~-1 ~-4 270_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=3, large=1, "event building"=-1}] at @s run structure load E12M1a ~-3 ~-1 ~-3 270_degrees
execute as @e[type=brr:plate, tag=large, scores={rotation=3, large=2.., "event building"=-1}] at @s run structure load E12M2a ~-4 ~-1 ~-4 270_degrees
# floor
# normal rotation
execute as @e[type=brr:plate, tag=large, scores={floor=1, rotation=0}] at @s run fill ~-4 ~-1 ~-4 ~4 ~-1 ~5 packed_ice replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=2, rotation=0}] at @s run fill ~-4 ~-1 ~-4 ~4 ~-1 ~5 magma replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=3, rotation=0}] at @s run fill ~-4 ~-1 ~-4 ~4 ~-1 ~5 grass_path replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=4, rotation=0}] at @s run fill ~-4 ~-1 ~-4 ~4 ~-1 ~5 honey_block replace grass_block
# rotation 90_degrees
execute as @e[type=brr:plate, tag=large, scores={floor=1, rotation=1}] at @s run fill ~-5 ~-1 ~-4 ~5 ~-1 ~4 packed_ice replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=2, rotation=1}] at @s run fill ~-5 ~-1 ~-4 ~5 ~-1 ~4 magma replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=3, rotation=1}] at @s run fill ~-5 ~-1 ~-4 ~5 ~-1 ~4 grass_path replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=4, rotation=1}] at @s run fill ~-5 ~-1 ~-4 ~5 ~-1 ~4 honey_block replace grass_block
# rotation 180_degrees
execute as @e[type=brr:plate, tag=large, scores={floor=1, rotation=2}] at @s run fill ~-4 ~-1 ~-5 ~4 ~-1 ~5 packed_ice replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=2, rotation=2}] at @s run fill ~-4 ~-1 ~-5 ~4 ~-1 ~5 magma replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=3, rotation=2}] at @s run fill ~-4 ~-1 ~-5 ~4 ~-1 ~5 grass_path replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=4, rotation=2}] at @s run fill ~-4 ~-1 ~-5 ~4 ~-1 ~5 honey_block replace grass_block
# rotation 270_degrees
execute as @e[type=brr:plate, tag=large, scores={floor=1, rotation=3}] at @s run fill ~-4 ~-1 ~-4 ~5 ~-1 ~4 packed_ice replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=2, rotation=3}] at @s run fill ~-4 ~-1 ~-4 ~5 ~-1 ~4 magma replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=3, rotation=3}] at @s run fill ~-4 ~-1 ~-4 ~5 ~-1 ~4 grass_path replace grass_block
execute as @e[type=brr:plate, tag=large, scores={floor=4, rotation=3}] at @s run fill ~-4 ~-1 ~-4 ~5 ~-1 ~4 honey_block replace grass_block
# end
execute as @e[type=brr:plate, tag=large] at @s run tag @s remove large