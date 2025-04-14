# scores
execute as @s[type=brr:plate, scores={"taco switch"=1}] at @s run scoreboard players add @s taco 1
execute as @s[type=brr:plate, scores={"taco switch"=1}] at @s run scoreboard players add @s taco 0
execute as @s[type=brr:plate, scores={"taco switch"=1}] at @s run scoreboard players remove @s "taco music" 1
execute as @s[type=brr:plate, scores={taco=319..}] at @s run scoreboard players reset @s taco
# animation
execute as @s[type=brr:plate, scores={taco=1, "event building"=!7}] at @s run structure load E38M1 ~-2 ~12 ~-2
execute as @s[type=brr:plate, scores={taco=20, "event building"=!7}] at @s run structure load E38M2 ~-2 ~12 ~-2
execute as @s[type=brr:plate, scores={taco=40, "event building"=!7}] at @s run structure load E38M3 ~-2 ~12 ~-2
execute as @s[type=brr:plate, scores={taco=60, "event building"=!7}] at @s run structure load E38M4 ~-2 ~12 ~-2
execute as @s[type=brr:plate, scores={taco=80, "event building"=!7}] at @s run structure load E38M1 ~-2 ~12 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=100, "event building"=!7}] at @s run structure load E38M2 ~-2 ~12 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=120, "event building"=!7}] at @s run structure load E38M3 ~-2 ~12 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=140, "event building"=!7}] at @s run structure load E38M4 ~-2 ~12 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=160, "event building"=!7}] at @s run structure load E38M1 ~-2 ~12 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=180, "event building"=!7}] at @s run structure load E38M2 ~-2 ~12 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=200, "event building"=!7}] at @s run structure load E38M3 ~-2 ~12 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=220, "event building"=!7}] at @s run structure load E38M4 ~-2 ~12 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=240, "event building"=!7}] at @s run structure load E38M1 ~-2 ~12 ~-2 90_degrees
execute as @s[type=brr:plate, scores={taco=260, "event building"=!7}] at @s run structure load E38M2 ~-2 ~12 ~-2 90_degrees
execute as @s[type=brr:plate, scores={taco=280, "event building"=!7}] at @s run structure load E38M3 ~-2 ~12 ~-2 90_degrees
execute as @s[type=brr:plate, scores={taco=300, "event building"=!7}] at @s run structure load E38M4 ~-2 ~12 ~-2 90_degrees
execute as @s[type=brr:plate, scores={"taco music"=0}] at @s run structure load E38M0 ~-2 12 ~-2
# mountain animation
execute as @s[type=brr:plate, scores={taco=1, "event building"=7}] at @s run structure load E38M1 ~-2 ~35 ~-2
execute as @s[type=brr:plate, scores={taco=20, "event building"=7}] at @s run structure load E38M2 ~-2 ~35 ~-2
execute as @s[type=brr:plate, scores={taco=40, "event building"=7}] at @s run structure load E38M3 ~-2 ~35 ~-2
execute as @s[type=brr:plate, scores={taco=60, "event building"=7}] at @s run structure load E38M4 ~-2 ~35 ~-2
execute as @s[type=brr:plate, scores={taco=80, "event building"=7}] at @s run structure load E38M1 ~-2 ~35 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=100, "event building"=7}] at @s run structure load E38M2 ~-2 ~35 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=120, "event building"=7}] at @s run structure load E38M3 ~-2 ~35 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=140, "event building"=7}] at @s run structure load E38M4 ~-2 ~35 ~-2 270_degrees
execute as @s[type=brr:plate, scores={taco=160, "event building"=7}] at @s run structure load E38M1 ~-2 ~35 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=180, "event building"=7}] at @s run structure load E38M2 ~-2 ~35 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=200, "event building"=7}] at @s run structure load E38M3 ~-2 ~35 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=220, "event building"=7}] at @s run structure load E38M4 ~-2 ~35 ~-2 180_degrees
execute as @s[type=brr:plate, scores={taco=240, "event building"=7}] at @s run structure load E38M1 ~-2 ~35 ~-2 90_degrees
execute as @s[type=brr:plate, scores={taco=260, "event building"=7}] at @s run structure load E38M2 ~-2 ~35 ~-2 90_degrees
execute as @s[type=brr:plate, scores={taco=280, "event building"=7}] at @s run structure load E38M3 ~-2 ~35 ~-2 90_degrees
execute as @s[type=brr:plate, scores={taco=300, "event building"=7}] at @s run structure load E38M4 ~-2 ~35 ~-2 90_degrees
execute as @s[type=brr:plate, scores={"taco music"=0}] at @s run structure load E38M0 ~-2 35 ~-2
# taco dropping
execute as @s[type=brr:plate, scores={taco=1, "event building"=!7}] at @s run structure load E38M1a ^2 ^11 ^-2
execute as @s[type=brr:plate, scores={taco=1, "event building"=!7}] at @s run fill ^2 ^11 ^-2 ^2 ^11 ^-2 air destroy
execute as @s[type=brr:plate, scores={taco=20, "event building"=!7}] at @s run structure load E38M1a ^ ^11 ^
execute as @s[type=brr:plate, scores={taco=20, "event building"=!7}] at @s run fill ^ ^11 ^ ^ ^11 ^ air destroy
execute as @s[type=brr:plate, scores={taco=40, "event building"=!7}] at @s run structure load E38M1a ^1 ^11 ^1
execute as @s[type=brr:plate, scores={taco=40, "event building"=!7}] at @s run fill ^1 ^11 ^1 ^1 ^11 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=60, "event building"=!7}] at @s run structure load E38M1a ^-1 ^11 ^
execute as @s[type=brr:plate, scores={taco=60, "event building"=!7}] at @s run fill ^-1 ^11 ^ ^-1 ^11 ^ air destroy
execute as @s[type=brr:plate, scores={taco=80, "event building"=!7}] at @s run structure load E38M1a ^ ^11 ^-2
execute as @s[type=brr:plate, scores={taco=80, "event building"=!7}] at @s run fill ^ ^11 ^-2 ^ ^11 ^-2 air destroy
execute as @s[type=brr:plate, scores={taco=100, "event building"=!7}] at @s run structure load E38M1a ^-2 ^11 ^-1
execute as @s[type=brr:plate, scores={taco=100, "event building"=!7}] at @s run fill ^-2 ^11 ^-2 ^-2 ^11 ^-1 air destroy
execute as @s[type=brr:plate, scores={taco=120, "event building"=!7}] at @s run structure load E38M1a ^2 ^11 ^
execute as @s[type=brr:plate, scores={taco=120, "event building"=!7}] at @s run fill ^2 ^11 ^ ^2 ^11 ^ air destroy
execute as @s[type=brr:plate, scores={taco=140, "event building"=!7}] at @s run structure load E38M1a ^3 ^11 ^1
execute as @s[type=brr:plate, scores={taco=140, "event building"=!7}] at @s run fill ^3 ^11 ^1 ^3 ^11 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=160, "event building"=!7}] at @s run structure load E38M1a ^-1 ^11 ^-1
execute as @s[type=brr:plate, scores={taco=160, "event building"=!7}] at @s run fill ^-1 ^11 ^-1 ^-1 ^11 ^-1 air destroy
execute as @s[type=brr:plate, scores={taco=180, "event building"=!7}] at @s run structure load E38M1a ^-1 ^11 ^-2
execute as @s[type=brr:plate, scores={taco=180, "event building"=!7}] at @s run fill ^-1 ^11 ^-2 ^-1 ^11 ^-2 air destroy
execute as @s[type=brr:plate, scores={taco=200, "event building"=!7}] at @s run structure load E38M1a ^ ^11 ^2
execute as @s[type=brr:plate, scores={taco=200, "event building"=!7}] at @s run fill ^ ^11 ^2 ^ ^11 ^2 air destroy
execute as @s[type=brr:plate, scores={taco=220, "event building"=!7}] at @s run structure load E38M1a ^-1 ^11 ^1
execute as @s[type=brr:plate, scores={taco=220, "event building"=!7}] at @s run fill ^-1 ^11 ^1 ^-1 ^11 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=240, "event building"=!7}] at @s run structure load E38M1a ^ ^11 ^
execute as @s[type=brr:plate, scores={taco=240, "event building"=!7}] at @s run fill ^ ^11 ^ ^ ^11 ^ air destroy
execute as @s[type=brr:plate, scores={taco=260, "event building"=!7}] at @s run structure load E38M1a ^1 ^11 ^1
execute as @s[type=brr:plate, scores={taco=260, "event building"=!7}] at @s run fill ^1 ^11 ^1 ^1 ^11 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=280, "event building"=!7}] at @s run structure load E38M1a ^-2 ^11 ^2
execute as @s[type=brr:plate, scores={taco=280, "event building"=!7}] at @s run fill ^-2 ^11 ^2 ^-2 ^11 ^2 air destroy
execute as @s[type=brr:plate, scores={taco=300, "event building"=!7}] at @s run structure load E38M1a ^-1 ^11 ^2
execute as @s[type=brr:plate, scores={taco=300, "event building"=!7}] at @s run fill ^-1 ^11 ^2 ^-1 ^11 ^2 air destroy
# taco dropping mountain
execute as @s[type=brr:plate, scores={taco=1, "event building"=7}] at @s run structure load E38M1a ^2 ^34 ^-2
execute as @s[type=brr:plate, scores={taco=1, "event building"=7}] at @s run fill ^2 ^34 ^-2 ^2 ^34 ^-2 air destroy
execute as @s[type=brr:plate, scores={taco=20, "event building"=7}] at @s run structure load E38M1a ^ ^34 ^
execute as @s[type=brr:plate, scores={taco=20, "event building"=7}] at @s run fill ^ ^34 ^ ^ ^34 ^ air destroy
execute as @s[type=brr:plate, scores={taco=40, "event building"=7}] at @s run structure load E38M1a ^1 ^34 ^1
execute as @s[type=brr:plate, scores={taco=40, "event building"=7}] at @s run fill ^1 ^34 ^1 ^1 ^34 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=60, "event building"=7}] at @s run structure load E38M1a ^-1 ^34 ^
execute as @s[type=brr:plate, scores={taco=60, "event building"=7}] at @s run fill ^-1 ^34 ^ ^-1 ^34 ^ air destroy
execute as @s[type=brr:plate, scores={taco=80, "event building"=7}] at @s run structure load E38M1a ^ ^34 ^-2
execute as @s[type=brr:plate, scores={taco=80, "event building"=7}] at @s run fill ^ ^34 ^-2 ^ ^34 ^-2 air destroy
execute as @s[type=brr:plate, scores={taco=100, "event building"=7}] at @s run structure load E38M1a ^-2 ^34 ^-1
execute as @s[type=brr:plate, scores={taco=100, "event building"=7}] at @s run fill ^-2 ^34 ^-2 ^-2 ^34 ^-1 air destroy
execute as @s[type=brr:plate, scores={taco=120, "event building"=7}] at @s run structure load E38M1a ^2 ^34 ^
execute as @s[type=brr:plate, scores={taco=120, "event building"=7}] at @s run fill ^2 ^34 ^ ^2 ^34 ^ air destroy
execute as @s[type=brr:plate, scores={taco=140, "event building"=7}] at @s run structure load E38M1a ^3 ^34 ^1
execute as @s[type=brr:plate, scores={taco=140, "event building"=7}] at @s run fill ^3 ^34 ^1 ^3 ^34 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=160, "event building"=7}] at @s run structure load E38M1a ^-1 ^34 ^-1
execute as @s[type=brr:plate, scores={taco=160, "event building"=7}] at @s run fill ^-1 ^34 ^-1 ^-1 ^34 ^-1 air destroy
execute as @s[type=brr:plate, scores={taco=180, "event building"=7}] at @s run structure load E38M1a ^-1 ^34 ^-2
execute as @s[type=brr:plate, scores={taco=180, "event building"=7}] at @s run fill ^-1 ^34 ^-2 ^-1 ^34 ^-2 air destroy
execute as @s[type=brr:plate, scores={taco=200, "event building"=7}] at @s run structure load E38M1a ^ ^34 ^2
execute as @s[type=brr:plate, scores={taco=200, "event building"=7}] at @s run fill ^ ^34 ^2 ^ ^34 ^2 air destroy
execute as @s[type=brr:plate, scores={taco=220, "event building"=7}] at @s run structure load E38M1a ^-1 ^34 ^1
execute as @s[type=brr:plate, scores={taco=220, "event building"=7}] at @s run fill ^-1 ^34 ^1 ^-1 ^34 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=240, "event building"=7}] at @s run structure load E38M1a ^ ^34 ^
execute as @s[type=brr:plate, scores={taco=240, "event building"=7}] at @s run fill ^ ^34 ^ ^ ^34 ^ air destroy
execute as @s[type=brr:plate, scores={taco=260, "event building"=7}] at @s run structure load E38M1a ^1 ^34 ^1
execute as @s[type=brr:plate, scores={taco=260, "event building"=7}] at @s run fill ^1 ^34 ^1 ^1 ^34 ^1 air destroy
execute as @s[type=brr:plate, scores={taco=280, "event building"=7}] at @s run structure load E38M1a ^-2 ^34 ^2
execute as @s[type=brr:plate, scores={taco=280, "event building"=7}] at @s run fill ^-2 ^34 ^2 ^-2 ^34 ^2 air destroy
execute as @s[type=brr:plate, scores={taco=300, "event building"=7}] at @s run structure load E38M1a ^-1 ^34 ^2
execute as @s[type=brr:plate, scores={taco=300, "event building"=7}] at @s run fill ^-1 ^34 ^2 ^-1 ^34 ^2 air destroy
# end
execute as @s[type=brr:plate, scores={"taco music"=..0}] at @s run scoreboard players set @s "taco switch" 0
execute as @s[type=brr:plate, scores={"taco music"=..0}] at @s run scoreboard players reset @s taco
execute as @s[type=brr:plate, scores={"taco music"=..0}] at @s run scoreboard players reset @s "taco music"