# choosing assassin and target
execute as @r[tag=game, tag=!assassin] at @s run tag @s add assassin1
execute as @a[tag=assassin1] at @s run scoreboard players add @s assassin 1
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=1}] run scoreboard players set @s assassin 2
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=2}] run scoreboard players set @s assassin 3
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=3}] run scoreboard players set @s assassin 4
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=4}] run scoreboard players set @s assassin 5
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=5}] run scoreboard players set @s assassin 6
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=6}] run scoreboard players set @s assassin 7
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=7}] run scoreboard players set @s assassin 8
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=8}] run scoreboard players set @s assassin 9
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=9}] run scoreboard players set @s assassin 10
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=10}] run scoreboard players set @s assassin 11
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=11}] run scoreboard players set @s assassin 12
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=12}] run scoreboard players set @s assassin 13
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=13}] run scoreboard players set @s assassin 14
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=14}] run scoreboard players set @s assassin 15
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=15}] run scoreboard players set @s assassin 16
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=16}] run scoreboard players set @s assassin 17
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=17}] run scoreboard players set @s assassin 18
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=18}] run scoreboard players set @s assassin 19
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=19}] run scoreboard players set @s assassin 20
execute as @a[tag=assassin1] at @s if entity @a[tag=assassin, scores={assassin=20}] run scoreboard players set @s assassin 21
execute as @r[tag=game, tag=!target, tag=!assassin, tag=!assassin1] at @s run tag @s add targetA
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=1}] run tag @s add target1
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=2}] run tag @s add target2
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=3}] run tag @s add target3
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=4}] run tag @s add target4
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=5}] run tag @s add target5
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=6}] run tag @s add target6
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=7}] run tag @s add target7
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=8}] run tag @s add target8
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=9}] run tag @s add target9
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=10}] run tag @s add target10
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=11}] run tag @s add target11
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=12}] run tag @s add target12
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=13}] run tag @s add target13
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=14}] run tag @s add target14
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=15}] run tag @s add target15
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=16}] run tag @s add target16
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=17}] run tag @s add target17
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=18}] run tag @s add target18
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=19}] run tag @s add target19
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=20}] run tag @s add target20
execute as @a[tag=game, tag=targetA] at @s if entity @a[tag=assassin1, scores={assassin=21}] run tag @s add target21
execute as @a[tag=assassin1] at @s run scoreboard players set @s "assassin timer" 60
execute as @a[tag=assassin1] at @s run give @s netherite_sword
# message
execute as @a[tag=assassin1, scores={assassin=1}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target1]"}]}
execute as @a[tag=assassin1, scores={assassin=2}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target2]"}]}
execute as @a[tag=assassin1, scores={assassin=3}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target3]"}]}
execute as @a[tag=assassin1, scores={assassin=4}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target4]"}]}
execute as @a[tag=assassin1, scores={assassin=5}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target5]"}]}
execute as @a[tag=assassin1, scores={assassin=6}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target6]"}]}
execute as @a[tag=assassin1, scores={assassin=7}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target7]"}]}
execute as @a[tag=assassin1, scores={assassin=8}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target8]"}]}
execute as @a[tag=assassin1, scores={assassin=9}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target9]"}]}
execute as @a[tag=assassin1, scores={assassin=10}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target10]"}]}
execute as @a[tag=assassin1, scores={assassin=11}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target11]"}]}
execute as @a[tag=assassin1, scores={assassin=12}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target12]"}]}
execute as @a[tag=assassin1, scores={assassin=13}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target13]"}]}
execute as @a[tag=assassin1, scores={assassin=14}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target14]"}]}
execute as @a[tag=assassin1, scores={assassin=15}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target15]"}]}
execute as @a[tag=assassin1, scores={assassin=16}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target16]"}]}
execute as @a[tag=assassin1, scores={assassin=17}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target17]"}]}
execute as @a[tag=assassin1, scores={assassin=18}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target18]"}]}
execute as @a[tag=assassin1, scores={assassin=19}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target19]"}]}
execute as @a[tag=assassin1, scores={assassin=20}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target20]"}]}
execute as @a[tag=assassin1, scores={assassin=21}] at @s run tellraw @s {"rawtext":[{"text": "§3Your target is:§6 "},{"selector": "@a[tag=target21]"}]}
# end
execute as @a[tag=assassin1] at @s run tag @s add assassin
execute as @a[tag=assassin1] at @s run tag @s remove assassin1
execute as @a[tag=targetA] at @s run tag @s add target
execute as @a[tag=targetA] at @s run tag @s remove targetA
gamerule pvp true
