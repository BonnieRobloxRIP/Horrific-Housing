# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!sweeper] at @s run tag @s add ufo1
execute as @e[type=brr:plate, tag=ufo1] at @s run scoreboard players set @s "ufo switch" 1
execute as @e[type=brr:plate, tag=ufo1] at @s run scoreboard players set @s "black hole" 0
execute as @e[type=brr:plate, tag=ufo1] at @s run tag @s add ufo
execute as @e[type=brr:plate, tag=ufo1] at @s run playsound sfx.events.aliens @a
execute as @e[type=brr:plate, tag=ufo1] at @s run tag @s remove ufo1
