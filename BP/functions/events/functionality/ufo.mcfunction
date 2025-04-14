# = value setting =
# ufo animation
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=1..3}] at @s run scoreboard players add @s ufo 1
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=4}] at @s run scoreboard players remove @s ufo 1
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=2}] at @s run scoreboard players add @s "ufo animation" 1
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=3}] at @s run scoreboard players add @s "ufo floor" 1
# value changers
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, "ufo switch"=1, ufo=69}] at @s run scoreboard players set @s "ufo switch" 2
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, "ufo switch"=1, ufo=3}] at @s run scoreboard players set @s "ufo switch" 2
execute as @s[type=brr:plate, tag=ufo, scores={"event building"=-2, "ufo animation"=1}] at @s run scoreboard players set @s "ufo switch" 3
execute as @s[type=brr:plate, tag=ufo, scores={"event building"=-1, "ufo animation"=61..}] at @s run scoreboard players set @s "ufo switch" 4
execute as @s[type=brr:plate, tag=ufo, scores={"event building"=0, "ufo animation"=94..}] at @s run scoreboard players set @s "ufo switch" 3
execute as @s[type=brr:plate, tag=ufo, scores={"event building"=1, "ufo animation"=55..}] at @s run scoreboard players set @s "ufo switch" 3
execute as @s[type=brr:plate, tag=ufo, scores={"event building"=2.., "ufo animation"=55..}] at @s run scoreboard players set @s "ufo switch" 3
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=3, "ufo floor"=52..}] at @s run scoreboard players set @s "ufo switch" 4
# end
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=4, ufo=..-1, rotation=0}] at @s run structure load E0M0 ~-4 ~-33 ~-4
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=4, ufo=..-1, rotation=1}] at @s run structure load E0M0 ~-5 ~-33 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=4, ufo=..-1, rotation=2}] at @s run structure load E0M0 ~-4 ~-33 ~-5 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=4, ufo=..-1, rotation=3}] at @s run structure load E0M0 ~-4 ~-33 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=4, ufo=..-1}] at @s run kill @s
# = hit boxes =
# pull
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, "ufo switch"=2..3}] at @s run effect @a[tag=game, x=~-4, y=~-10, z=~-4, dx=8, dy=30, dz=8] levitation 1 3 true
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, "ufo switch"=2..3}] at @s run effect @a[tag=game, x=~-4, y=~-10, z=~-4, dx=8, dy=30, dz=8] levitation 1 10 true
# kill
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, "ufo switch"=2..3}] at @s run kill @a[tag=game, x=~-4, y=~16, z=~-4, dx=8, dy=5, dz=8]
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, "ufo switch"=2..3}] at @s run tag @a[tag=game, x=~-3, y=~16, z=~-3, dx=7, dy=5, dz=7] add blackhole1
# = animations =
# - connected -
# event building
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=2, "event building"=-1}] at @s run function events/ufo_animations/bank
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=2, "event building"=0}] at @s run function events/ufo_animations/house
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=2, "event building"=1}] at @s run function events/ufo_animations/shop
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=2, "event building"=2}] at @s run function events/ufo_animations/igloo
# floor
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=3}] at @s run function events/ufo_animations/floor
# particle
execute as @s[type=brr:plate, tag=ufo, scores={"ufo switch"=2}] at @s run particle brr:alien_floor ~ ~-1 ~
# - ufo -
# normal rotation
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=0}] at @s run structure load E11M0 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=1}] at @s run structure load E11M1 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=3}] at @s run structure load E11M2 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=5}] at @s run structure load E11M3 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=7}] at @s run structure load E11M4 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=9}] at @s run structure load E11M5 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=11}] at @s run structure load E11M6 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=13}] at @s run structure load E11M7 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=15}] at @s run structure load E11M8 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=17}] at @s run structure load E11M9 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=19}] at @s run structure load E11M10 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=21}] at @s run structure load E11M11 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=23}] at @s run structure load E11M12 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=25}] at @s run structure load E11M13 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=27}] at @s run structure load E11M14 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=29}] at @s run structure load E11M15 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=31}] at @s run structure load E11M16 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=33}] at @s run structure load E11M17 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=35}] at @s run structure load E11M18 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=37}] at @s run structure load E11M19 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=39}] at @s run structure load E11M20 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=41}] at @s run structure load E11M21 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=43}] at @s run structure load E11M22 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=45}] at @s run structure load E11M23 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=47}] at @s run structure load E11M24 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=49}] at @s run structure load E11M25 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=51}] at @s run structure load E11M26 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=53}] at @s run structure load E11M27 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=55}] at @s run structure load E11M28 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=57}] at @s run structure load E11M29 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=59}] at @s run structure load E11M30 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=61}] at @s run structure load E11M31 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=63}] at @s run structure load E11M32 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=65}] at @s run structure load E11M33 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=67}] at @s run structure load E11M34 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=69}] at @s run structure load E11M35 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=71}] at @s run structure load E11M36 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=0, ufo=73}] at @s run structure load E11M37 ~-4 ~16 ~-5
# rotation 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=0}] at @s run structure load E11M0 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=1}] at @s run structure load E11M1 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=3}] at @s run structure load E11M2 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=5}] at @s run structure load E11M3 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=7}] at @s run structure load E11M4 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=9}] at @s run structure load E11M5 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=11}] at @s run structure load E11M6 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=13}] at @s run structure load E11M7 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=15}] at @s run structure load E11M8 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=17}] at @s run structure load E11M9 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=19}] at @s run structure load E11M10 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=21}] at @s run structure load E11M11 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=23}] at @s run structure load E11M12 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=25}] at @s run structure load E11M13 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=27}] at @s run structure load E11M14 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=29}] at @s run structure load E11M15 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=31}] at @s run structure load E11M16 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=33}] at @s run structure load E11M17 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=35}] at @s run structure load E11M18 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=37}] at @s run structure load E11M19 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=39}] at @s run structure load E11M20 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=41}] at @s run structure load E11M21 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=43}] at @s run structure load E11M22 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=45}] at @s run structure load E11M23 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=47}] at @s run structure load E11M24 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=49}] at @s run structure load E11M25 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=51}] at @s run structure load E11M26 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=53}] at @s run structure load E11M27 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=55}] at @s run structure load E11M28 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=57}] at @s run structure load E11M29 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=59}] at @s run structure load E11M30 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=61}] at @s run structure load E11M31 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=63}] at @s run structure load E11M32 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=65}] at @s run structure load E11M33 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=67}] at @s run structure load E11M34 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=69}] at @s run structure load E11M35 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=71}] at @s run structure load E11M36 ~-4 ~16 ~-4 90_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=1, ufo=73}] at @s run structure load E11M37 ~-4 ~16 ~-4 90_degrees
# rotation 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=0}] at @s run structure load E11M0 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=1}] at @s run structure load E11M1 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=3}] at @s run structure load E11M2 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=5}] at @s run structure load E11M3 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=7}] at @s run structure load E11M4 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=9}] at @s run structure load E11M5 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=11}] at @s run structure load E11M6 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=13}] at @s run structure load E11M7 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=15}] at @s run structure load E11M8 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=17}] at @s run structure load E11M9 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=19}] at @s run structure load E11M10 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=21}] at @s run structure load E11M11 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=23}] at @s run structure load E11M12 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=25}] at @s run structure load E11M13 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=27}] at @s run structure load E11M14 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=29}] at @s run structure load E11M15 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=31}] at @s run structure load E11M16 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=33}] at @s run structure load E11M17 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=35}] at @s run structure load E11M18 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=37}] at @s run structure load E11M19 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=39}] at @s run structure load E11M20 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=41}] at @s run structure load E11M21 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=43}] at @s run structure load E11M22 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=45}] at @s run structure load E11M23 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=47}] at @s run structure load E11M24 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=49}] at @s run structure load E11M25 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=51}] at @s run structure load E11M26 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=53}] at @s run structure load E11M27 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=55}] at @s run structure load E11M28 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=57}] at @s run structure load E11M29 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=59}] at @s run structure load E11M30 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=61}] at @s run structure load E11M31 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=63}] at @s run structure load E11M32 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=65}] at @s run structure load E11M33 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=67}] at @s run structure load E11M34 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=69}] at @s run structure load E11M35 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=71}] at @s run structure load E11M36 ~-4 ~16 ~-4 180_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=2, ufo=73}] at @s run structure load E11M37 ~-4 ~16 ~-4 180_degrees
# rotation 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=0}] at @s run structure load E11M0 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=1}] at @s run structure load E11M1 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=3}] at @s run structure load E11M2 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=5}] at @s run structure load E11M3 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=7}] at @s run structure load E11M4 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=9}] at @s run structure load E11M5 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=11}] at @s run structure load E11M6 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=13}] at @s run structure load E11M7 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=15}] at @s run structure load E11M8 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=17}] at @s run structure load E11M9 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=19}] at @s run structure load E11M10 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=21}] at @s run structure load E11M11 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=23}] at @s run structure load E11M12 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=25}] at @s run structure load E11M13 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=27}] at @s run structure load E11M14 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=29}] at @s run structure load E11M15 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=31}] at @s run structure load E11M16 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=33}] at @s run structure load E11M17 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=35}] at @s run structure load E11M18 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=37}] at @s run structure load E11M19 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=39}] at @s run structure load E11M20 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=41}] at @s run structure load E11M21 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=43}] at @s run structure load E11M22 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=45}] at @s run structure load E11M23 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=47}] at @s run structure load E11M24 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=49}] at @s run structure load E11M25 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=51}] at @s run structure load E11M26 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=53}] at @s run structure load E11M27 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=55}] at @s run structure load E11M28 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=57}] at @s run structure load E11M29 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=59}] at @s run structure load E11M30 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=61}] at @s run structure load E11M31 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=63}] at @s run structure load E11M32 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=65}] at @s run structure load E11M33 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=67}] at @s run structure load E11M34 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=69}] at @s run structure load E11M35 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=71}] at @s run structure load E11M36 ~-5 ~16 ~-4 270_degrees
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, rotation=3, ufo=73}] at @s run structure load E11M37 ~-5 ~16 ~-4 270_degrees
# - black hole -
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, ufo=0}] at @s run structure load E11M0 ~-4 ~16 ~-5
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, ufo=1}] at @s run structure load E34M1 ~-2 ~16 ~-2
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, ufo=3}] at @s run structure load E34M2 ~-2 ~16 ~-2
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, ufo=5}] at @s run structure load E34M3 ~-2 ~16 ~-2
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, ufo=7}] at @s run structure load E34M4 ~-2 ~16 ~-2
# loop animation
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=0, "ufo switch"=2..3, ufo=75..}] at @s run scoreboard players set @s ufo 70
execute as @s[type=brr:plate, tag=ufo, scores={"black hole"=1, "ufo switch"=2..3, ufo=9..}] at @s run scoreboard players set @s ufo 4