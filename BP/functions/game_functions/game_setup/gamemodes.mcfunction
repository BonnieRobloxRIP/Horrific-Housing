# = GAMEMODES =
# - classic - stud -
execute as @a[tag=house1] at @s if score gamemode game matches 0..3 run summon brr:plate -9 1 20
execute as @a[tag=house2] at @s if score gamemode game matches 0..3 run summon brr:plate 0 1 20
execute as @a[tag=house3] at @s if score gamemode game matches 0..3 run summon brr:plate 9 1 20
execute as @a[tag=house4] at @s if score gamemode game matches 0..3 run summon brr:plate -9 1 31 180
execute as @a[tag=house5] at @s if score gamemode game matches 0..3 run summon brr:plate 0 1 31 180
execute as @a[tag=house6] at @s if score gamemode game matches 0..3 run summon brr:plate 9 1 31 180
execute as @a[tag=house7] at @s if score gamemode game matches 0..3 run summon brr:plate -9 1 40
execute as @a[tag=house8] at @s if score gamemode game matches 0..3 run summon brr:plate 0 1 40
execute as @a[tag=house9] at @s if score gamemode game matches 0..3 run summon brr:plate 9 1 40
execute as @a[tag=house10] at @s if score gamemode game matches 0..3 run summon brr:plate -9 1 51 180
execute as @a[tag=house11] at @s if score gamemode game matches 0..3 run summon brr:plate 0 1 51 180
execute as @a[tag=house12] at @s if score gamemode game matches 0..3 run summon brr:plate 9 1 51 180
execute positioned -9 1 20 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate01
execute positioned 0 1 20 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate02
execute positioned 9 1 20 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate03
execute positioned -9 1 31 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate04
execute positioned 0 1 31 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate05
execute positioned 9 1 31 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate06
execute positioned -9 1 40 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate07
execute positioned 0 1 40 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate08
execute positioned 9 1 40 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate09
execute positioned -9 1 51 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate10
execute positioned 0 1 51 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate11
execute positioned 9 1 51 if score gamemode game matches 0..3 run tag @e[type=brr:plate, r=2] add plate12
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate02] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate03] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate04] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate05] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate06] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate07] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate08] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate09] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate10] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate11] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate12] at @s if score gamemode game matches 0..3 run scoreboard players set @s rotation 2
# - one plate -
execute as @a[tag=house1] at @s if score gamemode game matches 4 run summon brr:plate 0 1 31 180
execute positioned 0 1 31 if score gamemode game matches 4 run tag @e[type=brr:plate, r=2] add plate01
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 4 run scoreboard players set @s rotation 2
# - scattered -
execute if score gamemode game matches 5 as @a[tag=house1] at @s run summon brr:plate 0 1 40 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house2] at @s run summon brr:plate 2 1 40 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house3] at @s run summon brr:plate 4 1 40 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house4] at @s run summon brr:plate 6 1 40 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house5] at @s run summon brr:plate 0 1 42 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house6] at @s run summon brr:plate 2 1 42 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house7] at @s run summon brr:plate 4 1 42 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house8] at @s run summon brr:plate 6 1 42 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house9] at @s run summon brr:plate 0 1 44 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house10] at @s run summon brr:plate 2 1 44 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house11] at @s run summon brr:plate 4 1 44 0 0 from_egg
execute if score gamemode game matches 5 as @a[tag=house12] at @s run summon brr:plate 6 1 44 0 0 from_egg
execute if score gamemode game matches 5 run fill -32 0 8 31 0 71 grass
execute positioned 0 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate01
execute positioned 2 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate02
execute positioned 4 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate03
execute positioned 6 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate04
execute positioned 0 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate05
execute positioned 2 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate06
execute positioned 4 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate07
execute positioned 6 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate08
execute positioned 0 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate09
execute positioned 2 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate10
execute positioned 4 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate11
execute positioned 6 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 5 run tag @s add plate12
execute if score gamemode game matches 5 as @e[type=brr:plate] at @s positioned 0 1 40 run spreadplayers 0 40 6 27 @e[type=brr:plate]
execute if score gamemode game matches 5 run fill -32 0 8 31 0 71 air
execute as @e[type=brr:plate, name=!inv] at @s if score gamemode game matches 5 run scoreboard players random @s rotation 0 3
execute as @e[type=brr:plate, name=!inv, scores={rotation=1}] at @s if score gamemode game matches 5 run tp @s ~ ~ ~ facing ~-5 ~ ~
execute as @e[type=brr:plate, name=!inv, scores={rotation=2}] at @s if score gamemode game matches 5 run tp @s ~ ~ ~ facing ~ ~ ~-5
execute as @e[type=brr:plate, name=!inv, scores={rotation=3}] at @s if score gamemode game matches 5 run tp @s ~ ~ ~ facing ~5 ~ ~
# - lava -
execute if score gamemode game matches 6 run structure load G7M1 -32 -6 8
execute as @a[tag=house1] at @s if score gamemode game matches 6 run summon brr:plate -9 1 20
execute as @a[tag=house2] at @s if score gamemode game matches 6 run summon brr:plate 0 1 20
execute as @a[tag=house3] at @s if score gamemode game matches 6 run summon brr:plate 9 1 20
execute as @a[tag=house4] at @s if score gamemode game matches 6 run summon brr:plate -9 1 31 180
execute as @a[tag=house5] at @s if score gamemode game matches 6 run summon brr:plate 0 1 31 180
execute as @a[tag=house6] at @s if score gamemode game matches 6 run summon brr:plate 9 1 31 180
execute as @a[tag=house7] at @s if score gamemode game matches 6 run summon brr:plate -9 1 40
execute as @a[tag=house8] at @s if score gamemode game matches 6 run summon brr:plate 0 1 40
execute as @a[tag=house9] at @s if score gamemode game matches 6 run summon brr:plate 9 1 40
execute as @a[tag=house10] at @s if score gamemode game matches 6 run summon brr:plate -9 1 51 180
execute as @a[tag=house11] at @s if score gamemode game matches 6 run summon brr:plate 0 1 51 180
execute as @a[tag=house12] at @s if score gamemode game matches 6 run summon brr:plate 9 1 51 180
execute positioned -9 1 20 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate01
execute positioned 0 1 20 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate02
execute positioned 9 1 20 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate03
execute positioned -9 1 31 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate04
execute positioned 0 1 31 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate05
execute positioned 9 1 31 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate06
execute positioned -9 1 40 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate07
execute positioned 0 1 40 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate08
execute positioned 9 1 40 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate09
execute positioned -9 1 51 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate10
execute positioned 0 1 51 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate11
execute positioned 9 1 51 if score gamemode game matches 6 run tag @e[type=brr:plate, r=2] add plate12
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate02] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate03] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate04] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate05] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate06] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate07] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate08] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate09] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate10] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate11] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate12] at @s if score gamemode game matches 6 run scoreboard players set @s rotation 2
# - spleef -
execute if score gamemode game matches 7 as @a[tag=house1] at @s run summon brr:plate 0 1 40 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house2] at @s run summon brr:plate 2 1 40 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house3] at @s run summon brr:plate 4 1 40 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house4] at @s run summon brr:plate 6 1 40 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house5] at @s run summon brr:plate 0 1 42 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house6] at @s run summon brr:plate 2 1 42 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house7] at @s run summon brr:plate 4 1 42 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house8] at @s run summon brr:plate 6 1 42 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house9] at @s run summon brr:plate 0 1 44 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house10] at @s run summon brr:plate 2 1 44 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house11] at @s run summon brr:plate 4 1 44 0 0 from_egg
execute if score gamemode game matches 7 as @a[tag=house12] at @s run summon brr:plate 6 1 44 0 0 from_egg
execute if score gamemode game matches 7 run fill -32 0 8 31 0 71 grass
execute positioned 0 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate01
execute positioned 2 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate02
execute positioned 4 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate03
execute positioned 6 1 40 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate04
execute positioned 0 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate05
execute positioned 2 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate06
execute positioned 4 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate07
execute positioned 6 1 42 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate08
execute positioned 0 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate09
execute positioned 2 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate10
execute positioned 4 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate11
execute positioned 6 1 44 as @e[type=brr:plate, r=1] at @s if score gamemode game matches 7 run tag @s add plate12
execute if score gamemode game matches 7 as @e[type=brr:plate] at @s positioned 0 1 40 run spreadplayers 0 40 6 27 @e[type=brr:plate]
execute if score gamemode game matches 7 run fill -32 0 8 31 0 71 air
execute as @e[type=brr:plate, name=!inv] at @s if score gamemode game matches 7 run scoreboard players random @s rotation 0 3
execute as @e[type=brr:plate, name=!inv, scores={rotation=1}] at @s if score gamemode game matches 7 run tp @s ~ ~ ~ facing ~-5 ~ ~
execute as @e[type=brr:plate, name=!inv, scores={rotation=2}] at @s if score gamemode game matches 7 run tp @s ~ ~ ~ facing ~ ~ ~-5
execute as @e[type=brr:plate, name=!inv, scores={rotation=3}] at @s if score gamemode game matches 7 run tp @s ~ ~ ~ facing ~5 ~ ~
execute if score gamemode game matches 7 run structure load G8M1 -32 0 8
# - line -
execute as @a[tag=house1] at @s if score gamemode game matches 8 run summon brr:plate 0 1 40 180 0 from_egg
execute as @a[tag=house2] at @s if score gamemode game matches 8 run summon brr:plate 7 1 40 180 0 from_egg
execute as @a[tag=house3] at @s if score gamemode game matches 8 run summon brr:plate -7 1 40 180 0 from_egg
execute as @a[tag=house4] at @s if score gamemode game matches 8 run summon brr:plate 14 1 40 180 0 from_egg
execute as @a[tag=house5] at @s if score gamemode game matches 8 run summon brr:plate -14 1 40 180 0 from_egg
execute as @a[tag=house6] at @s if score gamemode game matches 8 run summon brr:plate 21 1 40 180 0 from_egg
execute as @a[tag=house7] at @s if score gamemode game matches 8 run summon brr:plate -21 1 40 180 0 from_egg
execute as @a[tag=house8] at @s if score gamemode game matches 8 run summon brr:plate 28 1 40 180 0 from_egg
execute as @a[tag=house9] at @s if score gamemode game matches 8 run summon brr:plate -28 1 40 180 0 from_egg
execute as @a[tag=house10] at @s if score gamemode game matches 8 run summon brr:plate 35 1 40 180 0 from_egg
execute as @a[tag=house11] at @s if score gamemode game matches 8 run summon brr:plate -35 1 40 180 0 from_egg
execute as @a[tag=house12] at @s if score gamemode game matches 8 run summon brr:plate 42 1 40 180 0 from_egg
execute positioned 0 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate01
execute positioned 7 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate02
execute positioned -7 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate03
execute positioned 14 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate04
execute positioned -14 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate05
execute positioned 21 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate06
execute positioned -21 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate07
execute positioned 28 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate08
execute positioned -28 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate09
execute positioned 35 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate10
execute positioned -35 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate11
execute positioned 42 1 40 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 8 run tag @s add plate12
execute as @e[type=brr:plate] at @s if score gamemode game matches 8 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate] at @s if score gamemode game matches 8 run structure load G9M1 ~-3 ~-1 ~-3
# - town -
execute if score gamemode game matches 9 run structure load G10M1 -34 0 8
execute if score gamemode game matches 9 run summon brr:plate 25 1 12 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate 16 1 12 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate 7 1 12 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -7 1 12 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -16 1 12 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -25 1 12 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -7 1 28 180 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -16 1 28 180 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -25 1 28 180 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -25 1 37 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -16 1 37 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate -7 1 37 0 0 from_egg
execute if score gamemode game matches 9 run summon brr:plate 14 1 33 90 0 from_egg beans
execute positioned 25 1 12 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate01
execute positioned 16 1 12 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate02
execute positioned 7 1 12 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate03
execute positioned -7 1 12 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate04
execute positioned -16 1 12 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate05
execute positioned -25 1 12 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate06
execute positioned -7 1 28 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate07
execute positioned -16 1 28 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate08
execute positioned -25 1 28 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate09
execute positioned -25 1 37 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate10
execute positioned -16 1 37 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate11
execute positioned -7 1 37 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate12
execute positioned 14 1 33 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 9 run tag @s add plate13
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate02] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate03] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate04] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate05] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate06] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate07] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate08] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate09] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate10] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate11] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate12] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate13] at @s if score gamemode game matches 9 run scoreboard players set @s rotation 1
execute as @e[type=brr:plate] at @s if score gamemode game matches 9 run scoreboard players set @s large 2
# - ring =
execute if score gamemode game matches 10 run summon brr:plate -7 1 22 0 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 0 1 22 0 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 7 1 22 0 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 7 1 30 90 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 7 1 37 90 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 7 1 44 90 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 7 1 52 180 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate 0 1 52 180 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate -7 1 52 180 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate -7 1 44 -90 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate -7 1 37 -90 0 from_egg
execute if score gamemode game matches 10 run summon brr:plate -7 1 30 -90 0 from_egg
execute positioned -7 1 22 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate01
execute positioned 0 1 22 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate02
execute positioned 7 1 22 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate03
execute positioned 7 1 30 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate04
execute positioned 7 1 37 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate05
execute positioned 7 1 44 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate06
execute positioned 7 1 52 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate07
execute positioned 0 1 52 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate08
execute positioned -7 1 52 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate09
execute positioned -7 1 44 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate10
execute positioned -7 1 37 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate11
execute positioned -7 1 30 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 10 run tag @s add plate12
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate02] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate03] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 0
execute as @e[type=brr:plate, tag=plate04] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 1
execute as @e[type=brr:plate, tag=plate05] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 1
execute as @e[type=brr:plate, tag=plate06] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 1
execute as @e[type=brr:plate, tag=plate07] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate08] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate09] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 2
execute as @e[type=brr:plate, tag=plate10] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 3
execute as @e[type=brr:plate, tag=plate11] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 3
execute as @e[type=brr:plate, tag=plate12] at @s if score gamemode game matches 10 run scoreboard players set @s rotation 3
execute as @e[type=brr:plate] at @s if score gamemode game matches 10 run scoreboard players set @s large 1
execute as @e[type=brr:plate, scores={rotation=0}] at @s if score gamemode game matches 10 run structure load E12M1 ~-3 ~-1 ~-3
execute as @e[type=brr:plate, scores={rotation=1}] at @s if score gamemode game matches 10 run structure load E12M1 ~-4 ~-1 ~-3 90_degrees
execute as @e[type=brr:plate, scores={rotation=2}] at @s if score gamemode game matches 10 run structure load E12M1 ~-3 ~-1 ~-4 180_degrees
execute as @e[type=brr:plate, scores={rotation=3}] at @s if score gamemode game matches 10 run structure load E12M1 ~-3 ~-1 ~-3 270_degrees
# sweeper
execute as @a[tag=house1] at @s if score gamemode game matches 11 run summon brr:plate -10 1 24 0 0 from_egg
execute as @a[tag=house2] at @s if score gamemode game matches 11 run summon brr:plate 0 1 24 0 0 from_egg
execute as @a[tag=house3] at @s if score gamemode game matches 11 run summon brr:plate 10 1 24 0 0 from_egg
execute as @a[tag=house4] at @s if score gamemode game matches 11 run summon brr:plate -10 1 34 180 0 from_egg
execute as @a[tag=house5] at @s if score gamemode game matches 11 run summon brr:plate 0 1 34 180 0 from_egg
execute as @a[tag=house6] at @s if score gamemode game matches 11 run summon brr:plate 10 1 34 180 0 from_egg
execute as @a[tag=house7] at @s if score gamemode game matches 11 run summon brr:plate -10 1 44 0 0 from_egg
execute as @a[tag=house8] at @s if score gamemode game matches 11 run summon brr:plate 0 1 44 0 0 from_egg
execute as @a[tag=house9] at @s if score gamemode game matches 11 run summon brr:plate 10 1 44 0 0 from_egg
execute as @a[tag=house10] at @s if score gamemode game matches 11 run summon brr:plate -10 1 54 180 0 from_egg
execute as @a[tag=house11] at @s if score gamemode game matches 11 run summon brr:plate 0 1 54 180 0 from_egg
execute as @a[tag=house12] at @s if score gamemode game matches 11 run summon brr:plate 10 1 54 180 0 from_egg
execute positioned -10 1 24 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate01
execute positioned 0 1 24 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate02
execute positioned 10 1 24 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate03
execute positioned -10 1 34 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate04
execute positioned 0 1 34 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate05
execute positioned 10 1 34 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate06
execute positioned -10 1 44 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate07
execute positioned 0 1 44 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate08
execute positioned 10 1 44 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate09
execute positioned -10 1 54 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate10
execute positioned 0 1 54 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate11
execute positioned 10 1 54 as @e[type=brr:plate, r=2] at @s if score gamemode game matches 11 run tag @s add plate12
execute if score gamemode game matches 11 run structure load G12M2 0 2 39
execute if score gamemode game matches 11 run summon brr:laser_entity 0 22.1 39 0 0 from_egg
execute if score gamemode game matches 11 run summon brr:plate 0 22.1 75 180 0 from_egg sweeper
execute as @e[type=brr:plate, name=!sweeper] at @s if score gamemode game matches 11 run scoreboard players set @s rotation 1
# = EVENT DISABLING =
# - scattered -
execute if score gamemode game matches 5 run scoreboard players set E46 events 1
execute if score gamemode game matches 5 run scoreboard players set E68 events 1
# - lava -
execute if score gamemode game matches 6 run scoreboard players set E23 events 1
execute if score gamemode game matches 6 run scoreboard players set E38 events 1
execute if score gamemode game matches 6 run scoreboard players set E46 events 1
execute if score gamemode game matches 6 run scoreboard players set E68 events 1
# - spleef -
execute if score gamemode game matches 7 run scoreboard players set E23 events 1
execute if score gamemode game matches 7 run scoreboard players set E46 events 1
execute if score gamemode game matches 7 run scoreboard players set E68 events 1
# - line -
execute if score gamemode game matches 8 run scoreboard players set E68 events 1
# - town -
execute if score gamemode game matches 9 run scoreboard players set E12 events 1
execute if score gamemode game matches 9 run scoreboard players set E46 events 1
execute if score gamemode game matches 9 run scoreboard players set E68 events 1
# - ring -
execute if score gamemode game matches 10 run scoreboard players set E46 events 1
execute if score gamemode game matches 10 run scoreboard players set E68 events 1
# - sweeper -
execute if score gamemode game matches 11 run scoreboard players set E4 events 1
execute if score gamemode game matches 11 run scoreboard players set E11 events 1
execute if score gamemode game matches 11 run scoreboard players set E12 events 1
execute if score gamemode game matches 11 run scoreboard players set E18 events 1
execute if score gamemode game matches 11 run scoreboard players set E19 events 1
execute if score gamemode game matches 11 run scoreboard players set E23 events 1
execute if score gamemode game matches 11 run scoreboard players set E25 events 1
execute if score gamemode game matches 11 run scoreboard players set E28 events 1
execute if score gamemode game matches 11 run scoreboard players set E31 events 1
execute if score gamemode game matches 11 run scoreboard players set E34 events 1
execute if score gamemode game matches 11 run scoreboard players set E37 events 1
execute if score gamemode game matches 11 run scoreboard players set E39 events 1
execute if score gamemode game matches 11 run scoreboard players set E40 events 1
execute if score gamemode game matches 11 run scoreboard players set E46 events 1
execute if score gamemode game matches 11 run scoreboard players set E61 events 1
execute if score gamemode game matches 11 run scoreboard players set E67 events 1
execute if score gamemode game matches 11 run scoreboard players set E68 events 1
execute if score gamemode game matches 11 run scoreboard players set E80 events 1
execute if score gamemode game matches 11 run scoreboard players set E82 events 1
execute if score gamemode game matches 11 run scoreboard players set E87 events 1
