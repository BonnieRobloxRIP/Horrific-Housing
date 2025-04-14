# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!sweeper] at @s run tag @s add taco
execute as @e[type=brr:plate, tag=taco] at @s run scoreboard players set @s "taco switch" 1
execute as @e[type=brr:plate, tag=taco] at @s run scoreboard players set @s "taco music" 1860
# sound
execute as @e[type=brr:plate, tag=taco] at @s run playsound music.game.event.tacos @a[tag=game]
# end
execute as @e[type=brr:plate, tag=taco] at @s run tag @s remove taco