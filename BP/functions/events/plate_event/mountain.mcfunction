# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add mountain
execute as @e[type=brr:plate, tag=mountain] at @s run scoreboard players set @s "event building" 7
execute as @e[type=brr:plate, tag=mountain] at @s run scoreboard players set @s "security wall" 0
execute as @e[type=brr:plate, tag=mountain] at @s run scoreboard players set @s "mountain switch" 1
# end
execute as @e[type=brr:plate, tag=mountain] at @s run tag @s remove mountain