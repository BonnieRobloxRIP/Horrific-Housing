execute as @s[tag=game] run tag @r[tag=game] add deathnote
execute as @s[tag=game] run clear @s brr:deathnote 0 1
execute as @s[tag=game] run title @a[tag=deathnote] times 200 20 0
execute as @s[tag=game] run title @a[tag=deathnote] title Death Note
execute as @s[tag=game] run camera @a[tag=deathnote] fade time 10 1 0 color 150 150 150
execute as @s[tag=game] run tellraw @a[tag=game] {"rawtext":[{"text": "§b"}, {"selector": "@s"}, {"text": " §9Used the death note!"}]}
execute as @s[tag=lobby] run tellraw @s {"rawtext":[{"text": "§bYou may not use this item from the lobby dummy!"}]}