# choose the two players
execute as @r[tag=game, tag=!swap1, tag=!swap2, tag=!subspace, tag=!blackhole] at @s run tag @s add swap1
execute as @r[tag=game, tag=!swap1, tag=!swap2, tag=!subspace, tag=!blackhole] at @s run tag @s add swap2
# setup
execute as @a[tag=game, tag=swap1] at @s run summon brr:plate ~ ~ ~ ~ ~ from_egg swap1
execute as @a[tag=game, tag=swap2] at @s run summon brr:plate ~ ~ ~ ~ ~ from_egg swap2
# end
execute as @a[tag=game, tag=swap1] at @s run tp @s @r[type=brr:plate, name=swap2]
execute as @a[tag=game, tag=swap2] at @s run tp @s @r[type=brr:plate, name=swap1]
tag @a[tag=game, tag=swap1] remove swap1
tag @a[tag=game, tag=swap2] remove swap2
tp @e[type=brr:plate, name=swap1] 0 -60 0
tp @e[type=brr:plate, name=swap2] 0 -60 0
kill @e[type=brr:plate, name=swap1]
kill @e[type=brr:plate, name=swap2]
