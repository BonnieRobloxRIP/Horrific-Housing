# = choosing =
clear @s[tag=shop, tag=particle]
execute as @s[tag=shop, tag=4th_slot4] at @s run scoreboard players set @s store_perk 1
execute as @s[tag=shop, tag=4th_slot4, tag=4th_slot] at @s run scoreboard players set @s store_perk 2
# = give =
# 4th_slot
execute as @s[tag=shop, tag=4th_slot4, tag=!4th_slot, scores={store_perk=1}] at @s run tag @s add 4th_slot2
execute as @s[tag=shop, tag=4th_slot4, tag=!4th_slot, scores={store_perk=1}] at @s run tag @s add 4th_slot
# = end =
# - title -
execute as @s[tag=shop, tag=4th_slot2] at @s run title @s title You Purchased:
execute as @s[tag=shop, tag=4th_slot2, scores={store_perk=1}] at @s run title @s subtitle §bThe 4th Ornament Slot!
# - if all particles are unlocked
execute as @s[tag=shop, scores={store_perk=2}] at @s run tellraw @s {"rawtext":[{"text":"§3You already own this perk!"}]}
execute as @s[tag=shop, scores={store_perk=2}] at @s run scoreboard players add @s coins_storage 1500
execute as @s[tag=shop, scores={store_perk=2}] at @s run tag @s add 4th_slot2
# - remove tags -
execute as @s[tag=shop, tag=4th_slot2] at @s run scoreboard players reset @s store_perk
execute as @s[tag=shop, tag=4th_slot2] at @s run tag @s remove 4th_slot4
execute as @s[tag=shop, tag=4th_slot2] at @s run tag @s remove 4th_slot2