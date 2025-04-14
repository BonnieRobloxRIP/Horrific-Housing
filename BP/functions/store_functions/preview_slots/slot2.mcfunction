# = scores =
# - plushies -
scoreboard players reset @a[tag=shop] plushies
scoreboard players add @a[tag=shop, scores={ornament_plush=1..}] plushies 1
scoreboard players add @a[tag=shop, scores={ornament_alastor=1..}] plushies 1
scoreboard players add @a[tag=shop, scores={ornament_springtrap=1..}] plushies 1
scoreboard players add @a[tag=shop, scores={ornament_seal=1..}] plushies 1
scoreboard players add @a[tag=shop, scores={ornament_sans=1..}] plushies 1
scoreboard players add @a[tag=shop, scores={ornament_melodie=1..}] plushies 1
scoreboard players add @a[tag=shop, scores={ornament_janet=1..}] plushies 1
# - ornaments -
scoreboard players reset @a[tag=shop] equipped
scoreboard players add @a[tag=shop, scores={ornament_pot=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_lamp=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_crane=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_farm_bales=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_tree=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_carpet=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_plush=1..}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_ring=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_alastor=1..}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_springtrap=1..}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_seal=1..}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_construction_site=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_yeeter=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_bushes=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_snowy=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_banana=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_sans=1..}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_fan=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_mcdonalds=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_horns=1}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_melodie=1..}] equipped 1
scoreboard players add @a[tag=shop, scores={ornament_janet=1..}] equipped 1
# = reset place before reload =
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv] run structure load E0M0 ~-4 ~-10 ~-4
# = colors =
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=0..}] run structure load RH ~-2 ~-1 ~-2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_horns=1}] run structure load HLO20 ~-2 ~3 ~-2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=1}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 blue_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=2}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 pink_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=3}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 green_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=4}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 yellow_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=5}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 orange_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=6}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 purple_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=7}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 white_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=8}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 black_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=9}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 gray_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=10}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 magenta_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=11}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 light_blue_concrete replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=12}]  run fill ~-2 ~ ~-2 ~4 ~6 ~5 brr:rgb_block replace concrete
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=1}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 blue_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=2}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 pink_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=3}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 green_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=4}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 yellow_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=5}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 orange_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=6}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 purple_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=7}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 white_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=8}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 black_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=9}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 gray_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=10}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 magenta_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=11}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 light_blue_stained_glass replace red_stained_glass
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={house_color=12}]  run fill ~-2 ~ ~-2 ~4 ~10 ~5 brr:rgb_block replace red_stained_glass
# = ornaments =
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_pot=1}] run structure load HLO1 ~-1 ~ ~2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_lamp=1}] run structure load HLO2 ~-2 ~ ~3
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_tree=1}] run structure load HLO5 ~1 ~ ~-3
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_carpet=1}] run structure load HLO6 ~-1 ~ ~2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_ring=1}] run structure load HLO8 ~-1 ~3 ~
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_yeeter=1}] run structure load HLO13 ~-1 ~ ~2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_banana=1}] run structure load HLO16 ~-2 ~3 ~-1
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_fan=1}] run structure load HLO18 ~-1 ~ ~2
# behind the snowy and bushes themes
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_snowy=1}] run structure load HLO15 ~-2 ~ ~-2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_bushes=1}] run structure load HLO14 ~-2 ~-4 ~-2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_farm_bales=1}] run structure load HLO4 ~-2 ~ ~1
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_construction_site=1}] run structure load HLO12 ~-2 ~ ~-2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_crane=1}] run structure load HLO3 ~-3 ~ ~2
execute as @e[type=brr:plate, name=inv, scores={inv=2}] at @s if entity @a[tag=inv, scores={ornament_mcdonalds=1}] run structure load HLO19 ~ ~ ~3
# = plushie ornament loading =
execute as @s at @s run function store_functions/preview_slots/plushies/plushie_loading2