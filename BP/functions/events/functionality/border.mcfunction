# remove border if time is up
execute as @s[type=brr:plate, tag=border, scores={border=1..}] at @s run scoreboard players remove @s border 1
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=0, upside=0}] at @s run structure load E7M1a ~-4 ~ ~-4
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=1, upside=0}] at @s run structure load E7M1a ~-5 ~ ~-4 90_degrees
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=2, upside=0}] at @s run structure load E7M1a ~-4 ~ ~-5 180_degrees
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=3, upside=0}] at @s run structure load E7M1a ~-4 ~ ~-4 270_degrees
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=0, upside=1}] at @s run structure load E7M1a ~-4 ~-2 ~-4
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=1, upside=1}] at @s run structure load E7M1a ~-5 ~-2 ~-4 90_degrees
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=2, upside=1}] at @s run structure load E7M1a ~-4 ~-2 ~-5 180_degrees
execute as @s[type=brr:plate, tag=border, scores={border=..0, rotation=3, upside=1}] at @s run structure load E7M1a ~-4 ~-2 ~-4 270_degrees
# end
execute as @s[type=brr:plate, tag=border, scores={border=..0}] run tag @s remove border
scoreboard players reset @s[type=brr:plate, scores={border=..0}] border
