# scores
scoreboard players add @s[type=brr:plate, scores={"nuke switch"=-2}] nuke 1
# effects
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50}] run stopsound @a sfx.game.nuke.nuke
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50}] run playsound sfx.game.nuke.nuke_explode @a 
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50..100}] run particle brr:rocket_explode ~ ~ ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50..60}] run particle brr:rocket_burn_03 ~ ~ ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50..60}] run particle brr:rocket_burn_02 ~ ~ ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50..60}] run particle brr:rocket_burn ~ ~ ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=100..}] run kill @s
# nuke animation
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=1}] at @s run structure load E49M2 ~-1 ~50 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=2}] at @s run structure load E49M2 ~-1 ~49 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=3}] at @s run structure load E49M2 ~-1 ~48 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=4}] at @s run structure load E49M2 ~-1 ~47 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=5}] at @s run structure load E49M2 ~-1 ~46 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=6}] at @s run structure load E49M2 ~-1 ~45 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=7}] at @s run structure load E49M2 ~-1 ~44 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=8}] at @s run structure load E49M2 ~-1 ~43 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=9}] at @s run structure load E49M2 ~-1 ~42 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=10}] at @s run structure load E49M2 ~-1 ~41 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=11}] at @s run structure load E49M2 ~-1 ~40 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=12}] at @s run structure load E49M2 ~-1 ~39 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=13}] at @s run structure load E49M2 ~-1 ~38 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=14}] at @s run structure load E49M2 ~-1 ~37 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=15}] at @s run structure load E49M2 ~-1 ~36 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=16}] at @s run structure load E49M2 ~-1 ~35 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=17}] at @s run structure load E49M2 ~-1 ~34 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=18}] at @s run structure load E49M2 ~-1 ~33 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=19}] at @s run structure load E49M2 ~-1 ~32 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=20}] at @s run structure load E49M2 ~-1 ~31 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=21}] at @s run structure load E49M2 ~-1 ~30 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=22}] at @s run structure load E49M2 ~-1 ~29 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=23}] at @s run structure load E49M2 ~-1 ~28 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=24}] at @s run structure load E49M2 ~-1 ~27 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=25}] at @s run structure load E49M2 ~-1 ~26 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=26}] at @s run structure load E49M2 ~-1 ~25 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=27}] at @s run structure load E49M2 ~-1 ~24 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=28}] at @s run structure load E49M2 ~-1 ~23 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=29}] at @s run structure load E49M2 ~-1 ~22 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=30}] at @s run structure load E49M2 ~-1 ~21 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=31}] at @s run structure load E49M2 ~-1 ~20 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=32}] at @s run structure load E49M2 ~-1 ~19 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=33}] at @s run structure load E49M2 ~-1 ~18 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=34}] at @s run structure load E49M2 ~-1 ~17 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=35}] at @s run structure load E49M2 ~-1 ~16 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=36}] at @s run structure load E49M2 ~-1 ~15 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=37}] at @s run structure load E49M2 ~-1 ~14 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=38}] at @s run structure load E49M2 ~-1 ~13 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=39}] at @s run structure load E49M2 ~-1 ~12 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=40}] at @s run structure load E49M2 ~-1 ~11 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=41}] at @s run structure load E49M2 ~-1 ~10 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=42}] at @s run structure load E49M2 ~-1 ~9 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=43}] at @s run structure load E49M2 ~-1 ~8 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=44}] at @s run structure load E49M2 ~-1 ~7 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=45}] at @s run structure load E49M2 ~-1 ~6 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=46}] at @s run structure load E49M2 ~-1 ~5 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=47}] at @s run structure load E49M2 ~-1 ~4 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=48}] at @s run structure load E49M2 ~-1 ~3 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=49}] at @s run structure load E49M2 ~-1 ~2 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50}] at @s run structure load E49M2 ~-1 ~1 ~-1
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=51, rotation=0}] at @s run structure load E0M0 ~-4 ~-32 ~-4
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=51, rotation=1}] at @s run structure load E0M0 ~-5 ~-32 ~-4 90_degrees
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=51, rotation=2}] at @s run structure load E0M0 ~-4 ~-32 ~-5 180_degrees
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=51, rotation=3}] at @s run structure load E0M0 ~-4 ~-32 ~-4 270_degrees
# nuke particles
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=1}] at @s run particle brr:rocket_burn ~ ~58 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=2}] at @s run particle brr:rocket_burn ~ ~57 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=3}] at @s run particle brr:rocket_burn ~ ~56 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=4}] at @s run particle brr:rocket_burn ~ ~55 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=5}] at @s run particle brr:rocket_burn ~ ~54 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=6}] at @s run particle brr:rocket_burn ~ ~53 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=7}] at @s run particle brr:rocket_burn ~ ~52 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=8}] at @s run particle brr:rocket_burn ~ ~51 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=9}] at @s run particle brr:rocket_burn ~ ~50 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=10}] at @s run particle brr:rocket_burn ~ ~49 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=11}] at @s run particle brr:rocket_burn ~ ~48 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=12}] at @s run particle brr:rocket_burn ~ ~47 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=13}] at @s run particle brr:rocket_burn ~ ~46 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=14}] at @s run particle brr:rocket_burn ~ ~45 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=15}] at @s run particle brr:rocket_burn ~ ~44 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=16}] at @s run particle brr:rocket_burn ~ ~43 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=17}] at @s run particle brr:rocket_burn ~ ~42 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=18}] at @s run particle brr:rocket_burn ~ ~41 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=19}] at @s run particle brr:rocket_burn ~ ~40 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=20}] at @s run particle brr:rocket_burn ~ ~39 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=21}] at @s run particle brr:rocket_burn ~ ~38 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=22}] at @s run particle brr:rocket_burn ~ ~37 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=23}] at @s run particle brr:rocket_burn ~ ~36 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=24}] at @s run particle brr:rocket_burn ~ ~35 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=25}] at @s run particle brr:rocket_burn ~ ~34 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=26}] at @s run particle brr:rocket_burn ~ ~33 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=27}] at @s run particle brr:rocket_burn ~ ~32 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=28}] at @s run particle brr:rocket_burn ~ ~31 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=29}] at @s run particle brr:rocket_burn ~ ~30 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=30}] at @s run particle brr:rocket_burn ~ ~29 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=31}] at @s run particle brr:rocket_burn ~ ~28 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=32}] at @s run particle brr:rocket_burn ~ ~27 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=33}] at @s run particle brr:rocket_burn ~ ~26 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=34}] at @s run particle brr:rocket_burn ~ ~25 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=35}] at @s run particle brr:rocket_burn ~ ~24 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=36}] at @s run particle brr:rocket_burn ~ ~23 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=37}] at @s run particle brr:rocket_burn ~ ~22 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=38}] at @s run particle brr:rocket_burn ~ ~21 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=39}] at @s run particle brr:rocket_burn ~ ~20 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=40}] at @s run particle brr:rocket_burn ~ ~19 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=41}] at @s run particle brr:rocket_burn ~ ~18 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=42}] at @s run particle brr:rocket_burn ~ ~17 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=43}] at @s run particle brr:rocket_burn ~ ~16 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=44}] at @s run particle brr:rocket_burn ~ ~15 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=45}] at @s run particle brr:rocket_burn ~ ~14 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=46}] at @s run particle brr:rocket_burn ~ ~13 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=47}] at @s run particle brr:rocket_burn ~ ~12 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=48}] at @s run particle brr:rocket_burn ~ ~11 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=49}] at @s run particle brr:rocket_burn ~ ~10 ~
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=50}] at @s run particle brr:rocket_burn ~ ~9 ~
