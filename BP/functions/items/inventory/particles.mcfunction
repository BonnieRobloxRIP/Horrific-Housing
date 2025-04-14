# = inventory menu =
execute as @s[tag=shop, scores={shop=0}] at @s run scoreboard players set @s store_page 3
execute as @s[tag=shop, scores={shop=0}] at @s run function store_functions/inv
# = shop =
# - purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=500..}] at @s run tag @s add particle1
execute as @s[tag=particle1, scores={shop=1, coins_storage=500..}] at @s run scoreboard players remove @s coins_storage 500
execute as @s[tag=particle1, scores={shop=1}] at @s run tag @s add particle
execute as @s[tag=particle1, scores={shop=1}] at @s run tag @s remove particle1
# - failed purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=..499}] at @s run function items/inventory/messages