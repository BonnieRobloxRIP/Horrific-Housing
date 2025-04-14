# counter
execute as @r[tag=1minute] at @s run scoreboard players remove 1minute events 1
execute as @a[tag=1minute] at @s if score 1minute events matches ..0 run scoreboard players remove @s 1minute 1
execute if score 1minute events matches ..0 run scoreboard players set 1minute events 20
# on death
execute as @a[tag=1minute, scores={1minute=..5}] at @s run effect @s wither 5 1 false
execute as @a[tag=1minute, scores={1minute=..-1}] at @s run playsound random.explode @a ~ ~ ~
execute as @a[tag=1minute, scores={1minute=..-1}] at @s run particle minecraft:knockback_roar_particle ~ ~ ~
execute as @a[tag=1minute, scores={1minute=..-1}] at @s run kill @a[r=3]
# all players wihtout the tag
scoreboard players reset @a[tag=!1minute] 1minute