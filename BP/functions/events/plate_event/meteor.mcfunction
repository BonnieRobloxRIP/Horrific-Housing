# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add meteor1
execute as @e[type=brr:plate, tag=meteor1] at @s run scoreboard players set @s "meteor switch" 1
execute as @e[type=brr:plate, tag=meteor1] at @s run tag @s add meteor
execute as @e[type=brr:plate, tag=meteor1] at @s run playsound sfx.events.meteor @a
execute as @e[type=brr:plate, tag=meteor1] at @s run tag @s remove meteor1