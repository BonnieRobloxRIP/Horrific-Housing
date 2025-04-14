# = store inventory loading =
execute as @e[type=brr:plate] at @s unless score gamemode game matches 4 if entity @p[tag=game, r=5] run tag @p[r=5] add house_data
execute as @e[type=brr:plate] at @s if score gamemode game matches 4 if entity @p[tag=game, r=5] run tag @a[tag=house1] add house_data
# - color scores -
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=0}, r=5] at @s run scoreboard players set @s house_color 0
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=1}, r=5] at @s run scoreboard players set @s house_color 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=2}, r=5] at @s run scoreboard players set @s house_color 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=3}, r=5] at @s run scoreboard players set @s house_color 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=4}, r=5] at @s run scoreboard players set @s house_color 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=5}, r=5] at @s run scoreboard players set @s house_color 5
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=6}, r=5] at @s run scoreboard players set @s house_color 6
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=7}, r=5] at @s run scoreboard players set @s house_color 7
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=8}, r=5] at @s run scoreboard players set @s house_color 8
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=9}, r=5] at @s run scoreboard players set @s house_color 9
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=10}, r=5] at @s run scoreboard players set @s house_color 10
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=11}, r=5] at @s run scoreboard players set @s house_color 11
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={house_color=12}, r=5] at @s run scoreboard players set @s house_color 12
# - color load -
execute as @e[type=brr:plate, scores={house_color=1}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 blue_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=2}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 pink_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=3}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 green_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=4}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 yellow_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=5}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 orange_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=6}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 purple_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=7}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 white_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=8}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 black_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=9}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 gray_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=10}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 magenta_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=11}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 light_blue_concrete replace red_concrete
execute as @e[type=brr:plate, scores={house_color=12}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 brr:rgb_block replace red_concrete
# - ornament scores -
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_pot=1}, r=5] at @s run scoreboard players set @s ornament_pot 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_lamp=1}, r=5] at @s run scoreboard players set @s ornament_lamp 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_crane=1}, r=5] at @s run scoreboard players set @s ornament_crane 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_farm_bales=1}, r=5] at @s run scoreboard players set @s ornament_farm_bales 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_tree=1}, r=5] at @s run scoreboard players set @s ornament_tree 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_carpet=1}, r=5] at @s run scoreboard players set @s ornament_carpet 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_plush=1}, r=5] at @s run scoreboard players set @s ornament_plush 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_plush=2}, r=5] at @s run scoreboard players set @s ornament_plush 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_plush=3}, r=5] at @s run scoreboard players set @s ornament_plush 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_plush=4}, r=5] at @s run scoreboard players set @s ornament_plush 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_ring=1}, r=5] at @s run scoreboard players set @s ornament_ring 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_alastor=1}, r=5] at @s run scoreboard players set @s ornament_alastor 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_alastor=2}, r=5] at @s run scoreboard players set @s ornament_alastor 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_alastor=3}, r=5] at @s run scoreboard players set @s ornament_alastor 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_alastor=4}, r=5] at @s run scoreboard players set @s ornament_alastor 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_springtrap=1}, r=5] at @s run scoreboard players set @s ornament_springtrap 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_springtrap=2}, r=5] at @s run scoreboard players set @s ornament_springtrap 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_springtrap=3}, r=5] at @s run scoreboard players set @s ornament_springtrap 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_springtrap=4}, r=5] at @s run scoreboard players set @s ornament_springtrap 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_seal=1}, r=5] at @s run scoreboard players set @s ornament_seal 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_seal=2}, r=5] at @s run scoreboard players set @s ornament_seal 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_seal=3}, r=5] at @s run scoreboard players set @s ornament_seal 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_seal=4}, r=5] at @s run scoreboard players set @s ornament_seal 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_construction_site=1}, r=5] at @s run scoreboard players set @s ornament_construction_site 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_yeeter=1}, r=5] at @s run scoreboard players set @s ornament_yeeter 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_bushes=1}, r=5] at @s run scoreboard players set @s ornament_bushes 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_snowy=1}, r=5] at @s run scoreboard players set @s ornament_snowy 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_banana=1}, r=5] at @s run scoreboard players set @s ornament_banana 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_sans=1}, r=5] at @s run scoreboard players set @s ornament_sans 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_sans=2}, r=5] at @s run scoreboard players set @s ornament_sans 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_sans=3}, r=5] at @s run scoreboard players set @s ornament_sans 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_sans=4}, r=5] at @s run scoreboard players set @s ornament_sans 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_fan=1}, r=5] at @s run scoreboard players set @s ornament_fan 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_mcdonalds=1}, r=5] at @s run scoreboard players set @s ornament_mcdonalds 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_horns=1}, r=5] at @s run scoreboard players set @s ornament_horns 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_melodie=1}, r=5] at @s run scoreboard players set @s ornament_melodie 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_melodie=2}, r=5] at @s run scoreboard players set @s ornament_melodie 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_melodie=3}, r=5] at @s run scoreboard players set @s ornament_melodie 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_melodie=4}, r=5] at @s run scoreboard players set @s ornament_melodie 4
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_janet=1}, r=5] at @s run scoreboard players set @s ornament_janet 1
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_janet=2}, r=5] at @s run scoreboard players set @s ornament_janet 2
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_janet=3}, r=5] at @s run scoreboard players set @s ornament_janet 3
execute as @e[type=brr:plate] at @s if entity @p[tag=house_data, scores={ornament_janet=4}, r=5] at @s run scoreboard players set @s ornament_janet 4
# - ornament load -
execute as @e[type=brr:plate, scores={ornament_pot=1}] at @s unless score gamemode game matches 3 run structure load HLO1 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={ornament_lamp=1}] at @s unless score gamemode game matches 3 run structure load HLO2 ^-2 ^ ^3
execute as @e[type=brr:plate, scores={ornament_farm_bales=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO4 ~-2 ~ ~1
execute as @e[type=brr:plate, scores={ornament_farm_bales=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO4 ~-2 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={ornament_farm_bales=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO4 ~-1 ~ ~-2 180_degrees
execute as @e[type=brr:plate, scores={ornament_farm_bales=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO4 ~1 ~ ~-1 270_degrees
execute as @e[type=brr:plate, scores={ornament_tree=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO5 ~1 ~ ~-3
execute as @e[type=brr:plate, scores={ornament_tree=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO5 ~1 ~ ~1 90_degrees
execute as @e[type=brr:plate, scores={ornament_tree=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO5 ~-3 ~ ~1 180_degrees
execute as @e[type=brr:plate, scores={ornament_tree=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO5 ~-3 ~ ~-3 270_degrees
execute as @e[type=brr:plate, scores={ornament_carpet=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO6 ~-1 ~ ~2
execute as @e[type=brr:plate, scores={ornament_carpet=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO6 ~-3 ~ ~-1 90_degrees
execute as @e[type=brr:plate, scores={ornament_carpet=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO6 ~-1 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={ornament_carpet=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO6 ~2 ~ ~-1 270_degrees
execute as @e[type=brr:plate, scores={ornament_ring=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO8 ~-1 ~3 ~
execute as @e[type=brr:plate, scores={ornament_ring=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO8 ~ ~3 ~-1 90_degrees
execute as @e[type=brr:plate, scores={ornament_ring=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO8 ~-1 ~3 ~ 180_degrees
execute as @e[type=brr:plate, scores={ornament_ring=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO8 ~ ~3 ~-1 270_degrees
execute as @e[type=brr:plate, scores={ornament_construction_site=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO12 ~-2 ~ ~-2
execute as @e[type=brr:plate, scores={ornament_construction_site=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO12 ~-3 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={ornament_construction_site=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO12 ~-2 ~ ~-2 180_degrees
execute as @e[type=brr:plate, scores={ornament_construction_site=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO12 ~-2 ~ ~-2 270_degrees
execute as @e[type=brr:plate, scores={ornament_yeeter=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO13 ~-1 ~ ~2
execute as @e[type=brr:plate, scores={ornament_yeeter=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO13 ~-3 ~ ~-1 90_degrees
execute as @e[type=brr:plate, scores={ornament_yeeter=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO13 ~1 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={ornament_yeeter=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO13 ~2 ~ ~1 270_degrees
execute as @e[type=brr:plate, scores={ornament_banana=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO16 ~-2 ~3 ~-1
execute as @e[type=brr:plate, scores={ornament_banana=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO16 ~1 ~3 ~-2 90_degrees
execute as @e[type=brr:plate, scores={ornament_banana=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO16 ~-2 ~3 ~1 180_degrees
execute as @e[type=brr:plate, scores={ornament_banana=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO16 ~-1 ~3 ~-2 270_degrees
execute as @e[type=brr:plate, scores={ornament_fan=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO18 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={ornament_fan=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO18 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={ornament_fan=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO18 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={ornament_fan=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO18 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={ornament_mcdonalds=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO19 ~ ~ ~3
execute as @e[type=brr:plate, scores={ornament_mcdonalds=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO19 ~-3 ~ ~ 90_degrees
execute as @e[type=brr:plate, scores={ornament_mcdonalds=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO19 ~-4 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={ornament_mcdonalds=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO19 ~3 ~ ~-4 270_degrees
execute as @e[type=brr:plate, scores={ornament_horns=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO20 ~-2 ~3 ~-2
execute as @e[type=brr:plate, scores={ornament_horns=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO20 ~ ~3 ~-2 90_degrees
execute as @e[type=brr:plate, scores={ornament_horns=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO20 ~-2 ~3 ~ 180_degrees
execute as @e[type=brr:plate, scores={ornament_horns=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO20 ~-2 ~3 ~-2 270_degrees

execute as @e[type=brr:plate, scores={ornament_snowy=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO15 ~-2 ~ ~-2
execute as @e[type=brr:plate, scores={ornament_snowy=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO15 ~-3 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={ornament_snowy=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO15 ~-2 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={ornament_snowy=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO15 ~-2 ~ ~-2 270_degrees
execute as @e[type=brr:plate, scores={ornament_bushes=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO14 ~-2 ~-4 ~-2
execute as @e[type=brr:plate, scores={ornament_bushes=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO14 ~-3 ~-4 ~-2 90_degrees
execute as @e[type=brr:plate, scores={ornament_bushes=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO14 ~-2 ~-4 ~-3 180_degrees
execute as @e[type=brr:plate, scores={ornament_bushes=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO14 ~-2 ~-4 ~-2 270_degrees
execute as @e[type=brr:plate, scores={ornament_crane=1, rotation=0}] at @s unless score gamemode game matches 3 run structure load HLO3 ~-3 ~ ~2
execute as @e[type=brr:plate, scores={ornament_crane=1, rotation=1}] at @s unless score gamemode game matches 3 run structure load HLO3 ~-4 ~ ~-3 90_degrees
execute as @e[type=brr:plate, scores={ornament_crane=1, rotation=2}] at @s unless score gamemode game matches 3 run structure load HLO3 ~-4 ~ ~-4 180_degrees
execute as @e[type=brr:plate, scores={ornament_crane=1, rotation=3}] at @s unless score gamemode game matches 3 run structure load HLO3 ~2 ~ ~-4 270_degrees
# - horns colour -
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=1}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 blue_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=2}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 pink_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=3}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 green_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=4}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 yellow_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=5}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 orange_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=6}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 purple_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=7}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 white_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=8}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 black_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=9}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 gray_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=10}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 magenta_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=11}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 light_blue_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, scores={ornament_horns=1, house_color=12}] at @s unless score gamemode game matches 3 run fill ~-3 ~-1 ~-3 ~3 ~15 ~3 brr:rgb_block replace red_stained_glass

# - plushies load -
execute as @e[type=brr:plate, scores={rotation=0, ornament_plush=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_plush=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_plush=2}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_plush=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_plush=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_plush=4}] at @s unless score gamemode game matches 3 run structure load HLO7 ^2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_alastor=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_alastor=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_alastor=2}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_alastor=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_alastor=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_alastor=4}] at @s unless score gamemode game matches 3 run structure load HLO9 ^2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_springtrap=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_springtrap=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_springtrap=2}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_springtrap=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_springtrap=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_springtrap=4}] at @s unless score gamemode game matches 3 run structure load HLO10 ^2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_seal=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_seal=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_seal=2}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_seal=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_seal=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_seal=4}] at @s unless score gamemode game matches 3 run structure load HLO11 ^2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_sans=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_sans=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_sans=2}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_sans=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_sans=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_sans=4}] at @s unless score gamemode game matches 3 run structure load HLO17 ^2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_melodie=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_melodie=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_melodie=2}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_melodie=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_melodie=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_melodie=4}] at @s unless score gamemode game matches 3 run structure load HLO21 ^2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_janet=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^ ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_janet=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^1 ^1
execute as @e[type=brr:plate, scores={rotation=0, ornament_janet=2}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_janet=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^ ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_janet=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^1 ^2
execute as @e[type=brr:plate, scores={rotation=0, ornament_janet=4}] at @s unless score gamemode game matches 3 run structure load HLO22 ^2 ^ ^1
# 90_degrees rotation plushies
execute as @e[type=brr:plate, scores={rotation=1, ornament_plush=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_plush=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_plush=2}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_plush=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_plush=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_plush=4}] at @s unless score gamemode game matches 3 run structure load HLO7 ^2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_alastor=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_alastor=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_alastor=2}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_alastor=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_alastor=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_alastor=4}] at @s unless score gamemode game matches 3 run structure load HLO9 ^2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_springtrap=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_springtrap=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_springtrap=2}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_springtrap=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_springtrap=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_springtrap=4}] at @s unless score gamemode game matches 3 run structure load HLO10 ^2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_seal=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_seal=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_seal=2}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_seal=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_seal=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_seal=4}] at @s unless score gamemode game matches 3 run structure load HLO11 ^2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_sans=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_sans=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_sans=2}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_sans=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_sans=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_sans=4}] at @s unless score gamemode game matches 3 run structure load HLO17 ^2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_melodie=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_melodie=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_melodie=2}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_melodie=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_melodie=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_melodie=4}] at @s unless score gamemode game matches 3 run structure load HLO21 ^2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_janet=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^ ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_janet=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^1 ^1 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_janet=2}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_janet=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^ ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_janet=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^1 ^2 90_degrees
execute as @e[type=brr:plate, scores={rotation=1, ornament_janet=4}] at @s unless score gamemode game matches 3 run structure load HLO22 ^2 ^ ^1 90_degrees
# 180_degrees rotation plushies
execute as @e[type=brr:plate, scores={rotation=2, ornament_plush=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_plush=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_plush=2}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_plush=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_plush=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_plush=4}] at @s unless score gamemode game matches 3 run structure load HLO7 ^2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_alastor=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_alastor=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_alastor=2}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_alastor=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_alastor=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_alastor=4}] at @s unless score gamemode game matches 3 run structure load HLO9 ^2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_springtrap=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_springtrap=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_springtrap=2}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_springtrap=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_springtrap=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_springtrap=4}] at @s unless score gamemode game matches 3 run structure load HLO10 ^2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_seal=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_seal=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_seal=2}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_seal=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_seal=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_seal=4}] at @s unless score gamemode game matches 3 run structure load HLO11 ^2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_sans=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_sans=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_sans=2}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_sans=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_sans=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_sans=4}] at @s unless score gamemode game matches 3 run structure load HLO17 ^2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_melodie=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_melodie=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_melodie=2}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_melodie=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_melodie=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_melodie=4}] at @s unless score gamemode game matches 3 run structure load HLO21 ^2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_janet=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^ ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_janet=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^1 ^1 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_janet=2}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_janet=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^ ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_janet=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^1 ^2 180_degrees
execute as @e[type=brr:plate, scores={rotation=2, ornament_janet=4}] at @s unless score gamemode game matches 3 run structure load HLO22 ^2 ^ ^1 180_degrees
# 270_degres rotation plushies
execute as @e[type=brr:plate, scores={rotation=3, ornament_plush=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_plush=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_plush=2}] at @s unless score gamemode game matches 3 run structure load HLO7 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_plush=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_plush=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO7 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_plush=4}] at @s unless score gamemode game matches 3 run structure load HLO7 ^2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_alastor=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_alastor=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_alastor=2}] at @s unless score gamemode game matches 3 run structure load HLO9 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_alastor=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_alastor=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO9 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_alastor=4}] at @s unless score gamemode game matches 3 run structure load HLO9 ^2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_springtrap=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_springtrap=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_springtrap=2}] at @s unless score gamemode game matches 3 run structure load HLO10 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_springtrap=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_springtrap=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO10 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_springtrap=4}] at @s unless score gamemode game matches 3 run structure load HLO10 ^2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_seal=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_seal=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_seal=2}] at @s unless score gamemode game matches 3 run structure load HLO11 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_seal=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_seal=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO11 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_seal=4}] at @s unless score gamemode game matches 3 run structure load HLO11 ^2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_sans=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_sans=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_sans=2}] at @s unless score gamemode game matches 3 run structure load HLO17 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_sans=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_sans=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO17 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_sans=4}] at @s unless score gamemode game matches 3 run structure load HLO17 ^2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_melodie=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_melodie=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_melodie=2}] at @s unless score gamemode game matches 3 run structure load HLO21 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_melodie=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_melodie=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO21 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_melodie=4}] at @s unless score gamemode game matches 3 run structure load HLO21 ^2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_janet=1, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^ ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_janet=1, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-2 ^1 ^1 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_janet=2}] at @s unless score gamemode game matches 3 run structure load HLO22 ^-1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_janet=3, ornament_farm_bales=0}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^ ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_janet=3, ornament_farm_bales=1}] at @s unless score gamemode game matches 3 run structure load HLO22 ^1 ^1 ^2 270_degrees
execute as @e[type=brr:plate, scores={rotation=3, ornament_janet=4}] at @s unless score gamemode game matches 3 run structure load HLO22 ^2 ^ ^1 270_degrees
# = end =
execute as @a[tag=house_data] at @s run tag @s remove house_data