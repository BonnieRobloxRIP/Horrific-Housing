# caught people
execute as @a[tag=subspace1] at @s run camerashake add @s 0.6 2 positional
execute as @a[tag=subspace1] at @s run camera @s fade time 0 1 2 color 150 0 255
execute as @a[tag=subspace1] at @s run title @s title §dSubspace Realm
execute as @a[tag=subspace1] at @s run stopsound @s music.event.tacos
execute as @a[tag=subspace1] at @s run stopsound @s sfx.game.homedesign
# summon subspace
execute as @r[tag=subspace1] at @s if score subspace subspace matches 0 run summon brr:plate 90 0 54 0 0 from_egg subspace
execute as @e[type=brr:plate, name=subspace] at @s if score subspace subspace matches 0 run structure load subspace ~-8 ~1 ~-8
# functions
execute as @r[tag=subspace] at @s run scoreboard players remove subspace1 subspace 1
execute if score subspace1 subspace matches ..0 run scoreboard players remove subspace subspace 1
execute if score subspace1 subspace matches ..0 run scoreboard players set subspace1 subspace 20
# effects
execute as @a[tag=subspace] at @s if score subspace subspace matches 30 if score subspace1 subspace matches 1 run camerashake add @s 0.2 10 positional
execute as @e[type=brr:plate, name=subspace] at @s if score subspace subspace matches 5..30 run particle brr:subspace_lobby ~ ~ ~
execute as @a[tag=subspace] at @s if score subspace subspace matches 19 if score subspace1 subspace matches 1 run camerashake add @s 0.5 10 positional
execute as @a[tag=subspace] at @s if score subspace subspace matches 9 if score subspace1 subspace matches 1 run camerashake add @s 0.8 5 positional
execute as @a[tag=subspace] at @s if score subspace subspace matches 3 if score subspace1 subspace matches 1 run camerashake add @s 1 2 positional
# end
# - players -
execute as @r[tag=subspace1] at @s if score subspace subspace matches 1.. run scoreboard players add subspace subspace 20
execute as @a[tag=subspace1] at @s if score subspace subspace matches 0 run scoreboard players set subspace subspace 60
execute as @e[type=brr:plate, name=subspace] at @s run tp @a[tag=subspace1] ~ ~5 ~
execute as @a[tag=subspace1] at @s run tag @s add subspace
execute as @a[tag=subspace1] at @s run tag @s remove subspace1
# - realm -
execute if score subspace subspace matches ..0 run kill @a[tag=subspace]
execute as @e[type=brr:plate, name=subspace] at @s if score subspace subspace matches ..0 run structure load subspaced ~-8 ~1 ~-8
execute as @e[type=brr:plate, name=subspace] at @s if score subspace subspace matches ..0 run kill @s
# button
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run scoreboard players add @p[tag=game, tag=subspace] coins_storage 50
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run particle brr:subspace01 ~ ~ ~
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run title @p[tag=subspace] subtitle §dYou were rewarded: §e50 Coins §dfor escaping!
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run title @p[tag=subspace] title §5§lWell Done
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run playsound aliens.arrive @a
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run camerashake stop @s
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run tag @p[tag=subspace] remove subspace
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run tp @p @r[c=1, type=brr:plate, name=!subspace, name=!blackhole, name=!inv]
execute as @e[type=brr:plate, name=subspace] at @s positioned ~-3 ~35 ~6 if block ~ ~ ~ stone_button["button_pressed_bit"=true, "facing_direction"=1] run setblock ~ ~ ~ stone_button["button_pressed_bit"=false, "facing_direction"=1]
