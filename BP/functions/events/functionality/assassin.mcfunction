# scores
execute as @r[tag=assassin] at @s run scoreboard players remove assassin1 events 1
execute if score assassin1 events matches ..0 run scoreboard players remove @a[tag=assassin] "assassin timer" 1
execute if score assassin1 events matches ..0 run scoreboard players set assassin1 events 20
# no target
execute as @a[tag=!assassin] at @s run clear @s netherite_sword
execute as @a[tag=!assassin] at @s run scoreboard players reset @s assassin
execute as @a[tag=!assassin] at @s run scoreboard players reset @s "assassin timer"
# on death of target
execute as @a[scores={alive=0}, tag=game, tag=target1] at @s run tellraw @a[tag=assassin, scores={assassin=1}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target2] at @s run scoreboard players add @a[tag=assassin, scores={assassin=2}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target2] at @s run tag @a[tag=assassin, scores={assassin=2}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target3] at @s run tellraw @a[tag=assassin, scores={assassin=3}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target3] at @s run scoreboard players add @a[tag=assassin, scores={assassin=3}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target3] at @s run tag @a[tag=assassin, scores={assassin=3}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target4] at @s run tellraw @a[tag=assassin, scores={assassin=4}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target4] at @s run scoreboard players add @a[tag=assassin, scores={assassin=4}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target4] at @s run tag @a[tag=assassin, scores={assassin=4}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target5] at @s run tellraw @a[tag=assassin, scores={assassin=5}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target5] at @s run scoreboard players add @a[tag=assassin, scores={assassin=5}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target5] at @s run tag @a[tag=assassin, scores={assassin=5}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target6] at @s run tellraw @a[tag=assassin, scores={assassin=6}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target6] at @s run scoreboard players add @a[tag=assassin, scores={assassin=6}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target6] at @s run tag @a[tag=assassin, scores={assassin=6}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target7] at @s run tellraw @a[tag=assassin, scores={assassin=7}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target7] at @s run scoreboard players add @a[tag=assassin, scores={assassin=7}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target7] at @s run tag @a[tag=assassin, scores={assassin=7}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target8] at @s run tellraw @a[tag=assassin, scores={assassin=8}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target8] at @s run scoreboard players add @a[tag=assassin, scores={assassin=8}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target8] at @s run tag @a[tag=assassin, scores={assassin=8}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target9] at @s run tellraw @a[tag=assassin, scores={assassin=9}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target9] at @s run scoreboard players add @a[tag=assassin, scores={assassin=9}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target9] at @s run tag @a[tag=assassin, scores={assassin=9}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target10] at @s run tellraw @a[tag=assassin, scores={assassin=10}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target10] at @s run scoreboard players add @a[tag=assassin, scores={assassin=10}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target10] at @s run tag @a[tag=assassin, scores={assassin=10}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target11] at @s run tellraw @a[tag=assassin, scores={assassin=11}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target11] at @s run scoreboard players add @a[tag=assassin, scores={assassin=11}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target11] at @s run tag @a[tag=assassin, scores={assassin=11}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target12] at @s run tellraw @a[tag=assassin, scores={assassin=12}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target12] at @s run scoreboard players add @a[tag=assassin, scores={assassin=12}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target12] at @s run tag @a[tag=assassin, scores={assassin=12}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target13] at @s run tellraw @a[tag=assassin, scores={assassin=13}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target13] at @s run scoreboard players add @a[tag=assassin, scores={assassin=13}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target13] at @s run tag @a[tag=assassin, scores={assassin=13}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target14] at @s run tellraw @a[tag=assassin, scores={assassin=14}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target14] at @s run scoreboard players add @a[tag=assassin, scores={assassin=14}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target14] at @s run tag @a[tag=assassin, scores={assassin=14}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target15] at @s run tellraw @a[tag=assassin, scores={assassin=15}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target15] at @s run scoreboard players add @a[tag=assassin, scores={assassin=15}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target15] at @s run tag @a[tag=assassin, scores={assassin=15}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target16] at @s run tellraw @a[tag=assassin, scores={assassin=16}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target16] at @s run scoreboard players add @a[tag=assassin, scores={assassin=16}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target16] at @s run tag @a[tag=assassin, scores={assassin=16}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target17] at @s run tellraw @a[tag=assassin, scores={assassin=17}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target17] at @s run scoreboard players add @a[tag=assassin, scores={assassin=17}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target17] at @s run tag @a[tag=assassin, scores={assassin=17}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target18] at @s run tellraw @a[tag=assassin, scores={assassin=18}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target18] at @s run scoreboard players add @a[tag=assassin, scores={assassin=18}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target18] at @s run tag @a[tag=assassin, scores={assassin=18}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target19] at @s run tellraw @a[tag=assassin, scores={assassin=19}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target19] at @s run scoreboard players add @a[tag=assassin, scores={assassin=19}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target19] at @s run tag @a[tag=assassin, scores={assassin=91}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target20] at @s run tellraw @a[tag=assassin, scores={assassin=20}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target20] at @s run scoreboard players add @a[tag=assassin, scores={assassin=20}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target20] at @s run tag @a[tag=assassin, scores={assassin=20}] remove assassin
execute as @a[scores={alive=0}, tag=game, tag=target21] at @s run tellraw @a[tag=assassin, scores={assassin=21}] {"rawtext":[{"text": "§aTarget terminated §e+25 Coins "}]}
execute as @a[scores={alive=0}, tag=game, tag=target21] at @s run scoreboard players add @a[tag=assassin, scores={assassin=21}] coins_storage 25
execute as @a[scores={alive=0}, tag=game, tag=target21] at @s run tag @a[tag=assassin, scores={assassin=21}] remove assassin
# on death of assassin
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=1}] at @s run tag @a remove target1
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=2}] at @s run tag @a remove target2
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=3}] at @s run tag @a remove target3
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=4}] at @s run tag @a remove target4
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=5}] at @s run tag @a remove target5
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=6}] at @s run tag @a remove target6
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=7}] at @s run tag @a remove target7
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=8}] at @s run tag @a remove target8
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=9}] at @s run tag @a remove target9
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=10}] at @s run tag @a remove target10
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=11}] at @s run tag @a remove target11
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=12}] at @s run tag @a remove target12
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=13}] at @s run tag @a remove target13
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=14}] at @s run tag @a remove target14
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=15}] at @s run tag @a remove target15
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=16}] at @s run tag @a remove target16
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=17}] at @s run tag @a remove target17
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=18}] at @s run tag @a remove target18
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=19}] at @s run tag @a remove target19
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=20}] at @s run tag @a remove target10
execute as @a[scores={alive=0}, tag=game, tag=assassin, scores={assassin=21}] at @s run tag @a remove target21
