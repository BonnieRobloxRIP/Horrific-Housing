# item used
execute as @s[tag=shop] at @s run scoreboard players remove @s transition 1
execute as @s[tag=shop] at @s run scoreboard players reset @s shop
execute as @s[tag=shop] at @s run inputpermission set @s camera enabled
execute as @s[tag=shop] at @s run inputpermission set @s movement enabled
execute as @s[tag=shop] at @s run clear @s
execute as @s[tag=shop] at @s run camera @s set minecraft:free ease 2 out_quad pos 0 3 -2 facing 0 3 10
execute as @s[tag=inv] at @s run structure load E0M0 47 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv2] at @s run structure load E0M0 57 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv3] at @s run structure load E0M0 67 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv4] at @s run structure load E0M0 77 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv5] at @s run structure load E0M0 87 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv6] at @s run structure load E0M0 97 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv7] at @s run structure load E0M0 107 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv8] at @s run structure load E0M0 117 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv9] at @s run structure load E0M0 127 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv10] at @s run structure load E0M0 137 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv11] at @s run structure load E0M0 147 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv12] at @s run structure load E0M0 157 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv13] at @s run structure load E0M0 167 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv14] at @s run structure load E0M0 177 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv15] at @s run structure load E0M0 187 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv16] at @s run structure load E0M0 197 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv17] at @s run structure load E0M0 207 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv18] at @s run structure load E0M0 217 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv19] at @s run structure load E0M0 227 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv20] at @s run structure load E0M0 237 -10 -39 0_degrees none block_by_block 2
execute as @e[type=brr:plate, name=inv] if entity @s[type=player, tag=inv] run structure load E0M0 ~-4 ~-10 ~-4 0_degrees none block_by_block 2
execute as @s[tag=inv] at @s run kill @e[type=brr:plate, name=inv]
execute as @s[tag=shop] at @s run tag @s remove inv
execute as @s[tag=shop] at @s run tag @s remove inv2
execute as @s[tag=shop] at @s run tag @s remove inv3
execute as @s[tag=shop] at @s run tag @s remove inv4
execute as @s[tag=shop] at @s run tag @s remove inv5
execute as @s[tag=shop] at @s run tag @s remove inv6
execute as @s[tag=shop] at @s run tag @s remove inv7
execute as @s[tag=shop] at @s run tag @s remove inv8
execute as @s[tag=shop] at @s run tag @s remove inv9
execute as @s[tag=shop] at @s run tag @s remove inv10
execute as @s[tag=shop] at @s run tag @s remove inv11
execute as @s[tag=shop] at @s run tag @s remove inv12
execute as @s[tag=shop] at @s run tag @s remove inv13
execute as @s[tag=shop] at @s run tag @s remove inv14
execute as @s[tag=shop] at @s run tag @s remove inv15
execute as @s[tag=shop] at @s run tag @s remove inv16
execute as @s[tag=shop] at @s run tag @s remove inv17
execute as @s[tag=shop] at @s run tag @s remove inv18
execute as @s[tag=shop] at @s run tag @s remove inv19
execute as @s[tag=shop] at @s run tag @s remove inv20
tag @s remove shop