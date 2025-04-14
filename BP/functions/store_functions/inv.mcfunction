# = start =
clear @s[tag=shop]
execute as @s[tag=shop] at @s run function lobby_functions/items
replaceitem entity @s slot.hotbar 2 brr:nothing 1 0
replaceitem entity @s slot.hotbar 3 brr:nothing 1 0
replaceitem entity @s slot.hotbar 4 brr:nothing 1 0
# = colors =
execute as @s[tag=shop, scores={store_page=1, shop=0}] at @s run give @s brr:color_red 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=blue, scores={store_page=1, shop=0}] at @s run give @s brr:color_blue 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=pink, scores={store_page=1, shop=0}] at @s run give @s brr:color_pink 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=green, scores={store_page=1, shop=0}] at @s run give @s brr:color_green 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=yellow, scores={store_page=1, shop=0}] at @s run give @s brr:color_yellow 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=orange, scores={store_page=1, shop=0}] at @s run give @s brr:color_orange 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=purple, scores={store_page=1, shop=0}] at @s run give @s brr:color_purple 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=white, scores={store_page=1, shop=0}] at @s run give @s brr:color_white 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=black, scores={store_page=1, shop=0}] at @s run give @s brr:color_black 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=gray, scores={store_page=1, shop=0}] at @s run give @s brr:color_gray 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=magenta, scores={store_page=1, shop=0}] at @s run give @s brr:color_magenta 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=light_blue, scores={store_page=1, shop=0}] at @s run give @s brr:color_light_blue 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=rgb, scores={store_page=1, shop=0}] at @s run give @s brr:color_rgb 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
# = ornaments =
execute as @s[tag=shop, tag=pot, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_pot 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=lamp, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_lamp 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=crane, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_crane 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=farm_bales, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_farm_bales 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=tree, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_tree 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=carpet, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_carpet 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=plush, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_bonnie_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=ring, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_ring 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=alastor, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_alastor_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=springtrap, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_springtrap_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=seal, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_seal_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=construction, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_construction_site 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=yeeter, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_yeeter 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=bushes, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_bushes 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=snowy, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_snowy 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=banana, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_banana 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=sans, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_sans_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=fan, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_fan 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=mcdonalds, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_mcdonalds_sign 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=horns, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_horns 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=melodie, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_melodie_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=janet, scores={store_page=2, shop=0}] at @s run give @s brr:ornament_janet_plush 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
# = particles =
execute as @s[tag=shop, tag=purple_ring, scores={store_page=3, shop=0}] at @s run give @s brr:particle_purple_ring 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=blue_flame, scores={store_page=3, shop=0}] at @s run give @s brr:particle_blue_flame 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=green_sphere, scores={store_page=3, shop=0}] at @s run give @s brr:particle_green_sphere 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=red_trail, scores={store_page=3, shop=0}] at @s run give @s brr:particle_red_trail 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=fire_ring, scores={store_page=3, shop=0}] at @s run give @s brr:particle_fire_ring 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
# = tags =
execute as @s[tag=shop, tag=tag_lover1, scores={store_page=4, shop=0}] at @s run give @s brr:tag_lover 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=tag_og1, scores={store_page=4, shop=0}] at @s run give @s brr:tag_og 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=tag_winner1, scores={store_page=4, shop=0}] at @s run give @s brr:tag_winner 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=tag_bunny1, scores={store_page=4, shop=0}] at @s run give @s brr:tag_bunny 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
execute as @s[tag=shop, tag=tag_cat1, scores={store_page=4, shop=0}] at @s run give @s brr:tag_cat 1 0 {"minecraft:item_lock":{"mode": "lock_in_inventory"}}
# = end =
execute as @s[tag=shop, scores={shop=0}] at @s run clear @s brr:nothing