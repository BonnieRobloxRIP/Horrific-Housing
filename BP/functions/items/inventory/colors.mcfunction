# = inventory menu =
execute as @s[tag=shop, scores={shop=0}] at @s run scoreboard players set @s store_page 1
execute as @s[tag=shop, scores={shop=0}] at @s run function store_functions/inv
# = shop =
# - purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=80..}] at @s run tag @s add color1
execute as @s[tag=color1, scores={shop=1, coins_storage=80..}] at @s run scoreboard players remove @s coins_storage 80
execute as @s[tag=color1, scores={shop=1}] at @s run tag @s add color
execute as @s[tag=color1, scores={shop=1}] at @s run tag @s remove color1
# - failed purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=..79}] at @s run function items/inventory/messages