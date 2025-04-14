# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add castle
execute as @e[tag=castle, type=brr:plate] at @s run scoreboard players set @s "event building" 11
# house default rotation
execute as @e[tag=castle, type=brr:plate, scores={rotation=0, upside=0}] at @s run structure load E42M1 ~-2 ~ ~-2 
execute as @e[tag=castle, type=brr:plate, scores={rotation=0, upside=1}] at @s run structure load E42M1a ~-2 ~-33 ~-2 
# house 90_rotation
execute as @e[tag=castle, type=brr:plate, scores={rotation=1, upside=0}] at @s run structure load E42M1 ~-3 ~ ~-2 90_degrees
execute as @e[tag=castle, type=brr:plate, scores={rotation=1, upside=1}] at @s run structure load E42M1a ~-3 ~-33 ~-2 90_degrees
# house 180_rotation
execute as @e[tag=castle, type=brr:plate, scores={rotation=2, upside=0}] at @s run structure load E42M1 ~-2 ~ ~-3 180_degrees
execute as @e[tag=castle, type=brr:plate, scores={rotation=2, upside=1}] at @s run structure load E42M1a ~-2 ~-33 ~-3 180_degrees  
# house 270_rotation
execute as @e[tag=castle, type=brr:plate, scores={rotation=3, upside=0}] at @s run structure load E42M1 ~-2 ~ ~-2 270_degrees
execute as @e[tag=castle, type=brr:plate, scores={rotation=3, upside=1}] at @s run structure load E42M1a ~-2 ~-33 ~-2 270_degrees
# colors
execute as @e[type=brr:plate, tag=castle, scores={house_color=1}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 blue_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=2}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 pink_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=3}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 green_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=4}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 yellow_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=5}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 orange_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=6}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 purple_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=7}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 white_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=8}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 black_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=9}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 gray_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=10}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 magenta_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=11}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 light_blue_concrete replace red_concrete
execute as @e[type=brr:plate, tag=castle, scores={house_color=12}] at @s run fill ~-4 ~-30 ~-4 ~4 ~15 ~4 brr:rgb_block replace red_concrete
# end
execute as @e[type=brr:plate, tag=castle] at @s run tag @s remove castle