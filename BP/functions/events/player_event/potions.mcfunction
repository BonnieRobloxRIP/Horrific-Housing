# event
execute as @r[tag=game] at @s run tag @s add potion
execute as @a[tag=potion] at @s run scoreboard players random @s potion 1 11
# random potion
execute as @a[tag=potion, scores={potion=1}] at @s run give @s splash_potion 1 11
execute as @a[tag=potion, scores={potion=2}] at @s run give @s splash_potion 1 12
execute as @a[tag=potion, scores={potion=3}] at @s run give @s splash_potion 1 16
execute as @a[tag=potion, scores={potion=4}] at @s run give @s splash_potion 1 22
execute as @a[tag=potion, scores={potion=5}] at @s run give @s splash_potion 1 24
execute as @a[tag=potion, scores={potion=6}] at @s run give @s splash_potion 1 27
execute as @a[tag=potion, scores={potion=7}] at @s run give @s splash_potion 1 30
execute as @a[tag=potion, scores={potion=8}] at @s run give @s splash_potion 1 33
execute as @a[tag=potion, scores={potion=9}] at @s run give @s splash_potion 1 34
execute as @a[tag=potion, scores={potion=10}] at @s run give @s splash_potion 1 36
execute as @a[tag=potion, scores={potion=11}] at @s run give @s splash_potion 1 42
# end
execute as @a[tag=potion] at @s run tag @s remove potion