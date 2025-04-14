# caught people
execute as @a[tag=blackhole1] at @s run camerashake add @s 0.6 2 positional
execute as @a[tag=blackhole1] at @s run camera @s fade time 0 0 5 color 40 0 255
execute as @a[tag=blackhole1] at @s run title @s title §9§lRUN
execute as @a[tag=blackhole1] at @s run stopsound @s music.event.tacos
execute as @a[tag=blackhole1] at @s run stopsound @s sfx.game.homedesign
# summon subspace
execute as @r[tag=blackhole1] at @s if score blackhole subspace matches 0 run summon brr:plate 90 0 34 0 0 from_egg blackhole
execute as @e[type=brr:plate, name=blackhole] at @s if score blackhole subspace matches 0 run structure load blackhole ~-6 ~1 ~-6
# functions
execute as @r[tag=blackhole] at @s run scoreboard players remove blackhole1 subspace 1
execute if score blackhole1 subspace matches ..0 run scoreboard players remove blackhole subspace 1
execute if score blackhole1 subspace matches ..0 run scoreboard players set blackhole1 subspace 20
# end
# - players -
execute as @r[tag=blackhole1] at @s if score blackhole subspace matches 1.. run scoreboard players add blackhole subspace 20
execute as @a[tag=blackhole1] at @s if score blackhole subspace matches 0 run scoreboard players set blackhole subspace 45
execute as @e[type=brr:plate, name=blackhole] at @s run tp @a[tag=blackhole1] ~ ~5 ~
execute as @a[tag=blackhole1] at @s run tag @s add blackhole
execute as @a[tag=blackhole1] at @s run tag @s remove blackhole1
# - realm -
execute if score blackhole subspace matches ..0 run kill @a[tag=blackhole]
execute as @e[type=brr:plate, name=blackhole] at @s if score blackhole subspace matches ..0 run structure load blackholed ~-6 ~1 ~-6
execute as @e[type=brr:plate, name=blackhole] at @s if score blackhole subspace matches ..0 run kill @s
# button
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run scoreboard players add @p[tag=game, tag=blackhole] coins_storage 25
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run title @p[tag=blackhole] subtitle §9You were rewarded: §e25 Coins §9for escaping!
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run title @p[tag=blackhole] title §9§lWell Done
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run playsound aliens.arrive @a[tag=blackhole]
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run tag @p[tag=blackhole] remove blackhole
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run tp @p @r[c=1, type=brr:plate, name=!subspace, name=!blackhole]
execute as @e[type=brr:plate, name=blackhole] at @s positioned ~5 ~16 ~1 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run setblock ~ ~ ~ stone_button["button_pressed_bit"=false, "facing_direction"=1]
