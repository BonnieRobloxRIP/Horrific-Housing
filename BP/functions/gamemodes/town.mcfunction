# scores
execute as @e[type=brr:plate, name=beans] at @s if score "store door" gamemodes matches 1 run scoreboard players add "store door open" gamemodes 1
execute as @e[type=brr:plate, name=beans] at @s if score "store door" gamemodes matches 2 run scoreboard players add "store door close" gamemodes 1
# animations
execute as @e[type=brr:plate, name=beans] at @s if score "store door open" gamemodes matches 1 run playsound sfx.game.door_open @a[r=15] ~-8 ~1 ~
execute as @e[type=brr:plate, name=beans] at @s if score "store door open" gamemodes matches 1 run structure load G10M2b ~-8 ~ ~-1
execute as @e[type=brr:plate, name=beans] at @s if score "store door open" gamemodes matches 8 run structure load G10M2c ~-8 ~ ~-1
execute as @e[type=brr:plate, name=beans] at @s if score "store door open" gamemodes matches 8 run playsound sfx.game.door_opened @a[r=15] ~-8 ~1 ~
execute as @e[type=brr:plate, name=beans] at @s if score "store door open" gamemodes matches 8.. run scoreboard players set "store door" gamemodes 0
execute as @e[type=brr:plate, name=beans] at @s if score "store door open" gamemodes matches 8.. run scoreboard players reset "store door open" gamemodes
execute as @e[type=brr:plate, name=beans] at @s if score "store door close" gamemodes matches 1 run playsound sfx.game.door_open @a[r=15] ~-8 ~1 ~
execute as @e[type=brr:plate, name=beans] at @s if score "store door close" gamemodes matches 1 run structure load G10M2b ~-8 ~ ~-1
execute as @e[type=brr:plate, name=beans] at @s if score "store door close" gamemodes matches 8 run structure load G10M2a ~-8 ~ ~-1
execute as @e[type=brr:plate, name=beans] at @s if score "store door close" gamemodes matches 8 run playsound sfx.game.door_closed @a[r=15] ~-8 ~1 ~
execute as @e[type=brr:plate, name=beans] at @s if score "store door close" gamemodes matches 8.. run scoreboard players set "store door" gamemodes 0
# end
execute as @e[type=brr:plate, name=beans] at @s if score "store door close" gamemodes matches 8.. run scoreboard players reset "store door close" gamemodes