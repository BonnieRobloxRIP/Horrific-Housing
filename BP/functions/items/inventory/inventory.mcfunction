# pressed
execute as @s[tag=shop] at @s run scoreboard players set @s shop 0
execute as @s[tag=shop] at @s run tellraw @s {"rawtext":[{"text": "Drag your items into your hotbar from your minecraft inventory to use them to equip/unequip them!"}]}
execute as @s[tag=shop] at @s run scoreboard players set @s store_page 1
execute as @s[tag=shop, scores={house_color=0}] at @s run tag @s add red
# items
execute as @s[tag=shop] at @s run function store_functions/inv
