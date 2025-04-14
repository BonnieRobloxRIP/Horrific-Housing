execute as @s[tag=lobby, tag=!spectator] at @s if score players game matches 1.. run gamemode spectator @s
execute as @s[tag=lobby, tag=!spectator] at @s if score players game matches 1.. run tag @s add spectator
execute as @s[tag=lobby, tag=!spectator] at @s if score players game matches ..0 run tellraw @s {"rawtext":[{"text": "§bYou cannot do this at the moment"}]}
execute as @s[tag=!lobby, tag=!spectator] at @s if score players game matches ..0 run tellraw @s {"rawtext":[{"text": "§bbig black individual"}]}