# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!sweeper] at @s run tag @s add blackhole1
execute as @e[type=brr:plate, tag=blackhole1] at @s run scoreboard players set @s "ufo switch" 1
execute as @e[type=brr:plate, tag=blackhole1] at @s run scoreboard players set @s "black hole" 1
execute as @e[type=brr:plate, tag=blackhole1] at @s run tag @s add ufo
execute as @e[type=brr:plate, tag=blackhole1] at @s run playsound sfx.events.black_hole @a
execute as @e[type=brr:plate, tag=blackhole1] at @s run tag @s remove blackhole1