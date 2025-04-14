# event
execute as @r[tag=game] at @s run tag @s add nap1
execute as @a[tag=nap1] at @s run effect @s darkness 10 255 false
execute as @a[tag=nap1] at @s run effect @s slowness 10 5 false
execute as @a[tag=nap1] at @s run inputpermission set @s movement disabled
execute as @a[tag=nap1] at @s run tag @s add nap
execute as @a[tag=nap1] at @s run scoreboard players set @s nap 200
# end
execute as @a[tag=nap1] at @s run tag @s remove nap1