# = players =
scoreboard players reset players
execute as @a[tag=game] at @s run scoreboard players add players game 1
execute if score players game matches 2.. run scoreboard players set singleplayer game 0
# stuck
execute as @a[tag=game] at @s if block ~ ~ ~ sealantern run tp @s ~ ~1 ~
execute as @a[tag=game] at @s if block ~ ~ ~ concrete run tp @s ~ ~1 ~
execute as @a[tag=game] at @s if block ~ ~ ~ stone run tp @s ~ ~1 ~
execute as @a[tag=game] at @s if block ~ ~ ~ planks run tp @s ~ ~1 ~
execute as @a[tag=game] at @s if block ~ ~ ~ brr:rgb_block run tp @s ~ ~1 ~
execute as @a[tag=game] at @s if block ~ ~ ~ brr:invisible run tp @s ~ ~1 ~
# = necessary things =
# kill trigger
kill @a[tag=game, x=-50, y=-22, z=-50, dx=200, dy=-40, dz=200]
# plates
effect @e[type=brr:plate] invisibility 10000 255 true
effect @e[type=brr:plate] resistance 10000 255 true
effect @e[type=brr:plate] regeneration 10000 255 true
# timer
execute if score "timer switch" game matches 1 unless score timer game matches 0 run scoreboard players remove timer game 1
execute if score timer game matches ..0 run function game_functions/event_randomizer/event_randomizer
# scores
execute as @e[type=brr:plate] at @s run scoreboard players add @s rotation 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s large 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s upside 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s "event building" 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s "mountain switch" 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s house_color 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s floor 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s invisible 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s duel 0
execute as @e[type=brr:plate] at @s run scoreboard players add @s "nuke switch" 0
# gamemodes
execute if score gamemode game matches 1 run function gamemodes/blast
execute if score gamemode game matches 6 run function gamemodes/lava
execute if score gamemode game matches 7 run function gamemodes/spleef
execute if score gamemode game matches 8 run function gamemodes/line
execute if score gamemode game matches 9 run function gamemodes/town
execute if score gamemode game matches 11 run function gamemodes/swepper
execute if score gamemode game matches 13 run function gamemodes/murdertown
# events
function game_functions/event_data
# event disabling based on player count
# 1 player
execute if score players game matches 1 run scoreboard players set E26 events 1
execute if score players game matches 1 run scoreboard players set E29 events 1
execute if score players game matches 1 run scoreboard players set E30 events 1
execute if score players game matches 1 run scoreboard players set E39 events 1
execute if score players game matches 1 run scoreboard players set E40 events 1
execute if score players game matches 1 run scoreboard players set E48 events 1
execute if score players game matches 1 run scoreboard players set E51 events 1
execute if score players game matches 1 run scoreboard players set E56 events 1
execute if score players game matches 1 run scoreboard players set E59 events 1
execute if score players game matches 1 run scoreboard players set E74 events 1
execute if score players game matches 1 run scoreboard players set E77 events 1
# 2 players
execute if score players game matches 2 run scoreboard players set E40 events 1
execute if score players game matches 2 run scoreboard players set E77 events 1