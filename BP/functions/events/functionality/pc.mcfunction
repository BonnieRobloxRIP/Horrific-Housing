# = normal rotation =
# anvils
execute as @e[type=brr:plate, scores={rotation=0, pc=1}] at @s run structure load E18M2 ~-2 ~ ~-2
execute as @e[type=brr:plate, scores={rotation=1, pc=1}] at @s run structure load E18M2 ~-3 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={rotation=2, pc=1}] at @s run structure load E18M2 ~-2 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={rotation=3, pc=1}] at @s run structure load E18M2 ~-2 ~ ~-2 270_degrees
execute as @e[type=brr:plate, scores={pc=1}] at @s run fill ^-4 ^15 ^-4 ^4 ^15 ^5 anvil
# chest
execute as @e[type=brr:plate, scores={rotation=0, pc=2}] at @s run structure load E18M3 ~-2 ~ ~-2
execute as @e[type=brr:plate, scores={rotation=1, pc=2}] at @s run structure load E18M3 ~-3 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={rotation=2, pc=2}] at @s run structure load E18M3 ~-2 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={rotation=3, pc=2}] at @s run structure load E18M3 ~-2 ~ ~-2 270_degrees
# brr statue
execute as @e[type=brr:plate, scores={rotation=0, pc=3}] at @s run structure load E18M5 ~-2 ~ ~-2
execute as @e[type=brr:plate, scores={rotation=1, pc=3}] at @s run structure load E18M5 ~-3 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={rotation=2, pc=3}] at @s run structure load E18M5 ~-2 ~ ~-3 180_degrees
execute as @e[type=brr:plate, scores={rotation=3, pc=3}] at @s run structure load E18M5 ~-2 ~ ~-2 270_degrees
# landmine field
execute as @e[type=brr:plate, scores={rotation=0, pc=4}] at @s run structure load E18M6 ~-2 ~ ~-2
execute as @e[type=brr:plate, scores={rotation=1, pc=4}] at @s run structure load E18M6 ~-2 ~ ~-2 90_degrees
execute as @e[type=brr:plate, scores={rotation=2, pc=4}] at @s run structure load E18M6 ~-2 ~ ~-2 180_degrees
execute as @e[type=brr:plate, scores={rotation=3, pc=4}] at @s run structure load E18M6 ~-2 ~ ~-2 270_degrees
# = end =
execute as @e[type=brr:plate, scores={pc=1..}] at @s run scoreboard players reset @s pc