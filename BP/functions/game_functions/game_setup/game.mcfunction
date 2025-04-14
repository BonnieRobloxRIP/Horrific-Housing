setblock 0 -1 -1 air 
inputpermission set @a[tag=!stop] camera disabled
inputpermission set @a[tag=!stop] movement disabled
clear @a[tag=!stop]
scoreboard players reset @a[tag=!stop] transition
gamemode a @a[tag=!stop]
execute as @s[tag=inv, tag=!stop] at @s run structure load E0M0 47 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv2, tag=!stop] at @s run structure load E0M0 57 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv3, tag=!stop] at @s run structure load E0M0 67 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv4, tag=!stop] at @s run structure load E0M0 77 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv5, tag=!stop] at @s run structure load E0M0 87 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv6, tag=!stop] at @s run structure load E0M0 97 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv7, tag=!stop] at @s run structure load E0M0 107 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv8, tag=!stop] at @s run structure load E0M0 117 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv9, tag=!stop] at @s run structure load E0M0 127 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv10, tag=!stop] at @s run structure load E0M0 137 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv11, tag=!stop] at @s run structure load E0M0 147 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv12, tag=!stop] at @s run structure load E0M0 157 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv13, tag=!stop] at @s run structure load E0M0 167 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv14, tag=!stop] at @s run structure load E0M0 177 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv15, tag=!stop] at @s run structure load E0M0 187 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv16, tag=!stop] at @s run structure load E0M0 197 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv17, tag=!stop] at @s run structure load E0M0 207 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv18, tag=!stop] at @s run structure load E0M0 217 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv19, tag=!stop] at @s run structure load E0M0 227 -10 -39 0_degrees none block_by_block 2
execute as @s[tag=inv20, tag=!stop] at @s run structure load E0M0 237 -10 -39 0_degrees none block_by_block 2
tag @a[tag=lobby, tag=!stop] remove shop
tag @a[tag=lobby, tag=!stop] remove inv
tag @a[tag=lobby, tag=!stop] remove inv2
tag @a[tag=lobby, tag=!stop] remove inv3
tag @a[tag=lobby, tag=!stop] remove inv4
tag @a[tag=lobby, tag=!stop] remove inv5
tag @a[tag=lobby, tag=!stop] remove inv6
tag @a[tag=lobby, tag=!stop] remove inv7
tag @a[tag=lobby, tag=!stop] remove inv8
tag @a[tag=lobby, tag=!stop] remove inv9
tag @a[tag=lobby, tag=!stop] remove inv10
tag @a[tag=lobby, tag=!stop] remove inv11
tag @a[tag=lobby, tag=!stop] remove inv12
tag @a[tag=lobby, tag=!stop] remove inv13
tag @a[tag=lobby, tag=!stop] remove inv14
tag @a[tag=lobby, tag=!stop] remove inv15
tag @a[tag=lobby, tag=!stop] remove inv16
tag @a[tag=lobby, tag=!stop] remove inv17
tag @a[tag=lobby, tag=!stop] remove inv18
tag @a[tag=lobby, tag=!stop] remove inv19
tag @a[tag=lobby, tag=!stop] remove inv20
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house1
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house2
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house3
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house4
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house5
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house6
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house7
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house8
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house9
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house10
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house11
tag @r[tag=lobby, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12, tag=!stop] add house12
tag @a[tag=lobby, tag=!stop] add game
tag @a[tag=game] remove lobby
camera @a[tag=game] set minecraft:free ease 5 out_quint pos -20 8 10 facing 0 1 31
