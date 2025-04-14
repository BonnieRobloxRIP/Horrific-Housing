execute as @s[tag=shop, tag=!unequip, scores={tag_cat=1}] at @s run tag @s add unequip
# unequip
execute as @s[tag=shop, tag=unequip, scores={tag_cat=1}] at @s run scoreboard players set @s tag_cat 0
execute as @s[tag=shop, tag=unequip, scores={tag_cat=0}] at @s run playsound sfx.shop.unequip @s 131 4 -27
execute as @s[tag=shop, tag=unequip, scores={tag_cat=0}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully unequipped tag"}]}
# equip
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s tag_og 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s tag_lover 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s tag_winner 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s tag_bunny 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s tag_cat 1
execute as @s[tag=shop, tag=!unequip, scores={tag_cat=1}] at @s run playsound sfx.shop.equip @s 131 4 -27
execute as @s[tag=shop, tag=!unequip, scores={tag_cat=1}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully equipped tag"}]}
execute as @s[tag=shop, tag=unequip, scores={tag_cat=0}] at @s run tag @s remove unequip