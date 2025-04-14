# timer
scoreboard players remove blasttimer gamemodes 1
execute if score blasttimer gamemodes matches ..0 run scoreboard players remove blasttime gamemodes 1
execute if score blasttimer gamemodes matches ..0 run scoreboard players set blasttimer gamemodes 20
# music
execute as @a[tag=game] at @s run tag @s add blast
# end
execute if score blasttime gamemodes matches ..0 run tag @a[tag=game] add win
execute if score blasttime gamemodes matches ..0 run function game_functions/reset
