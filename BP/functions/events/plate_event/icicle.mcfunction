# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add icicle
execute as @e[type=brr:plate, tag=icicle] at @s run scoreboard players set @s "event building" 10
execute as @e[type=brr:plate, tag=icicle] at @s run scoreboard players set @s "security wall" 0
execute as @e[type=brr:plate, tag=icicle] at @s run scoreboard players set @s "icicle switch" 1
# end
execute as @e[type=brr:plate, tag=icicle] at @s run tag @s remove icicle