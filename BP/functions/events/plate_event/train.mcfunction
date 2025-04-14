# value setting
scoreboard players random "train attack lobby" gamemodes 1 100
execute if score "train attack lobby" gamemodes matches 13 run scoreboard players set train gamemodes 1
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s unless score train gamemodes matches 1 run tag @s add train1
execute as @e[type=brr:plate, tag=train1] at @s run scoreboard players set @s "train switch" 1
# effect other plates
execute as @e[type=brr:plate, tag=train1] at @s run tag @e[type=brr:plate, x=~-65, y=~-30, z=~-5, dx=140, dy=80, dz=10] add train2
# sound
execute as @a at @s run playsound sfx.events.train.train @a
# end
execute as @r[type=brr:plate, tag=train1] at @s run tag @s add train
execute as @r[type=brr:plate, tag=train1] at @s run tag @s remove train1