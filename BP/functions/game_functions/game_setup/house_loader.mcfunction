# = GAMEMODES =
function game_functions/game_setup/gamemodes
# = house spawn =
execute as @e[type=brr:plate, name=!beans, scores={rotation=0}] at @s unless score gamemode game matches 3 unless score gamemode game matches 11 run structure load RH ~-2 ~-1 ~-2
execute as @e[type=brr:plate, name=!beans, scores={rotation=1}] at @s unless score gamemode game matches 3 unless score gamemode game matches 11 run structure load RH ~-3 ~-1 ~-2 90_degrees
execute as @e[type=brr:plate, name=!beans, scores={rotation=2}] at @s unless score gamemode game matches 3 unless score gamemode game matches 11 run structure load RH ~-2 ~-1 ~-3 180_degrees
execute as @e[type=brr:plate, name=!beans, scores={rotation=3}] at @s unless score gamemode game matches 3 unless score gamemode game matches 11 run structure load RH ~-2 ~-1 ~-2 270_degrees
execute as @e[type=brr:plate, name=!beans, scores={rotation=0..3}] at @s if score gamemode game matches 3 run setblock ~ ~-1 ~ bedrock
execute as @e[type=brr:plate, name=beans] at @s if score gamemode game matches 9 run structure load G10M2 ~-10 ~-1 ~-9
execute as @e[type=brr:plate] at @s if score gamemode game matches 11 run structure load G12M1 ~-2 ~1 ~-2
effect @e[type=brr:plate] invisibility 100000 255 true
# = gamemode announce =
title @a[tag=!stop] title The gamemode is:
execute if score gamemode game matches 0 run title @a[tag=!stop] subtitle §bClassic!
execute if score gamemode game matches 1 run title @a[tag=!stop] subtitle §4§lBlast!
execute if score gamemode game matches 2 run title @a[tag=!stop] subtitle §6Rapid!
execute if score gamemode game matches 3 run title @a[tag=!stop] subtitle §7Stud!
execute if score gamemode game matches 4 run title @a[tag=!stop] subtitle §bOne Plate!
execute if score gamemode game matches 5 run title @a[tag=!stop] subtitle §bScattered!
execute if score gamemode game matches 6 run title @a[tag=!stop] subtitle §6Lava!
execute if score gamemode game matches 7 run title @a[tag=!stop] subtitle §bSpleef!
execute if score gamemode game matches 8 run title @a[tag=!stop] subtitle §bLine!
execute if score gamemode game matches 9 run title @a[tag=!stop] subtitle §bTown!
execute if score gamemode game matches 10 run title @a[tag=!stop] subtitle §bRing!
execute if score gamemode game matches 11 run title @a[tag=!stop] subtitle §dSweeper!
execute if score gamemode game matches 12 run title @a[tag=!stop] subtitle §bTwo Plates!
execute if score gamemode game matches 13 run title @a[tag=!stop] subtitle §9Murder Town!
execute if score gamemode game matches 14 run title @a[tag=!stop] subtitle §bSlowed Down!
execute if score gamemode game matches 15 run title @a[tag=!stop] subtitle §bGear!
execute if score gamemode game matches 16 run title @a[tag=!stop] subtitle §4Hotel!
execute if score gamemode game matches 17 run title @a[tag=!stop] subtitle §gIslands!
execute if score gamemode game matches 18 run title @a[tag=!stop] subtitle §7Heist!
execute if score gamemode game matches 19 run title @a[tag=!stop] subtitle §bStack!