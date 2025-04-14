# value setting
execute as @s[type=brr:plate, tag=meteor, scores={"meteor switch"=1, meteor=..82}] at @s run scoreboard players add @s meteor 1
execute as @s[type=brr:plate, tag=meteor, scores={"meteor switch"=1}] at @s run scoreboard players add @s meteor 0
# particle
execute as @s[type=brr:plate, scores={meteor=51..54}] at @s run particle brr:plate_boom ~ ~ ~
# players
execute as @e[type=brr:plate, scores={rotation=0, meteor=51..56}] at @s run kill @a[tag=game, x=~-4, y=~-1, z=~-4, dx=7, dy=10, dz=8]
execute as @e[type=brr:plate, scores={rotation=1, meteor=51..56}] at @s run kill @a[tag=game, x=~-5, y=~-1, z=~-4, dx=8, dy=10, dz=7]
execute as @e[type=brr:plate, scores={rotation=2, meteor=51..56}] at @s run kill @a[tag=game, x=~-4, y=~-1, z=~-5, dx=7, dy=10, dz=8]
execute as @e[type=brr:plate, scores={rotation=3, meteor=51..56}] at @s run kill @a[tag=game, x=~-4, y=~-1, z=~-4, dx=8, dy=10, dz=7]
# sound
execute as @e[type=brr:plate, scores={meteor=51}] at @s run playsound random.explode @a
execute as @e[type=brr:plate, scores={meteor=51}] at @s run playsound block.landmine @a
# meteor animation
execute as @s[type=brr:plate, scores={meteor=1}] at @s run structure load E35M1 ~-3 ~50 ~-3
execute as @s[type=brr:plate, scores={meteor=2}] at @s run structure load E35M2 ~-3 ~49 ~-3
execute as @s[type=brr:plate, scores={meteor=3}] at @s run structure load E35M3 ~-3 ~48 ~-3
execute as @s[type=brr:plate, scores={meteor=4}] at @s run structure load E35M1 ~-3 ~47 ~-3
execute as @s[type=brr:plate, scores={meteor=5}] at @s run structure load E35M2 ~-3 ~46 ~-3
execute as @s[type=brr:plate, scores={meteor=6}] at @s run structure load E35M3 ~-3 ~45 ~-3
execute as @s[type=brr:plate, scores={meteor=7}] at @s run structure load E35M1 ~-3 ~44 ~-3
execute as @s[type=brr:plate, scores={meteor=8}] at @s run structure load E35M2 ~-3 ~43 ~-3
execute as @s[type=brr:plate, scores={meteor=9}] at @s run structure load E35M3 ~-3 ~42 ~-3
execute as @s[type=brr:plate, scores={meteor=10}] at @s run structure load E35M1 ~-3 ~41 ~-3
execute as @s[type=brr:plate, scores={meteor=11}] at @s run structure load E35M2 ~-3 ~40 ~-3
execute as @s[type=brr:plate, scores={meteor=12}] at @s run structure load E35M3 ~-3 ~39 ~-3
execute as @s[type=brr:plate, scores={meteor=13}] at @s run structure load E35M1 ~-3 ~38 ~-3
execute as @s[type=brr:plate, scores={meteor=14}] at @s run structure load E35M2 ~-3 ~37 ~-3
execute as @s[type=brr:plate, scores={meteor=15}] at @s run structure load E35M3 ~-3 ~36 ~-3
execute as @s[type=brr:plate, scores={meteor=16}] at @s run structure load E35M1 ~-3 ~35 ~-3
execute as @s[type=brr:plate, scores={meteor=17}] at @s run structure load E35M2 ~-3 ~34 ~-3
execute as @s[type=brr:plate, scores={meteor=18}] at @s run structure load E35M3 ~-3 ~33 ~-3
execute as @s[type=brr:plate, scores={meteor=19}] at @s run structure load E35M1 ~-3 ~32 ~-3
execute as @s[type=brr:plate, scores={meteor=20}] at @s run structure load E35M2 ~-3 ~31 ~-3
execute as @s[type=brr:plate, scores={meteor=21}] at @s run structure load E35M3 ~-3 ~30 ~-3
execute as @s[type=brr:plate, scores={meteor=22}] at @s run structure load E35M1 ~-3 ~29 ~-3
execute as @s[type=brr:plate, scores={meteor=23}] at @s run structure load E35M2 ~-3 ~28 ~-3
execute as @s[type=brr:plate, scores={meteor=24}] at @s run structure load E35M3 ~-3 ~27 ~-3
execute as @s[type=brr:plate, scores={meteor=25}] at @s run structure load E35M1 ~-3 ~26 ~-3
execute as @s[type=brr:plate, scores={meteor=26}] at @s run structure load E35M2 ~-3 ~25 ~-3
execute as @s[type=brr:plate, scores={meteor=27}] at @s run structure load E35M3 ~-3 ~24 ~-3
execute as @s[type=brr:plate, scores={meteor=28}] at @s run structure load E35M1 ~-3 ~23 ~-3
execute as @s[type=brr:plate, scores={meteor=29}] at @s run structure load E35M2 ~-3 ~22 ~-3
execute as @s[type=brr:plate, scores={meteor=30}] at @s run structure load E35M3 ~-3 ~21 ~-3
execute as @s[type=brr:plate, scores={meteor=31}] at @s run structure load E35M1 ~-3 ~20 ~-3
execute as @s[type=brr:plate, scores={meteor=32}] at @s run structure load E35M2 ~-3 ~19 ~-3
execute as @s[type=brr:plate, scores={meteor=33}] at @s run structure load E35M3 ~-3 ~18 ~-3
execute as @s[type=brr:plate, scores={meteor=34}] at @s run structure load E35M1 ~-3 ~17 ~-3
execute as @s[type=brr:plate, scores={meteor=35}] at @s run structure load E35M2 ~-3 ~16 ~-3
execute as @s[type=brr:plate, scores={meteor=36}] at @s run structure load E35M3 ~-3 ~15 ~-3
execute as @s[type=brr:plate, scores={meteor=37}] at @s run structure load E35M1 ~-3 ~14 ~-3
execute as @s[type=brr:plate, scores={meteor=38}] at @s run structure load E35M2 ~-3 ~13 ~-3
execute as @s[type=brr:plate, scores={meteor=39}] at @s run structure load E35M3 ~-3 ~12 ~-3
execute as @s[type=brr:plate, scores={meteor=40}] at @s run structure load E35M1 ~-3 ~11 ~-3
execute as @s[type=brr:plate, scores={meteor=41}] at @s run structure load E35M2 ~-3 ~10 ~-3
execute as @s[type=brr:plate, scores={meteor=42}] at @s run structure load E35M3 ~-3 ~9 ~-3
execute as @s[type=brr:plate, scores={meteor=43}] at @s run structure load E35M1 ~-3 ~8 ~-3
execute as @s[type=brr:plate, scores={meteor=44}] at @s run structure load E35M2 ~-3 ~7 ~-3
execute as @s[type=brr:plate, scores={meteor=45}] at @s run structure load E35M3 ~-3 ~6 ~-3
execute as @s[type=brr:plate, scores={meteor=46}] at @s run structure load E35M1 ~-3 ~5 ~-3
execute as @s[type=brr:plate, scores={meteor=47}] at @s run structure load E35M2 ~-3 ~4 ~-3
execute as @s[type=brr:plate, scores={meteor=48}] at @s run structure load E35M3 ~-3 ~3 ~-3
execute as @s[type=brr:plate, scores={meteor=49}] at @s run structure load E35M1 ~-3 ~2 ~-3
execute as @s[type=brr:plate, scores={meteor=50}] at @s run structure load E35M2 ~-3 ~1 ~-3
execute as @s[type=brr:plate, scores={meteor=51}] at @s run structure load E35M3 ~-3 ~ ~-3
execute as @s[type=brr:plate, scores={meteor=52}] at @s run structure load E35M1 ~-3 ~-1 ~-3
execute as @s[type=brr:plate, scores={meteor=53}] at @s run structure load E35M2 ~-3 ~-2 ~-3
execute as @s[type=brr:plate, scores={meteor=54}] at @s run structure load E35M3 ~-3 ~-3 ~-3
execute as @s[type=brr:plate, scores={meteor=55}] at @s run structure load E35M1 ~-3 ~-4 ~-3
execute as @s[type=brr:plate, scores={meteor=56}] at @s run structure load E35M2 ~-3 ~-5 ~-3
execute as @s[type=brr:plate, scores={meteor=57}] at @s run structure load E35M3 ~-3 ~-6 ~-3
execute as @s[type=brr:plate, scores={meteor=58}] at @s run structure load E35M1 ~-3 ~-7 ~-3
execute as @s[type=brr:plate, scores={meteor=59}] at @s run structure load E35M2 ~-3 ~-8 ~-3
execute as @s[type=brr:plate, scores={meteor=60}] at @s run structure load E35M3 ~-3 ~-9 ~-3
execute as @s[type=brr:plate, scores={meteor=61}] at @s run structure load E35M1 ~-3 ~-10 ~-3
execute as @s[type=brr:plate, scores={meteor=62}] at @s run structure load E35M2 ~-3 ~-11 ~-3
execute as @s[type=brr:plate, scores={meteor=63}] at @s run structure load E35M3 ~-3 ~-12 ~-3
execute as @s[type=brr:plate, scores={meteor=64}] at @s run structure load E35M1 ~-3 ~-13 ~-3
execute as @s[type=brr:plate, scores={meteor=65}] at @s run structure load E35M2 ~-3 ~-14 ~-3
execute as @s[type=brr:plate, scores={meteor=66}] at @s run structure load E35M3 ~-3 ~-15 ~-3
execute as @s[type=brr:plate, scores={meteor=67}] at @s run structure load E35M1 ~-3 ~-16 ~-3
execute as @s[type=brr:plate, scores={meteor=68}] at @s run structure load E35M2 ~-3 ~-17 ~-3
execute as @s[type=brr:plate, scores={meteor=69}] at @s run structure load E35M3 ~-3 ~-18 ~-3
execute as @s[type=brr:plate, scores={meteor=70}] at @s run structure load E35M1 ~-3 ~-19 ~-3
execute as @s[type=brr:plate, scores={meteor=71}] at @s run structure load E35M2 ~-3 ~-20 ~-3
execute as @s[type=brr:plate, scores={meteor=72}] at @s run structure load E35M3 ~-3 ~-21 ~-3
execute as @s[type=brr:plate, scores={meteor=73}] at @s run structure load E35M1 ~-3 ~-22 ~-3
execute as @s[type=brr:plate, scores={meteor=74}] at @s run structure load E35M2 ~-3 ~-23 ~-3
execute as @s[type=brr:plate, scores={meteor=75}] at @s run structure load E35M3 ~-3 ~-24 ~-3
execute as @s[type=brr:plate, scores={meteor=76}] at @s run structure load E35M1 ~-3 ~-25 ~-3
execute as @s[type=brr:plate, scores={meteor=77}] at @s run structure load E35M2 ~-3 ~-26 ~-3
execute as @s[type=brr:plate, scores={meteor=78}] at @s run structure load E35M3 ~-3 ~-27 ~-3
execute as @s[type=brr:plate, scores={meteor=79}] at @s run structure load E35M1 ~-3 ~-28 ~-3
execute as @s[type=brr:plate, scores={meteor=80}] at @s run structure load E35M2 ~-3 ~-29 ~-3
execute as @s[type=brr:plate, scores={meteor=81}] at @s run structure load E35M3 ~-3 ~-30 ~-3
execute as @s[type=brr:plate, scores={rotation=0, meteor=82}] at @s run structure load E0M0 ~-4 ~-30 ~-4
execute as @s[type=brr:plate, scores={rotation=1, meteor=82}] at @s run structure load E0M0 ~-5 ~-30 ~-4 90_degrees
execute as @s[type=brr:plate, scores={rotation=2, meteor=82}] at @s run structure load E0M0 ~-4 ~-30 ~-5 180_degrees
execute as @s[type=brr:plate, scores={rotation=3, meteor=82}] at @s run structure load E0M0 ~-4 ~-30 ~-4 270_degrees
# end
execute as @s[type=brr:plate, scores={meteor=82}] at @s run kill @s