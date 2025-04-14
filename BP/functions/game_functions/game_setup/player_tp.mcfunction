# = player teleport to the correct plates =
# all gamemodes except stud
execute as @e[type=brr:plate, tag=plate01] at @s unless score gamemode game matches 3 run tp @a[tag=house1] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate02] at @s unless score gamemode game matches 3 run tp @a[tag=house2] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate03] at @s unless score gamemode game matches 3 run tp @a[tag=house3] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate04] at @s unless score gamemode game matches 3 run tp @a[tag=house4] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate05] at @s unless score gamemode game matches 3 run tp @a[tag=house5] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate06] at @s unless score gamemode game matches 3 run tp @a[tag=house6] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate07] at @s unless score gamemode game matches 3 run tp @a[tag=house7] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate08] at @s unless score gamemode game matches 3 run tp @a[tag=house8] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate09] at @s unless score gamemode game matches 3 run tp @a[tag=house9] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate10] at @s unless score gamemode game matches 3 run tp @a[tag=house10] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate11] at @s unless score gamemode game matches 3 run tp @a[tag=house11] ^ ^ ^2 facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate12] at @s unless score gamemode game matches 3 run tp @a[tag=house12] ^ ^ ^2 facing ^ ^ ^3
# stud
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 3 run tp @a[tag=house1] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate02] at @s if score gamemode game matches 3 run tp @a[tag=house2] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate03] at @s if score gamemode game matches 3 run tp @a[tag=house3] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate04] at @s if score gamemode game matches 3 run tp @a[tag=house4] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate05] at @s if score gamemode game matches 3 run tp @a[tag=house5] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate06] at @s if score gamemode game matches 3 run tp @a[tag=house6] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate07] at @s if score gamemode game matches 3 run tp @a[tag=house7] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate08] at @s if score gamemode game matches 3 run tp @a[tag=house8] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate09] at @s if score gamemode game matches 3 run tp @a[tag=house9] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate10] at @s if score gamemode game matches 3 run tp @a[tag=house10] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate11] at @s if score gamemode game matches 3 run tp @a[tag=house11] ^ ^ ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate12] at @s if score gamemode game matches 3 run tp @a[tag=house12] ^ ^ ^ facing ^ ^ ^3
# one plate
execute as @a[tag=game, tag=!house1] at @s if score gamemode game matches 4 run tp @s @r[type=brr:plate, name=!subspace, name=!blackhole, name=!inv]
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 4 run spreadplayers ~ ~ 0 10 @a[tag=game, tag=!house1]
# sweeper
execute as @e[type=brr:plate, tag=plate01] at @s if score gamemode game matches 11 run tp @a[tag=house1] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate02] at @s if score gamemode game matches 11 run tp @a[tag=house2] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate03] at @s if score gamemode game matches 11 run tp @a[tag=house3] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate04] at @s if score gamemode game matches 11 run tp @a[tag=house4] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate05] at @s if score gamemode game matches 11 run tp @a[tag=house5] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate06] at @s if score gamemode game matches 11 run tp @a[tag=house6] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate07] at @s if score gamemode game matches 11 run tp @a[tag=house7] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate08] at @s if score gamemode game matches 11 run tp @a[tag=house8] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate09] at @s if score gamemode game matches 11 run tp @a[tag=house9] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate10] at @s if score gamemode game matches 11 run tp @a[tag=house10] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate11] at @s if score gamemode game matches 11 run tp @a[tag=house11] ^ ^22 ^ facing ^ ^ ^3
execute as @e[type=brr:plate, tag=plate12] at @s if score gamemode game matches 11 run tp @a[tag=house12] ^ ^22 ^ facing ^ ^ ^3
# = restart players =
setblock 0 -1 -1 brr:spawn
inputpermission set @a[tag=game] camera enabled
inputpermission set @a[tag=game] movement enabled
execute as @a[tag=game, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12] at @s unless score gamemode game matches 11 run tp @s @r[type=brr:plate, name=!subspace, name=!blackhole, name=!inv]
execute as @a[tag=game, tag=!house1, tag=!house2, tag=!house3, tag=!house4, tag=!house5, tag=!house6, tag=!house7, tag=!house8, tag=!house9, tag=!house10, tag=!house11, tag=!house12] at @s if score gamemode game matches 11 run tp @s @r[tag=game] 
# = gamemode descriptions =
execute if score gamemode game matches 0 run tellraw @a[tag=game] {"rawtext":[{"text":"Classic: The classic game"}]}
execute if score gamemode game matches 1 run tellraw @a[tag=game] {"rawtext":[{"text":"Blast: Events happen 4x faster and are hidden from the chat. Anyone who's alive by the end of the timer wins. the game does not end when only 1 person is left"}]}
execute if score gamemode game matches 2 run tellraw @a[tag=game] {"rawtext":[{"text":"Rapid: Events happen 3x faster"}]}
execute if score gamemode game matches 3 run tellraw @a[tag=game] {"rawtext":[{"text":"Stud: Only 1 block of space avalible"}]}
execute if score gamemode game matches 4 run tellraw @a[tag=game] {"rawtext":[{"text":"One Plate: There's only 1 plate that everybody lives on"}]}
execute if score gamemode game matches 5 run tellraw @a[tag=game] {"rawtext":[{"text":"Scattered: Every single house spawns randomly in a 64x64 square"}]}
execute if score gamemode game matches 6 run tellraw @a[tag=game] {"rawtext":[{"text":"Lava: Whenever someone dies the lava level rises with 1 block"}]}
execute if score gamemode game matches 7 run tellraw @a[tag=game] {"rawtext":[{"text":"Spleef: Scattered but with the spleef blocks from the lobby"}]}
execute if score gamemode game matches 8 run tellraw @a[tag=game] {"rawtext":[{"text":"Line: Whenever someone dies their plate also dies"}]}
execute if score gamemode game matches 9 run tellraw @a[tag=game] {"rawtext":[{"text":"Town: It's a pretty town!"}]}
execute if score gamemode game matches 10 run tellraw @a[tag=game] {"rawtext":[{"text":"Ring: All plates are in a small circle forming a lovely neightbourhood :D"}]}
execute if score gamemode game matches 11 run tellraw @a[tag=game] {"rawtext":[{"text":"Sweeper: Avoid the spinning laser in the middle"}]}
execute if score gamemode game matches 12 run tellraw @a[tag=game] {"rawtext":[{"text":"Two Plates: There are only 2 plates! think of it as a 1v1"}]}
execute if score gamemode game matches 13 run tellraw @a[tag=game] {"rawtext":[{"text":"Murder Town: There's 1 murderer that everyone must watch out for every 20 seconds. only player based events happen"}]}
execute if score gamemode game matches 14 run tellraw @a[tag=game] {"rawtext":[{"text":"Slowed Down: Events happen x2 times slower"}]}
execute if score gamemode game matches 15 run tellraw @a[tag=game] {"rawtext":[{"text":"Gear: Every player spawns with 1 random item"}]}
execute if score gamemode game matches 16 run tellraw @a[tag=game] {"rawtext":[{"text":"Hotel: Welcome to the grand hotel! Enjoy your stay ;)"}]}
execute if score gamemode game matches 17 run tellraw @a[tag=game] {"rawtext":[{"text":"Islands: All players play in teams. Last standing team wins"}]}
