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
# = events =
# nap
scoreboard players reset @a[tag=!nap] nap
execute as @a[tag=nap] at @s run scoreboard players remove @s nap 1
execute as @a[tag=nap, scores={nap=..0}] run inputpermission set @s movement enabled
execute as @a[tag=nap, scores={nap=..0}] run tag @s remove nap
# bank
execute as @e[type=brr:plate] at @s positioned ^1 ^-3 ^ if block ~ ~ ~ bamboo_button["facing_direction"=1, "button_pressed_bit"=true] run scoreboard players add @p[tag=game] coins_storage 15
execute as @e[type=brr:plate] at @s positioned ^1 ^-3 ^ if block ~ ~ ~ bamboo_button["facing_direction"=1, "button_pressed_bit"=true] run title @p[tag=game] subtitle §e15 Coins §bfrom the bank!
execute as @e[type=brr:plate] at @s positioned ^1 ^-3 ^ if block ~ ~ ~ bamboo_button["facing_direction"=1, "button_pressed_bit"=true] run title @p[tag=game] title §bYou stole
execute as @e[type=brr:plate] at @s positioned ^1 ^-3 ^ if block ~ ~ ~ bamboo_button["facing_direction"=1, "button_pressed_bit"=true] run setblock ~ ~ ~ air
# border
execute as @e[type=brr:plate, scores={border=1..}] at @s run function events/functionality/border
# ufo
execute as @e[type=brr:plate, tag=!train2, scores={"ufo switch"=1..}] at @s run function events/functionality/ufo
# chill
execute as @a[tag=game, tag=chill] at @s run effect @s regeneration 1 4 false
# campfire
execute as @e[type=brr:plate] at @s positioned ^-1 ^ ^2 if block ~ ~ ~ campfire run effect @a[tag=game, r=2] regeneration 1 15 false
# pc
execute as @e[type=brr:plate, scores={"event building"=4}] at @s if block ^-1 ^1 ^-1 stone_button["facing_direction"=1, "button_pressed_bit"=true] run scoreboard players random @s pc 1 4
function events/functionality/pc
# flood escape
execute as @e[type=brr:plate, tag=!train2, tag=!ufo, tag=!meteor, tag=!subportal, tag=!nuked, scores={"event building"=5}] at @s run function events/functionality/fe
execute as @e[type=brr:plate, scores={"event building"=!5}] at @s run scoreboard players reset @s flood
execute as @e[type=brr:plate, scores={"event building"=!5}] at @s run scoreboard players reset @s "flood button"
execute as @e[type=brr:plate, scores={"event building"=!5}] at @s run scoreboard players reset @s "flood button switch"
# darkness
function events/functionality/darkness
# murder mystery
execute as @a[tag=!murderer] at @s run clear @s trident
execute as @a[tag=murderer, scores={kills=2..}] at @s run tag @s remove murderer
execute as @a[tag=murderer] at @s run effect @s strength 1 255 true
# lightning
function events/functionality/lightning
# one minute
function events/functionality/one_minute
# mountain
execute as @e[type=brr:plate, scores={"mountain switch"=1, upside=0, invisible=0}] at @s run function events/functionality/mountain
execute as @e[type=brr:plate, scores={"mountain switch"=1, upside=1, invisible=0}] at @s run function events/functionality/mountain_upside
execute as @e[type=brr:plate, scores={"mountain switch"=1, upside=0, invisible=1}] at @s run function events/functionality/mountain_invis
execute as @e[type=brr:plate, scores={"mountain switch"=1, upside=1, invisible=1}] at @s run function events/functionality/mountain_invis
# miner
execute as @a[tag=game, tag=miner] at @s run effect @s haste 1 2 true
# purple ring
execute as @a[tag=game, tag=game_ring] at @s run particle brr:purple_player_ring ~ ~ ~
# meteor
execute as @e[type=brr:plate, tag=!train2, scores={"meteor switch"=1..}] at @s run function events/functionality/meteor
# speed
execute as @a[tag=game, tag=speed] at @s run effect @s speed 1 5 true
# taco
execute as @e[type=brr:plate, tag=!train2, scores={"taco switch"=1}] at @s run function events/functionality/taco
# duels
execute as @e[type=brr:plate, scores={"duel switch"=1}] at @s run function events/functionality/duel
# icicle
execute as @e[type=brr:plate, tag=!train2, scores={"icicle switch"=1}] at @s run function events/functionality/icicle
# jump
execute as @a[tag=game, tag=jump] at @s run effect @s jump_boost 1 5 false
# double health
execute as @a[tag=game, tag=health] at @s run effect @s health_boost 1 4 false
# flashbang
execute as @a[tag=game, tag=flashbang] at @s run function events/functionality/flashbang
# train
execute as @e[type=brr:plate, scores={"train switch"=1}] at @s run function events/functionality/train
# nuke
execute as @e[type=brr:plate, scores={rotation=0}] at @s if block ^1 ^6 ^3 stone_button["facing_direction"=4, "button_pressed_bit"=true] run scoreboard players random @s "nuke id" 1 1000000
execute as @e[type=brr:plate, scores={rotation=1}] at @s if block ^1 ^6 ^3 stone_button["facing_direction"=2, "button_pressed_bit"=true] run scoreboard players random @s "nuke id" 1 1000000
execute as @e[type=brr:plate, scores={rotation=2}] at @s if block ^1 ^6 ^3 stone_button["facing_direction"=5, "button_pressed_bit"=true] run scoreboard players random @s "nuke id" 1 1000000
execute as @e[type=brr:plate, scores={rotation=3}] at @s if block ^1 ^6 ^3 stone_button["facing_direction"=3, "button_pressed_bit"=true] run scoreboard players random @s "nuke id" 1 1000000
execute as @e[type=brr:plate, scores={"nuke id"=1..}] at @s if block ^1 ^6 ^3 stone_button run scoreboard players set @s "nuke switch" 1
execute as @e[type=brr:plate, scores={"nuke id"=1..}] at @s if block ^1 ^6 ^3 stone_button run setblock ^1 ^6 ^3 air
execute as @e[type=brr:plate, scores={"nuke id"=1..}] at @s run function events/functionality/nuke
# lightbulb
execute as @a[tag=game, tag=lightbulb] at @s run function events/functionality/light_bulb
