# value settting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add lower
# structure save
execute as @e[type=brr:plate, tag=lower, scores={rotation=0, upside=0}] at @s run structure save lower ~-4 ~-5 ~-4 ~4 ~33 ~5 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=1, upside=0}] at @s run structure save lower ~-5 ~-5 ~-4 ~4 ~33 ~4 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=2, upside=0}] at @s run structure save lower ~-4 ~-5 ~-5 ~4 ~33 ~4 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=3, upside=0}] at @s run structure save lower ~-4 ~-5 ~-4 ~5 ~33 ~4 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=0, upside=1}] at @s run structure save lower ~-4 ~-33 ~-4 ~4 ~ ~5 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=1, upside=1}] at @s run structure save lower ~-5 ~-33 ~-4 ~4 ~ ~4 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=2, upside=1}] at @s run structure save lower ~-4 ~-33 ~-5 ~4 ~ ~4 false memory true
execute as @e[type=brr:plate, tag=lower, scores={rotation=3, upside=1}] at @s run structure save lower ~-4 ~-33 ~-4 ~5 ~ ~4 false memory true
# structure load
execute as @e[type=brr:plate, tag=lower, scores={rotation=0, upside=0}] at @s run structure load lower ~-4 ~-9 ~-4
execute as @e[type=brr:plate, tag=lower, scores={rotation=1, upside=0}] at @s run structure load lower ~-5 ~-9 ~-4
execute as @e[type=brr:plate, tag=lower, scores={rotation=2, upside=0}] at @s run structure load lower ~-4 ~-9 ~-5
execute as @e[type=brr:plate, tag=lower, scores={rotation=3, upside=0}] at @s run structure load lower ~-4 ~-9 ~-4
execute as @e[type=brr:plate, tag=lower, scores={rotation=0, upside=1}] at @s run structure load lower ~-4 ~-33 ~-4
execute as @e[type=brr:plate, tag=lower, scores={rotation=1, upside=1}] at @s run structure load lower ~-5 ~-33 ~-4
execute as @e[type=brr:plate, tag=lower, scores={rotation=2, upside=1}] at @s run structure load lower ~-4 ~-33 ~-5
execute as @e[type=brr:plate, tag=lower, scores={rotation=3, upside=1}] at @s run structure load lower ~-4 ~-33 ~-4
# entity move
execute as @e[type=brr:plate, tag=lower] at @s run tp @s ~ ~-4 ~
# end
execute as @e[type=brr:plate, tag=lower] at @s run tag @s remove lower