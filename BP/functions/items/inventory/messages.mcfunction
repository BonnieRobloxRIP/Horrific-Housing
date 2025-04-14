execute as @s[tag=shop, scores={shop=1}] at @s run scoreboard players random @s nmm 1 11
execute as @s[tag=shop, scores={shop=1, nmm=1}] at @s run tellraw @s {"rawtext":[{"text":"§4You do not have enough coins for this purchase!"}]}
execute as @s[tag=shop, scores={shop=1, nmm=2}] at @s run tellraw @s {"rawtext":[{"text":"§4You are broke boi!"}]}
execute as @s[tag=shop, scores={shop=1, nmm=3}] at @s run tellraw @s {"rawtext":[{"text":"§4No cash, no reward!"}]}
execute as @s[tag=shop, scores={shop=1, nmm=4}] at @s run tellraw @s {"rawtext":[{"text":"§4Bring me the coins and then we'll talk!"}]}
execute as @s[tag=shop, scores={shop=1, nmm=5}] at @s run tellraw @s {"rawtext":[{"text":"§4You forgot the money :P"}]}
execute as @s[tag=shop, scores={shop=1, nmm=6}] at @s run tellraw @s {"rawtext":[{"text":"§4Where the coins at?"}]}
execute as @s[tag=shop, scores={shop=1, nmm=7}] at @s run tellraw @s {"rawtext":[{"text":"§4You're missing the coins necessary for this transaction!"}]}
execute as @s[tag=shop, scores={shop=1, nmm=8}] at @s run tellraw @s {"rawtext":[{"text":"§4Will you do this all day?"}]}
execute as @s[tag=shop, scores={shop=1, nmm=9}] at @s run tellraw @s {"rawtext":[{"text":"§4Try again when you have enough funds"}]}
execute as @s[tag=shop, scores={shop=1, nmm=10}] at @s run tellraw @s {"rawtext":[{"text":"§4I don't see you carrying my golden bags of golden coins manifactured at the BRR corp"}]}
execute as @s[tag=shop, scores={shop=1, nmm=11}] at @s run tellraw @s {"rawtext":[{"text":"?"}]}
execute as @s[tag=shop, scores={shop=1, nmm=1..}] at @s run scoreboard players reset @s nmm