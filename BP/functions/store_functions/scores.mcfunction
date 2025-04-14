# particles
scoreboard players add @a[tag=purple_ring] particle_purple_ring 0
scoreboard players add @a[tag=blue_flame] particle_blue_flame 0
scoreboard players add @a[tag=green_sphere] particle_green_sphere 0
scoreboard players add @a[tag=red_trail] particle_red_trail 0
scoreboard players add @a[tag=fire_ring] particle_fire_ring 0
# tags
scoreboard players add @a[tag=tag_lover1] tag_lover 0
scoreboard players add @a[tag=tag_og1] tag_og 0
scoreboard players add @a[tag=tag_winner1] tag_winner 0
scoreboard players add @a[tag=tag_bunny1] tag_bunny 0
scoreboard players add @a[tag=tag_cat1] tag_cat 0
# if equipped
execute as @a[tag=tag_lover1, scores={tag_lover=1}] at @s run tag @s add tag_lover
execute as @a[tag=tag_og1, scores={tag_og=1}] at @s run tag @s add tag_og
execute as @a[tag=tag_winner1, scores={tag_winner=1}] at @s run tag @s add tag_winner
execute as @a[tag=tag_bunny1, scores={tag_bunny=1}] at @s run tag @s add tag_bunny
execute as @a[tag=tag_cat1, scores={tag_cat=1}] at @s run tag @s add tag_cat
# if unqeuipped
execute as @a[tag=tag_lover1, scores={tag_lover=0}] at @s run tag @s remove tag_lover
execute as @a[tag=tag_og1, scores={tag_og=0}] at @s run tag @s remove tag_og
execute as @a[tag=tag_winner1, scores={tag_winner=0}] at @s run tag @s remove tag_winner
execute as @a[tag=tag_bunny1, scores={tag_bunny=0}] at @s run tag @s remove tag_bunny
execute as @a[tag=tag_cat1, scores={tag_cat=0}] at @s run tag @s remove tag_cat
# reward the winner tag
execute as @a[tag=!tag_winner1, scores={win_storage=100..}] at @s run tag @s add tag_winner2
execute as @a[tag=tag_winner2, scores={win_storage=100..}] at @s run tellraw @s {"rawtext":[{"text": "§bYou have unlocked §lTHE WINNER TAG!§r"}]}
execute as @a[tag=tag_winner2, scores={win_storage=100..}] at @s run tag @s add tag_winner1
execute as @a[tag=tag_winner2, scores={win_storage=100..}] at @s run tag @s remove tag_winner2 