# = inventory menu =
execute as @s[tag=shop, scores={shop=0}] at @s run scoreboard players set @s store_page 4
execute as @s[tag=shop, scores={shop=0}] at @s run function store_functions/inv
# = shop =
# - purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=2000..}] at @s run tag @s add tag1
execute as @s[tag=tag1, scores={shop=1, coins_storage=2000..}] at @s run scoreboard players remove @s coins_storage 2000
execute as @s[tag=tag1, scores={shop=1}] at @s run tag @s add tag
execute as @s[tag=tag1, scores={shop=1}] at @s run tag @s remove tag1
# - failed purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=..1999}] at @s run function items/inventory/messages