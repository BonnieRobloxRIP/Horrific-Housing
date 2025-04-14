# the flash of the bang
execute as @s[tag=flashbang] at @s run scoreboard players add @s flashbang 1
execute as @s[tag=flashbang, scores={flashbang=20..}] at @s run camera @s fade time 0 2 5 color 255 255 255
execute as @s[tag=flashbang, scores={flashbang=20..}] at @s run tag @s remove flashbang
execute as @s[scores={flashbang=20..}] at @s run scoreboard players reset @s flashbang