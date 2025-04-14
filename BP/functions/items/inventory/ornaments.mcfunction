# = inventory menu =
execute as @s[tag=shop, scores={shop=0}] at @s run scoreboard players set @s store_page 2
execute as @s[tag=shop, scores={shop=0}] at @s run function store_functions/inv
# = shop =
# - purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=160..}] at @s run tag @s add ornament1
execute as @s[tag=ornament1, scores={shop=1, coins_storage=160..}] at @s run scoreboard players remove @s coins_storage 160
execute as @s[tag=ornament1, scores={shop=1}] at @s run tag @s add ornament
execute as @s[tag=ornament1, scores={shop=1}] at @s run tag @s remove ornament1
# - failed purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=..159}] at @s run function items/inventory/messages