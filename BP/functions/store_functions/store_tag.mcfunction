# = choosing =
clear @s[tag=shop, tag=tag]
execute as @s[tag=shop, tag=tag] at @s run scoreboard players random @s store_tag 1 2
execute as @s[tag=shop, tag=tag, tag=tag_bunny1, tag=tag_cat1] at @s run scoreboard players set @s store_tag 3
# = give =
# purple_ring
execute as @s[tag=shop, tag=tag, tag=!tag_bunny1, scores={store_tag=1}] at @s run tag @s add tag2
execute as @s[tag=shop, tag=tag, tag=!tag_bunny1, scores={store_tag=1}] at @s run tag @s add tag_bunny1
# blue_flame
execute as @s[tag=shop, tag=tag, tag=!tag_cat1, scores={store_tag=2}] at @s run tag @s add tag2
execute as @s[tag=shop, tag=tag, tag=!tag_cat1, scores={store_tag=2}] at @s run tag @s add tag_cat1
# = end =
# - title -
execute as @s[tag=shop, tag=tag2] at @s run title @s title You got:
execute as @s[tag=shop, tag=tag2, scores={store_tag=1}] at @s run title @s subtitle §6§lThe Bunny Tag!
execute as @s[tag=shop, tag=tag2, scores={store_tag=2}] at @s run title @s subtitle §7§lThe Cat Tag!
# - if all tags are unlocked
execute as @s[tag=shop, scores={store_tag=3}] at @s run tellraw @s {"rawtext":[{"text":"§3You already own all available tags!"}]}
execute as @s[tag=shop, scores={store_tag=3}] at @s run scoreboard players add @s coins_storage 2000
execute as @s[tag=shop, scores={store_tag=3}] at @s run tag @s add tag2
# - remove tag -
execute as @s[tag=shop, tag=tag2] at @s run scoreboard players reset @s store_tag
execute as @s[tag=shop, tag=tag2] at @s run tag @s remove tag
execute as @s[tag=shop, tag=tag2] at @s run tag @s remove tag2