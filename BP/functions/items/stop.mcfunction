execute as @s[tag=host] at @s if score players game matches ..0 run scoreboard players set lever lobby 0
execute as @s[tag=host] at @s if score players game matches 1.. run tellraw @s {"rawtext":[{"text": "You cannot do this at this moment"}]}
execute as @s[tag=!host] at @s run tellraw @s {"rawtext":[{"text": "Only the host of this game can use this item blud"}]}