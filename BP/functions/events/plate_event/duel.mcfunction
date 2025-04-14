# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper, scores={"mountain switch"=!1}] at @s run tag @s add duel
execute as @e[type=brr:plate, tag=duel] at @s run scoreboard players set @s "event building" 8
execute as @e[type=brr:plate, tag=duel] at @s run scoreboard players set @s "duel switch" 1
# house default rotation
execute as @e[type=brr:plate, tag=duel, scores={rotation=0}] at @s run structure load E39M1 ~-3 ~-1 ~-3
# house 90_rotation
execute as @e[type=brr:plate, tag=duel, scores={rotation=1}] at @s run structure load E39M1 ~-4 ~-1 ~-3 90_degrees
# house 180_rotation
execute as @e[type=brr:plate, tag=duel, scores={rotation=2}] at @s run structure load E39M1 ~-3 ~-1 ~-4 180_degrees
# house 270_rotation
execute as @e[type=brr:plate, tag=duel, scores={rotation=3}] at @s run structure load E39M1 ~-3 ~-1 ~-3 270_degrees
# players choose
execute as @r[tag=game, tag=!duel1, tag=!duel2] at @s run tag @s add duel1
execute as @r[tag=game, tag=!duel1, tag=!duel2] at @s run tag @s add duel2
# player tp
execute as @e[type=brr:plate, tag=duel] at @s run tp @a[tag=duel1, scores={duel=0}] ^ ^ ^-2 facing ~ ~ ~
execute as @e[type=brr:plate, tag=duel] at @s run tp @a[tag=duel2, scores={duel=0}] ^ ^ ^3 facing ~ ~ ~
# player set
execute as @e[type=brr:plate, tag=duel] at @s run scoreboard players set @a[tag=duel1, r=5] duel 1
execute as @e[type=brr:plate, tag=duel] at @s run scoreboard players set @a[tag=duel2, r=5] duel 1
execute as @e[type=brr:plate, tag=duel] at @s run inputpermission set @a[tag=duel1, r=5] movement disabled
execute as @e[type=brr:plate, tag=duel] at @s run inputpermission set @a[tag=duel2, r=5] movement disabled
# end
execute as @e[type=brr:plate, tag=duel] at @s run tag @s remove duel