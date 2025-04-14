# scores
execute as @s[type=brr:plate, scores={"duel switch"=1, duel=..460}] at @s run scoreboard players add @s duel 1
# = timer =
execute as @s[type=brr:plate, scores={duel=1}] at @s run title @a[r=5, scores={duel=1}] title §a3
execute as @s[type=brr:plate, scores={duel=20}] at @s run title @a[r=5, scores={duel=1}] title §e2
execute as @s[type=brr:plate, scores={duel=40}] at @s run title @a[r=5, scores={duel=1}] title §41
execute as @s[type=brr:plate, scores={duel=60}] at @s run title @a[r=5, scores={duel=1}] title §bFIGHT!
execute as @s[type=brr:plate, scores={duel=60}] at @s run inputpermission set @a[tag=duel1, r=5] movement enabled
execute as @s[type=brr:plate, scores={duel=60}] at @s run inputpermission set @a[tag=duel2, r=5] movement enabled
execute as @s[type=brr:plate, scores={duel=60}] at @s run gamerule pvp true
execute as @s[type=brr:plate, scores={duel=60}] at @s run give @a[r=5, scores={duel=1}] iron_sword
execute as @s[type=brr:plate, scores={duel=460}] at @s run kill @p[tag=game, scores={duel=1}]
execute as @s[type=brr:plate, scores={duel=460}] at @s run scoreboard players set @s "duel switch" 0
# = duel end =
# - dead player detect -
scoreboard players set @a[scores={duel=!2}, tag=duel1] duel 0
scoreboard players set @e[type=player, tag=duel1] duel 1
execute as @a[scores={duel=0}, tag=duel1] at @s run scoreboard players set @e[type=brr:plate, c=1, r=4] "duel switch" 0
scoreboard players set @a[scores={duel=0}, tag=duel2] duel 2
scoreboard players set @a[scores={duel=!2}, tag=duel2] duel 0
scoreboard players set @e[type=player, tag=duel2] duel 1
execute as @a[scores={duel=0}, tag=duel2] at @s run scoreboard players set @e[type=brr:plate, c=1, r=4] "duel switch" 0
scoreboard players set @a[scores={duel=0}, tag=duel2] duel 2
# - open gate -
execute as @s[type=brr:plate, scores={rotation=0, "duel switch"=0}] at @s run structure load E39M2 ~-3 ~-1 ~-3
execute as @s[type=brr:plate, scores={rotation=1, "duel switch"=0}] at @s run structure load E39M2 ~-4 ~-1 ~-3 90_degrees
execute as @s[type=brr:plate, scores={rotation=2, "duel switch"=0}] at @s run structure load E39M2 ~-3 ~-1 ~-4 180_degrees
execute as @s[type=brr:plate, scores={rotation=3, "duel switch"=0}] at @s run structure load E39M2 ~-3 ~-1 ~-3 270_degrees
# - restore player -
execute as @s[type=brr:plate, scores={"duel switch"=0}] at @s run clear @a[r=5, scores={duel=1}] iron_sword
execute as @s[type=brr:plate, scores={"duel switch"=0}] at @s run scoreboard players reset @a[r=5, scores={duel=1}] duel
execute as @s[type=brr:plate, scores={"duel switch"=0}] at @s run tag @a[r=5] remove duel1
execute as @s[type=brr:plate, scores={"duel switch"=0}] at @s run tag @a[r=5] remove duel2
execute as @s[type=brr:plate, scores={"duel switch"=0}] at @s run scoreboard players reset @s duel
execute as @s[type=brr:plate, scores={"duel switch"=0}] at @s run scoreboard players reset @s "duel switch"