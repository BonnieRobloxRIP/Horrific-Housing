# event
execute as @r[tag=game, tag=!chill] at @s run tag @s add chill1
execute as @a[tag=game, tag=chill1] at @s run title @s title §a§oChill :D
execute as @a[tag=game, tag=chill1] at @s run particle brr:chill ~ ~0.5 ~
execute as @a[tag=game, tag=chill1] at @s run tag @s add chill
# end
execute as @a[tag=game, tag=chill1] at @s run tag @s remove chill1
