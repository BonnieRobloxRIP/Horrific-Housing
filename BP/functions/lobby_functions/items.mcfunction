# lobby = player
replaceitem entity @a[tag=lobby, tag=!host, tag=!shop, scores={transition=0, vote=!0}] slot.hotbar 0 brr:hello 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=!host, tag=!shop, scores={transition=0}] slot.hotbar 7 brr:spectate 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=!host, tag=!shop, scores={transition=0}] slot.hotbar 8 brr:store 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
# lobby = host
replaceitem entity @a[tag=lobby, tag=host, tag=!shop, scores={transition=0}] slot.hotbar 5 brr:spectate 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=host, tag=!shop, scores={transition=0}] slot.hotbar 6 brr:store 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=host, tag=!shop, scores={transition=0}] slot.hotbar 7 brr:host_panel 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
execute if score lever lobby matches 0 run replaceitem entity @a[tag=lobby, tag=host, tag=!shop, scores={transition=0}] slot.hotbar 8 brr:game_start 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
execute if score lever lobby matches 1 run replaceitem entity @a[tag=lobby, tag=host, tag=!shop, scores={transition=0}] slot.hotbar 8 brr:game_stop 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
# shop = shopping
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40}] slot.hotbar 0 brr:home_page 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=1}] slot.hotbar 1 brr:inventory 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=0}] slot.hotbar 1 brr:store 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=1}] slot.hotbar 4 brr:store_colors1 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=1}] slot.hotbar 5 brr:store_ornaments1 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=1}] slot.hotbar 6 brr:store_particles1 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=1}] slot.hotbar 7 brr:store_tags1 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=1}] slot.hotbar 8 brr:store_perks1 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
# shop = inventory
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=0}] slot.hotbar 5 brr:store_colors 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=0}] slot.hotbar 6 brr:store_ornaments 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=0}] slot.hotbar 7 brr:store_particles 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
replaceitem entity @a[tag=lobby, tag=shop, tag=!color, tag=!ornament, tag=!particle, tag=!tag, scores={transition=40, shop=0}] slot.hotbar 8 brr:store_tags 1 0 {"minecraft:item_lock":{"mode": "lock_in_slot"}}
# vote - slot 1
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 1 run replaceitem entity @s slot.hotbar 0 brr:vote_classic 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 2 run replaceitem entity @s slot.hotbar 0 brr:vote_blast 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 3 run replaceitem entity @s slot.hotbar 0 brr:vote_rapid 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 4 run replaceitem entity @s slot.hotbar 0 brr:vote_stud 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 5 run replaceitem entity @s slot.hotbar 0 brr:vote_oneplate 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 6 run replaceitem entity @s slot.hotbar 0 brr:vote_scattered 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 7 run replaceitem entity @s slot.hotbar 0 brr:vote_lava 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 8 run replaceitem entity @s slot.hotbar 0 brr:vote_spleef 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 9 run replaceitem entity @s slot.hotbar 0 brr:vote_line 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 10 run replaceitem entity @s slot.hotbar 0 brr:vote_town 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 11 run replaceitem entity @s slot.hotbar 0 brr:vote_ring 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 12 run replaceitem entity @s slot.hotbar 0 brr:vote_sweeper 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 13 run replaceitem entity @s slot.hotbar 0 brr:vote_twoplates 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 14 run replaceitem entity @s slot.hotbar 0 brr:vote_murdertown 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 15 run replaceitem entity @s slot.hotbar 0 brr:vote_slowed_down 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 16 run replaceitem entity @s slot.hotbar 0 brr:vote_gear 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 17 run replaceitem entity @s slot.hotbar 0 brr:vote_hotel 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 18 run replaceitem entity @s slot.hotbar 0 brr:vote_islands 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 19 run replaceitem entity @s slot.hotbar 0 brr:vote_heist 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm1 vote matches 20 run replaceitem entity @s slot.hotbar 0 brr:vote_stack 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
# vote - slot 2
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 1 run replaceitem entity @s slot.hotbar 1 brr:vote_classic 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 2 run replaceitem entity @s slot.hotbar 1 brr:vote_blast 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 3 run replaceitem entity @s slot.hotbar 1 brr:vote_rapid 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 4 run replaceitem entity @s slot.hotbar 1 brr:vote_stud 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 5 run replaceitem entity @s slot.hotbar 1 brr:vote_oneplate 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 6 run replaceitem entity @s slot.hotbar 1 brr:vote_scattered 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 7 run replaceitem entity @s slot.hotbar 1 brr:vote_lava 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 8 run replaceitem entity @s slot.hotbar 1 brr:vote_spleef 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 9 run replaceitem entity @s slot.hotbar 1 brr:vote_line 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 10 run replaceitem entity @s slot.hotbar 1 brr:vote_town 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 11 run replaceitem entity @s slot.hotbar 1 brr:vote_ring 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 12 run replaceitem entity @s slot.hotbar 1 brr:vote_sweeper 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 13 run replaceitem entity @s slot.hotbar 1 brr:vote_twoplates 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 14 run replaceitem entity @s slot.hotbar 1 brr:vote_murdertown 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 15 run replaceitem entity @s slot.hotbar 1 brr:vote_slowed_down 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 16 run replaceitem entity @s slot.hotbar 1 brr:vote_gear 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 17 run replaceitem entity @s slot.hotbar 1 brr:vote_hotel 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 18 run replaceitem entity @s slot.hotbar 1 brr:vote_islands 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 19 run replaceitem entity @s slot.hotbar 1 brr:vote_heist 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm2 vote matches 20 run replaceitem entity @s slot.hotbar 1 brr:vote_stack 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
# vote - slot 3
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 1 run replaceitem entity @s slot.hotbar 2 brr:vote_classic 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 2 run replaceitem entity @s slot.hotbar 2 brr:vote_blast 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 3 run replaceitem entity @s slot.hotbar 2 brr:vote_rapid 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 4 run replaceitem entity @s slot.hotbar 2 brr:vote_stud 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 5 run replaceitem entity @s slot.hotbar 2 brr:vote_oneplate 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 6 run replaceitem entity @s slot.hotbar 2 brr:vote_scattered 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 7 run replaceitem entity @s slot.hotbar 2 brr:vote_lava 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 8 run replaceitem entity @s slot.hotbar 2 brr:vote_spleef 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 9 run replaceitem entity @s slot.hotbar 2 brr:vote_line 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 10 run replaceitem entity @s slot.hotbar 2 brr:vote_town 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 11 run replaceitem entity @s slot.hotbar 2 brr:vote_ring 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 12 run replaceitem entity @s slot.hotbar 2 brr:vote_sweeper 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 13 run replaceitem entity @s slot.hotbar 2 brr:vote_twoplates 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 14 run replaceitem entity @s slot.hotbar 2 brr:vote_murdertown 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 15 run replaceitem entity @s slot.hotbar 2 brr:vote_slowed_down 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 16 run replaceitem entity @s slot.hotbar 2 brr:vote_gear 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 17 run replaceitem entity @s slot.hotbar 2 brr:vote_hotel 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 18 run replaceitem entity @s slot.hotbar 2 brr:vote_islands 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 19 run replaceitem entity @s slot.hotbar 2 brr:vote_heist 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
execute as @a[tag=lobby, tag=!shop, scores={vote=0}] at @s if score gm3 vote matches 20 run replaceitem entity @s slot.hotbar 2 brr:vote_stack 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}