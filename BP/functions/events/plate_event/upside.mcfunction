# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper, scores={upside=0}] at @s run tag @s add upside
execute as @e[type=brr:plate, tag=upside] at @s run scoreboard players set @s upside 1
# normal rotation
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=-2}] at @s run structure load E22M1 ~-4 ~-34 ~-4
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=-1}] at @s run structure load E4M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=0}] at @s run structure load UH ~-2 ~-33 ~-2
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=1}] at @s run structure load E5M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=2}] at @s run structure load E6M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=3}] at @s run structure load E16M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=6}] at @s run structure load E24M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=7}] at @s run structure load E0M0 ~-4 ~ ~-4
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=7}] at @s run structure load E31M1a ~-4 ~-29 ~-4
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=9}] at @s run structure load E40M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=10}] at @s run structure load E42M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "event building"=11}] at @s run structure load E50M1a ~-2 ~-33 ~-2 
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "security wall"=1}] at @s run structure load E0M0 ~-4 ~ ~-4
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "security wall"=1}] at @s run structure load E8M1a ~-3 ~-13 ~-3
# 90_degrees rotation
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=-2}] at @s run structure load E22M1 ~-5 ~-34 ~-4 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=-1}] at @s run structure load E4M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=0}] at @s run structure load UH ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=1}] at @s run structure load E5M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=2}] at @s run structure load E6M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=3}] at @s run structure load E16M1a ~-4 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=6}] at @s run structure load E24M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=7}] at @s run structure load E0M0 ~-5 ~ ~-4 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=7}] at @s run structure load E31M1a ~-5 ~-29 ~-4 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=9}] at @s run structure load E40M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=10}] at @s run structure load E42M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "event building"=11}] at @s run structure load E50M1a ~-3 ~-33 ~-2 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "security wall"=1}] at @s run structure load E0M0 ~-5 ~ ~-4 90_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=1, "security wall"=1}] at @s run structure load E8M1a ~-4 ~-13 ~-3 90_degrees
# 180_degrees rotation
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=-2}] at @s run structure load E22M1 ~-4 ~-34 ~-5 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=-1}] at @s run structure load E4M1a ~-2 ~-33 ~-3 180_degrees 
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=0}] at @s run structure load UH ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=1}] at @s run structure load E5M1a ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=2}] at @s run structure load E6M1a ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=3}] at @s run structure load E16M1a ~-2 ~-33 ~-4 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=6}] at @s run structure load E24M1a ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=7}] at @s run structure load E0M0 ~-4 ~ ~-5 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=7}] at @s run structure load E31M1a ~-4 ~-29 ~-5 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=9}] at @s run structure load E40M1a ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=10}] at @s run structure load E42M1a ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "event building"=11}] at @s run structure load E50M1a ~-2 ~-33 ~-3 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "security wall"=1}] at @s run structure load E0M0 ~-4 ~ ~-5 180_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=2, "security wall"=1}] at @s run structure load E8M1a ~-3 ~-13 ~-4 180_degrees
# 270_degrees rotation
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=-2}] at @s run structure load E22M1 ~-4 ~-34 ~-4 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=-1}] at @s run structure load E4M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=0}] at @s run structure load UH ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=1}] at @s run structure load E5M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=2}] at @s run structure load E6M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=3}] at @s run structure load E16M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=6}] at @s run structure load E24M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=7}] at @s run structure load E0M0 ~-4 ~ ~-4 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=7}] at @s run structure load E31M1a ~-4 ~-29 ~-4 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=9}] at @s run structure load E40M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=10}] at @s run structure load E42M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "event building"=11}] at @s run structure load E50M1a ~-2 ~-33 ~-2 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=0, "security wall"=1}] at @s run structure load E0M0 ~-4 ~ ~-4 270_degrees
execute as @e[type=brr:plate, tag=upside, scores={rotation=3, "security wall"=1}] at @s run structure load E8M1a ~-3 ~-13 ~-3 270_degrees
# colors 
execute as @e[type=brr:plate, tag=upside, scores={house_color=1}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 blue_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=2}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 pink_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=3}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 green_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=4}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 yellow_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=5}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 orange_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=6}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 purple_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=7}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 white_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=8}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 black_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=9}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 gray_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=10}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 magenta_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=11}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 light_blue_concrete replace red_concrete
execute as @e[type=brr:plate, tag=upside, scores={house_color=12}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 brr:rgb_block replace red_concrete
# end
execute as @e[type=brr:plate, tag=upside] at @s run tag @s remove upside