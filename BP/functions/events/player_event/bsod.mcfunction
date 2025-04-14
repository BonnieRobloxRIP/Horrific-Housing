# event
execute as @a[tag=game, tag=bsod] at @s run camera @s fade time 0 5 0 color 51 118 208
execute as @a[tag=game, tag=bsod] at @s run title @s times 0 100 0
execute as @a[tag=game, tag=bsod] at @s run title @s title :(                             
execute as @a[tag=game, tag=bsod] at @s run title @s subtitle Your PC ran into a problem and needs to restart
# end
execute as @a[tag=game, tag=bsod] at @s run tag @s remove bsod