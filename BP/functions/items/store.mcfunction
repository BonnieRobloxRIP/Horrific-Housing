# item used from shop
execute as @s[tag=shop] at @s run tellraw @s {"rawtext":[{"text": "Use one of the shop category items to get something random!"}]}
execute as @s[tag=shop] at @s run scoreboard players set @s shop 1
execute as @s[tag=shop] at @s run clear @s
# item used from lobby
execute as @s[tag=!shop] at @s if block ~ ~-2 ~ brr:spawn run tp @s 0 1 -2
execute as @s[tag=!shop] at @s run scoreboard players add @s transition 1
execute as @s[tag=!shop] at @s run scoreboard players set @s shop 1
execute as @s[tag=!shop] at @s run clear @s
execute as @s[tag=!shop] at @s run inputpermission set @s movement disabled
execute as @s[tag=!shop] at @s run inputpermission set @s camera disabled
execute as @s[tag=!shop] at @s if score preview shop matches 0 run tag @s add inv
execute as @s[tag=!shop] at @s if score preview shop matches 1 run tag @s add inv2
execute as @s[tag=!shop] at @s if score preview shop matches 2 run tag @s add inv3
execute as @s[tag=!shop] at @s if score preview shop matches 3 run tag @s add inv4
execute as @s[tag=!shop] at @s if score preview shop matches 4 run tag @s add inv5
execute as @s[tag=!shop] at @s if score preview shop matches 5 run tag @s add inv6
execute as @s[tag=!shop] at @s if score preview shop matches 6 run tag @s add inv7
execute as @s[tag=!shop] at @s if score preview shop matches 7 run tag @s add inv8
execute as @s[tag=!shop] at @s if score preview shop matches 8 run tag @s add inv9
execute as @s[tag=!shop] at @s if score preview shop matches 9 run tag @s add inv10
execute as @s[tag=!shop] at @s if score preview shop matches 10 run tag @s add inv11
execute as @s[tag=!shop] at @s if score preview shop matches 11 run tag @s add inv12
execute as @s[tag=!shop] at @s if score preview shop matches 12 run tag @s add inv13
execute as @s[tag=!shop] at @s if score preview shop matches 13 run tag @s add inv14
execute as @s[tag=!shop] at @s if score preview shop matches 14 run tag @s add inv15
execute as @s[tag=!shop] at @s if score preview shop matches 15 run tag @s add inv16
execute as @s[tag=!shop] at @s if score preview shop matches 16 run tag @s add inv17
execute as @s[tag=!shop] at @s if score preview shop matches 17 run tag @s add inv18
execute as @s[tag=!shop] at @s if score preview shop matches 18 run tag @s add inv19
execute as @s[tag=!shop] at @s if score preview shop matches 19 run tag @s add inv20
execute as @s[tag=inv] at @s run camera @s set minecraft:free ease 2 out_quad pos 51 4 -27 facing 51 4 -30
execute as @s[tag=inv2] at @s run camera @s set minecraft:free ease 2 out_quad pos 61 4 -27 facing 61 4 -30
execute as @s[tag=inv3] at @s run camera @s set minecraft:free ease 2 out_quad pos 71 4 -27 facing 71 4 -30
execute as @s[tag=inv4] at @s run camera @s set minecraft:free ease 2 out_quad pos 81 4 -27 facing 81 4 -30
execute as @s[tag=inv5] at @s run camera @s set minecraft:free ease 2 out_quad pos 91 4 -27 facing 91 4 -30
execute as @s[tag=inv6] at @s run camera @s set minecraft:free ease 2 out_quad pos 101 4 -27 facing 101 4 -30
execute as @s[tag=inv7] at @s run camera @s set minecraft:free ease 2 out_quad pos 111 4 -27 facing 111 4 -30
execute as @s[tag=inv8] at @s run camera @s set minecraft:free ease 2 out_quad pos 121 4 -27 facing 121 4 -30
execute as @s[tag=inv9] at @s run camera @s set minecraft:free ease 2 out_quad pos 131 4 -27 facing 131 4 -30
execute as @s[tag=inv10] at @s run camera @s set minecraft:free ease 2 out_quad pos 141 4 -27 facing 141 4 -30
execute as @s[tag=inv11] at @s run camera @s set minecraft:free ease 2 out_quad pos 151 4 -27 facing 151 4 -30
execute as @s[tag=inv12] at @s run camera @s set minecraft:free ease 2 out_quad pos 161 4 -27 facing 161 4 -30
execute as @s[tag=inv13] at @s run camera @s set minecraft:free ease 2 out_quad pos 171 4 -27 facing 171 4 -30
execute as @s[tag=inv14] at @s run camera @s set minecraft:free ease 2 out_quad pos 181 4 -27 facing 181 4 -30
execute as @s[tag=inv15] at @s run camera @s set minecraft:free ease 2 out_quad pos 191 4 -27 facing 191 4 -30
execute as @s[tag=inv16] at @s run camera @s set minecraft:free ease 2 out_quad pos 201 4 -27 facing 201 4 -30
execute as @s[tag=inv17] at @s run camera @s set minecraft:free ease 2 out_quad pos 211 4 -27 facing 211 4 -30
execute as @s[tag=inv18] at @s run camera @s set minecraft:free ease 2 out_quad pos 221 4 -27 facing 221 4 -30
execute as @s[tag=inv19] at @s run camera @s set minecraft:free ease 2 out_quad pos 231 4 -27 facing 231 4 -30
execute as @s[tag=inv20] at @s run camera @s set minecraft:free ease 2 out_quad pos 241 4 -27 facing 241 4 -30
execute as @s[tag=inv] at @s run summon brr:plate 51 3 -35 0 0 from_egg inv
execute as @s[tag=inv2] at @s run summon brr:plate 61 3 -35 0 0 from_egg inv
execute as @s[tag=inv3] at @s run summon brr:plate 71 3 -35 0 0 from_egg inv
execute as @s[tag=inv4] at @s run summon brr:plate 81 3 -35 0 0 from_egg inv
execute as @s[tag=inv5] at @s run summon brr:plate 91 3 -35 0 0 from_egg inv
execute as @s[tag=inv6] at @s run summon brr:plate 101 3 -35 0 0 from_egg inv
execute as @s[tag=inv7] at @s run summon brr:plate 111 3 -35 0 0 from_egg inv
execute as @s[tag=inv8] at @s run summon brr:plate 121 3 -35 0 0 from_egg inv
execute as @s[tag=inv9] at @s run summon brr:plate 131 3 -35 0 0 from_egg inv
execute as @s[tag=inv10] at @s run summon brr:plate 141 3 -35 0 0 from_egg inv
execute as @s[tag=inv11] at @s run summon brr:plate 151 3 -35 0 0 from_egg inv
execute as @s[tag=inv12] at @s run summon brr:plate 161 3 -35 0 0 from_egg inv
execute as @s[tag=inv13] at @s run summon brr:plate 171 3 -35 0 0 from_egg inv
execute as @s[tag=inv14] at @s run summon brr:plate 181 3 -35 0 0 from_egg inv
execute as @s[tag=inv15] at @s run summon brr:plate 191 3 -35 0 0 from_egg inv
execute as @s[tag=inv16] at @s run summon brr:plate 201 3 -35 0 0 from_egg inv
execute as @s[tag=inv17] at @s run summon brr:plate 211 3 -35 0 0 from_egg inv
execute as @s[tag=inv18] at @s run summon brr:plate 221 3 -35 0 0 from_egg inv
execute as @s[tag=inv19] at @s run summon brr:plate 231 3 -35 0 0 from_egg inv
execute as @s[tag=inv20] at @s run summon brr:plate 241 3 -35 0 0 from_egg inv
execute as @a[tag=inv] at @s positioned 51 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 1
execute as @a[tag=inv2] at @s positioned 61 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 2
execute as @a[tag=inv3] at @s positioned 71 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 3
execute as @a[tag=inv4] at @s positioned 81 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 4
execute as @a[tag=inv5] at @s positioned 91 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 5
execute as @a[tag=inv6] at @s positioned 101 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 6
execute as @a[tag=inv7] at @s positioned 111 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 7
execute as @a[tag=inv8] at @s positioned 121 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 8
execute as @a[tag=inv9] at @s positioned 131 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 9
execute as @a[tag=inv10] at @s positioned 141 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 10
execute as @a[tag=inv11] at @s positioned 151 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 11
execute as @a[tag=inv12] at @s positioned 161 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 12
execute as @a[tag=inv13] at @s positioned 171 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 13
execute as @a[tag=inv14] at @s positioned 181 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 14
execute as @a[tag=inv15] at @s positioned 191 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 15
execute as @a[tag=inv16] at @s positioned 201 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 16
execute as @a[tag=inv17] at @s positioned 211 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 17
execute as @a[tag=inv18] at @s positioned 221 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 18
execute as @a[tag=inv19] at @s positioned 231 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 19
execute as @a[tag=inv20] at @s positioned 241 3 -35 run scoreboard players set @e[type=brr:plate, r=2] inv 20
execute as @s[tag=!shop] at @s run tellraw @s {"rawtext":[{"text": "Use the items in your hotbar to navigate the menus. Drag the items from your inventory to your hotbar to equip or unequip. Exit with the `home page` item"}]}
execute as @s[tag=inv] at @s run function store_functions/preview_slots/slot1
execute as @s[tag=inv2] at @s run function store_functions/preview_slots/slot2
execute as @s[tag=inv3] at @s run function store_functions/preview_slots/slot3
execute as @s[tag=inv4] at @s run function store_functions/preview_slots/slot4
execute as @s[tag=inv5] at @s run function store_functions/preview_slots/slot5
execute as @s[tag=inv6] at @s run function store_functions/preview_slots/slot6
execute as @s[tag=inv7] at @s run function store_functions/preview_slots/slot7
execute as @s[tag=inv8] at @s run function store_functions/preview_slots/slot8
execute as @s[tag=inv9] at @s run function store_functions/preview_slots/slot9
execute as @s[tag=inv10] at @s run function store_functions/preview_slots/slot10
execute as @s[tag=inv11] at @s run function store_functions/preview_slots/slot11
execute as @s[tag=inv12] at @s run function store_functions/preview_slots/slot12
execute as @s[tag=inv13] at @s run function store_functions/preview_slots/slot13
execute as @s[tag=inv14] at @s run function store_functions/preview_slots/slot14
execute as @s[tag=inv15] at @s run function store_functions/preview_slots/slot15
execute as @s[tag=inv16] at @s run function store_functions/preview_slots/slot16
execute as @s[tag=inv17] at @s run function store_functions/preview_slots/slot17
execute as @s[tag=inv18] at @s run function store_functions/preview_slots/slot18
execute as @s[tag=inv19] at @s run function store_functions/preview_slots/slot19
execute as @s[tag=inv20] at @s run function store_functions/preview_slots/slot20
tag @s[tag=!shop] add shop