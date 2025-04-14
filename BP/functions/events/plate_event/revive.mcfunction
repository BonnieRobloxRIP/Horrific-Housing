# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add revive
execute as @e[type=brr:plate, tag=revive] at @s run scoreboard players set @s "event building" 9
# revive player
execute as @r[tag=lobby, tag=!stop] at @s run tag @s add revive
execute as @a[tag=revive] at @s run tag @s remove shop
execute as @a[tag=revive] at @s run tag @s remove inv
execute as @a[tag=revive] at @s run tag @s remove inv2
execute as @a[tag=revive] at @s run tag @s remove inv3
execute as @a[tag=revive] at @s run tag @s remove inv4
execute as @a[tag=revive] at @s run tag @s remove inv5
execute as @a[tag=revive] at @s run tag @s remove inv6
execute as @a[tag=revive] at @s run tag @s remove inv7
execute as @a[tag=revive] at @s run tag @s remove inv8
execute as @a[tag=revive] at @s run tag @s remove inv9
execute as @a[tag=revive] at @s run tag @s remove inv10
execute as @a[tag=revive] at @s run tag @s remove inv11
execute as @a[tag=revive] at @s run tag @s remove inv12
execute as @a[tag=revive] at @s run tag @s remove inv13
execute as @a[tag=revive] at @s run tag @s remove inv14
execute as @a[tag=revive] at @s run tag @s remove inv15
execute as @a[tag=revive] at @s run tag @s remove inv16
execute as @a[tag=revive] at @s run tag @s remove inv17
execute as @a[tag=revive] at @s run tag @s remove inv18
execute as @a[tag=revive] at @s run tag @s remove inv19
execute as @a[tag=revive] at @s run tag @s remove inv20
execute as @a[tag=revive] at @s run tag @s remove spectator
execute as @a[tag=revive] at @s run camera @s clear
execute as @a[tag=revive] at @s run camera @s fade time 0 5 2 color 0 0 0
execute as @a[tag=revive] at @s run title @s title §bWelcome back!
execute as @a[tag=revive] at @s run title @s subtitle §dReviving you into the game...
execute as @a[tag=revive] at @s run tellraw @a {"rawtext":[{"text": "§b"}, {"selector": "@s"},{"text": " §5Was revived!"}]}
execute as @e[type=brr:plate, tag=revive] at @s run tp @a[tag=revive] ~ ~ ~ facing ^ ^1 ^2
execute as @a[tag=revive] at @s run inputpermission set @s camera enabled
execute as @a[tag=revive] at @s run inputpermission set @s movement enabled
scoreboard players reset @a[tag=revive] transition
execute as @a[tag=revive] at @s run gamemode adventure @s
execute as @a[tag=revive] at @s run gamerule pvp false
execute as @a[tag=revive] at @s run tag @s add game
execute as @a[tag=revive] at @s run tag @s remove lobby
execute as @a[tag=revive] at @s run clear @s
execute as @a[tag=revive] at @s run tag @s remove revive
# normal rotation
execute as @e[type=brr:plate, tag=revive, scores={rotation=0, upside=0}] at @s run structure load E40M1 ~-2 ~-1 ~-2
execute as @e[type=brr:plate, tag=revive, scores={rotation=0, upside=1}] at @s run structure load E40M1a ~-2 ~-33 ~-2
# 90_degrees rotation
execute as @e[type=brr:plate, tag=revive, scores={rotation=1, upside=0}] at @s run structure load E40M1 ~-3 ~-1 ~-2 90_degrees
execute as @e[type=brr:plate, tag=revive, scores={rotation=1, upside=1}] at @s run structure load E40M1a ~-3 ~-33 ~-2 90_degrees
# 180_degrees rotation
execute as @e[type=brr:plate, tag=revive, scores={rotation=2, upside=0}] at @s run structure load E40M1 ~-2 ~-1 ~-3 180_degrees
execute as @e[type=brr:plate, tag=revive, scores={rotation=2, upside=1}] at @s run structure load E40M1a ~-2 ~-33 ~-3 180_degrees
# 270_degrees rotation
execute as @e[type=brr:plate, tag=revive, scores={rotation=3, upside=0}] at @s run structure load E40M1 ~-2 ~-1 ~-2 270_degrees
execute as @e[type=brr:plate, tag=revive, scores={rotation=3, upside=1}] at @s run structure load E40M1a ~-2 ~-33 ~-2 270_degrees
# end
execute as @e[type=brr:plate, tag=revive] at @s run tag @s remove revive