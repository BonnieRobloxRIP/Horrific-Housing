# - purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=1500..}] at @s run tag @s add 4th_slot1
execute as @s[tag=4th_slot1, scores={shop=1, coins_storage=1500..}] at @s run scoreboard players remove @s coins_storage 1500
execute as @s[tag=4th_slot1, scores={shop=1}] at @s run tag @s add 4th_slot4
execute as @s[tag=4th_slot1, scores={shop=1}] at @s run tag @s remove 4th_slot1
# - failed purchase -
execute as @s[tag=shop, scores={shop=1, coins_storage=..1499}] at @s run function items/inventory/messages