# = lobby buttons =
# - scoreboard display -
execute if block 9 1 -3 stone_button["button_pressed_bit"=true, "facing_direction"=4] run scoreboard objectives setdisplay sidebar coins
execute if block 9 1 -3 stone_button["button_pressed_bit"=true, "facing_direction"=4] run setblock 9 1 -3 stone_button["facing_direction"=4]
execute if block 9 1 -2 stone_button["button_pressed_bit"=true, "facing_direction"=4] run scoreboard objectives setdisplay sidebar wins
execute if block 9 1 -2 stone_button["button_pressed_bit"=true, "facing_direction"=4] run setblock 9 1 -2 stone_button["facing_direction"=4]
# - soda -
execute if block -5 2 5 stone_button["button_pressed_bit"=true, "facing_direction"=3] run scoreboard players set soda lobby 100
execute if block -5 2 5 stone_button["button_pressed_bit"=true, "facing_direction"=3] run playsound sfx.lobby.handle_pull @a -2 2 4
execute if block -5 2 5 stone_button["button_pressed_bit"=true, "facing_direction"=3] run structure load soda -3 1 2
execute if block -5 2 5 stone_button["button_pressed_bit"=true, "facing_direction"=3] run setblock -5 2 5 air
# - elevator warped button -
execute if block -9 1 -5 warped_button["button_pressed_bit"=true, "facing_direction"=2] run scoreboard players set "elevator direction" lobby 0
execute if block -9 1 -5 warped_button["button_pressed_bit"=true, "facing_direction"=2] run scoreboard players set "elevator switch" lobby 1
execute if block -9 1 -5 warped_button["button_pressed_bit"=true, "facing_direction"=2] run setblock -6 -15 -5 air
execute if block -9 1 -5 warped_button["button_pressed_bit"=true, "facing_direction"=2] run setblock -9 1 -2 air
execute if block -9 1 -5 warped_button["button_pressed_bit"=true, "facing_direction"=2] run setblock -9 1 -5 crimson_button["facing_direction"=2]
# - elevator call button -
execute if block -9 1 -2 stone_button["facing_direction"=3, "button_pressed_bit"=true] if score "elevator position" lobby matches 1 run scoreboard players set "elevator direction" lobby 1
execute if block -9 1 -2 stone_button["facing_direction"=3, "button_pressed_bit"=true] if score "elevator position" lobby matches 1 run scoreboard players set "elevator switch" lobby 1
execute if block -9 1 -2 stone_button["facing_direction"=3, "button_pressed_bit"=true] if score "elevator position" lobby matches 1 run setblock -6 -15 -5 air
execute if block -9 1 -2 stone_button["facing_direction"=3, "button_pressed_bit"=true] if score "elevator position" lobby matches 1 run setblock -9 1 -5 air
execute if block -9 1 -2 stone_button["facing_direction"=3, "button_pressed_bit"=true] if score "elevator position" lobby matches 1 run setblock -9 1 -2 air
# - elevator underground button -
execute if block -6 -15 -5 stone_button["facing_direction"=2, "button_pressed_bit"=true] if score "elevator position" lobby matches 1 run scoreboard players set "elevator direction" lobby 1
execute if block -6 -15 -5 stone_button["facing_direction"=2, "button_pressed_bit"=true] if score "elevator position" lobby matches 0 run scoreboard players set "elevator direction" lobby 0
execute if block -6 -15 -5 stone_button["facing_direction"=2, "button_pressed_bit"=true] run scoreboard players set "elevator switch" lobby 1
execute if block -6 -15 -5 stone_button["facing_direction"=2, "button_pressed_bit"=true] run setblock -9 1 -2 air
execute if block -6 -15 -5 stone_button["facing_direction"=2, "button_pressed_bit"=true] run setblock -9 1 -5 air
execute if block -6 -15 -5 stone_button["facing_direction"=2, "button_pressed_bit"=true] run setblock -6 -15 -5 air
# = elevator =
# - move -
execute if score "elevator switch" lobby matches 1 run scoreboard players add elevator lobby 1
execute if score elevator lobby matches 1 if score "elevator direction" lobby matches 0 run structure load L3b -8 -3 -6
execute if score elevator lobby matches 10 if score "elevator direction" lobby matches 0 run structure load L3b -8 -4 -6
execute if score elevator lobby matches 15 if score "elevator direction" lobby matches 0 run structure load L3b -8 -5 -6
execute if score elevator lobby matches 20 if score "elevator direction" lobby matches 0 run structure load L3b -8 -6 -6
execute if score elevator lobby matches 25 if score "elevator direction" lobby matches 0 run structure load L3b -8 -7 -6
execute if score elevator lobby matches 30 if score "elevator direction" lobby matches 0 run structure load L3b -8 -8 -6
execute if score elevator lobby matches 35 if score "elevator direction" lobby matches 0 run structure load L3b -8 -9 -6
execute if score elevator lobby matches 40 if score "elevator direction" lobby matches 0 run structure load L3b -8 -10 -6
execute if score elevator lobby matches 45 if score "elevator direction" lobby matches 0 run structure load L3b -8 -11 -6
execute if score elevator lobby matches 50 if score "elevator direction" lobby matches 0 run structure load L3b -8 -12 -6
execute if score elevator lobby matches 55 if score "elevator direction" lobby matches 0 run structure load L3b -8 -13 -6
execute if score elevator lobby matches 60 if score "elevator direction" lobby matches 0 run structure load L3b -8 -14 -6
execute if score elevator lobby matches 65 if score "elevator direction" lobby matches 0 run structure load L3b -8 -15 -6
execute if score elevator lobby matches 70 if score "elevator direction" lobby matches 0 run structure load L3b -8 -16 -6
execute if score elevator lobby matches 75 if score "elevator direction" lobby matches 0 run structure load L3b -8 -17 -6
execute if score elevator lobby matches 80 if score "elevator direction" lobby matches 0 run structure load L3c -8 -17 -6
execute if score elevator lobby matches 80 if score "elevator direction" lobby matches 0 run scoreboard players set "elevator position" lobby 1
execute if score elevator lobby matches 1 if score "elevator direction" lobby matches 1 run structure load L3b -8 -17 -6
execute if score elevator lobby matches 10 if score "elevator direction" lobby matches 1 run structure load L3b -8 -16 -6
execute if score elevator lobby matches 15 if score "elevator direction" lobby matches 1 run structure load L3b -8 -15 -6
execute if score elevator lobby matches 20 if score "elevator direction" lobby matches 1 run structure load L3b -8 -14 -6
execute if score elevator lobby matches 25 if score "elevator direction" lobby matches 1 run structure load L3b -8 -13 -6
execute if score elevator lobby matches 30 if score "elevator direction" lobby matches 1 run structure load L3b -8 -12 -6
execute if score elevator lobby matches 35 if score "elevator direction" lobby matches 1 run structure load L3b -8 -11 -6
execute if score elevator lobby matches 40 if score "elevator direction" lobby matches 1 run structure load L3b -8 -10 -6
execute if score elevator lobby matches 45 if score "elevator direction" lobby matches 1 run structure load L3b -8 -9 -6
execute if score elevator lobby matches 50 if score "elevator direction" lobby matches 1 run structure load L3b -8 -8 -6
execute if score elevator lobby matches 55 if score "elevator direction" lobby matches 1 run structure load L3b -8 -7 -6
execute if score elevator lobby matches 60 if score "elevator direction" lobby matches 1 run structure load L3b -8 -6 -6
execute if score elevator lobby matches 65 if score "elevator direction" lobby matches 1 run structure load L3b -8 -5 -6
execute if score elevator lobby matches 70 if score "elevator direction" lobby matches 1 run structure load L3b -8 -4 -6
execute if score elevator lobby matches 75 if score "elevator direction" lobby matches 1 run structure load L3b -8 -3 -6
execute if score elevator lobby matches 80 if score "elevator direction" lobby matches 1 run structure load L3b -8 -2 -6
execute if score elevator lobby matches 80 if score "elevator direction" lobby matches 1 run scoreboard players set "elevator position" lobby 0
# - sounnds and effects -
execute if score elevator lobby matches 1 run playsound sfx.lobby.elevator_start @a[tag=lobby]
execute if score elevator lobby matches 3 run playsound sfx.lobby.elevator_move @a[tag=lobby]
execute if score elevator lobby matches 80 run stopsound @a[tag=lobby] sfx.lobby.elevator_move
execute if score elevator lobby matches 80 run playsound sfx.lobby.elevator_stop @a[tag=lobby]
execute if score elevator lobby matches 80 run setblock -9 1 -5 crimson_button["facing_direction"=2]
execute if score elevator lobby matches 80 run setblock -9 1 -2 stone_button["facing_direction"=3]
execute if score elevator lobby matches 80 run setblock -6 -15 -5 stone_button["facing_direction"=2]
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-17, z=-6, dx=1, dy=18, dz=1] at @s if score elevator lobby matches 80 run camerashake add @s 0.3 0.5
# - player teleport if elevator goes up -
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-17, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 1 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-16, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 10 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-15, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 15 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-14, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 20 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-13, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 25 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-12, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 30 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-11, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 35 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-10, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 40 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-9, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 45 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-8, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 50 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-7, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 55 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-6, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 60 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-5, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 65 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-4, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 70 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-3, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 75 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
execute as @a[tag=lobby, tag=!spectator, x=-8, y=-2, z=-6, dx=1, dy=3, dz=1] at @s if score elevator lobby matches 79 if score "elevator direction" lobby matches 1 run tp @s ~ ~1.1 ~
# - end -
execute if score elevator lobby matches 80.. run scoreboard players set "elevator switch" lobby 0
execute if score elevator lobby matches 80.. run scoreboard players reset elevator lobby