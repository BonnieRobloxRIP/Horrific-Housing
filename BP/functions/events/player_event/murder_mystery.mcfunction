# remove previous murderer
execute as @a[tag=!murderer] at @s run clear @s trident
execute as @a[tag=!murderer] at @s run scoreboard players reset @s kills
execute as @a[tag=game] at @s run tag @s remove innocent
# choosing new murderer
execute as @a[tag=game] at @s run tag @s add innocent
execute as @r[tag=innocent, tag=!murderer] run tag @s add murderer
execute as @a[tag=murderer] at @s run give @s trident
# titles
execute as @a[tag=innocent] at @s run title @s subtitle §aInnocent!
execute as @a[tag=murderer] at @s run title @s subtitle §4Murderer!
execute as @a[tag=game] at @s run title @s title You are:
# sound
execute as @a[tag=game] at @s run playsound sfx.events.sus @s
# end
gamerule pvp true