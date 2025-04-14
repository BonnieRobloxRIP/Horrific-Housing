# = spawn block =
setworldspawn 0 1 -1
clearspawnpoint @a
spawnpoint @a 0 1 -1
execute as @a[tag=!lobby] at @s if block ~ ~-2 ~ brr:spawn run tag @s add lobby
# = scores =
scoreboard players add @a coins_storage 0
scoreboard players add @a win_storage 0
scoreboard players add @a transition 0
scoreboard players add @a store_page 0
scoreboard players add @a house_color 0
scoreboard players add @a[tag=game] duel 0
scoreboard players add @a plushies 0
scoreboard players add @a equipped 0
scoreboard players add @a vote 0
scoreboard players add @a ornament_farm_bales 0
# = vending machine =
# sound
scoreboard players remove hum lobby 1
execute if score hum lobby matches ..0 run playsound sfx.lobby.vending_hum @a -2 2 4
execute if score hum lobby matches ..0 run scoreboard players set hum lobby 10
# button
# vending machine open
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] if score button lobby matches 1 run scoreboard players set soda lobby 100
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] if score button lobby matches 1 run playsound sfx.lobby.handle_pull @a -2 2 4
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] if score button lobby matches 1 run setblock -5 2 5 air
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] if score button lobby matches 1 run setblock -9 1 -5 warped_button["facing_direction"=2]
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] if score button lobby matches 1 run structure load soda -3 1 2
execute if score soda lobby matches 1.. run scoreboard players remove soda lobby 1
execute if score soda lobby matches 99 if score button lobby matches 1 run scoreboard players set button lobby 0
execute if score soda lobby matches 1 run structure load soda -3 1 3
execute if score soda lobby matches 1 run setblock -5 2 5 stone_button["facing_direction"=3]
execute if score soda lobby matches 1 run playsound sfx.lobby.handle_down @a -2 2 4
execute if block -2 2 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] positioned -2 2 4 run give @p[tag=lobby] brr:soda 1 0 {"minecraft:item_lock":{ "mode": "lock_in_inventory" }}
execute if block -2 2 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] run playsound sfx.lobby.vending1 @a -2 2 4
execute if block -2 2 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] run setblock -2 2 4 stone_button["facing_direction"=5]
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] positioned -2 1 4 run give @p[tag=lobby] brr:red_soda 1 0 {"minecraft:item_lock":{ "mode": "lock_in_inventory" }}
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] run playsound sfx.lobby.vending2 @a -2 1 4
execute if block -2 1 4 stone_button["button_pressed_bit"=true, "facing_direction"=5] run setblock -2 1 4 stone_button["facing_direction"=5]
# = easter egg =
# gate
execute if score gate lobby matches 1.. run scoreboard players remove gate lobby 1
execute if score gate lobby matches 1 run tp @a[tag=lobby,tag=!spectator,x=-4,y=0,z=-6,dx=4,dy=1,dz=0] 0 1 -1
execute if score gate lobby matches 1 run structure load L3 1 0 -6
execute if score gate lobby matches 1 run setblock -4 1 -6 stone_button["facing_direction"=1]
execute as @a[x=2,y=0,z=-6,dx=1,dy=1,dz=0,tag=lobby,tag=!spectator,hasitem={item=brr:red_soda}] at @s run structure load L3a 1 0 -6
execute as @a[x=2,y=0,z=-6,dx=1,dy=1,dz=0,tag=lobby,tag=!spectator,hasitem={item=brr:red_soda}] at @s run scoreboard players set gate lobby 100
execute as @a[x=2,y=0,z=-6,dx=1,dy=1,dz=0,tag=lobby,tag=!spectator,hasitem={item=brr:red_soda}] at @s run clear @s brr:red_soda
# gateway button
execute if block -4 1 -6 stone_button["button_pressed_bit"=true, "facing_direction"=1] run scoreboard players set button lobby 1
execute if block -4 1 -6 stone_button["button_pressed_bit"=true, "facing_direction"=1] run playsound sfx.lobby.power_up @a -4 1 -6
execute if block -4 1 -6 stone_button["button_pressed_bit"=true, "facing_direction"=1] run particle brr:power_up -4 0 -6
execute if block -4 1 -6 stone_button["button_pressed_bit"=true, "facing_direction"=1] run setblock -4 1 -6 air
# = functions =
function lobby_functions/elevator
function lobby_functions/items
function lobby_functions/actionbars
function lobby_functions/music
function lobby_functions/spleef
function lobby_functions/parkour
function lobby_functions/tags
function lobby_functions/voting_signs
execute if score "timer switch" game matches 1 run function game_functions/event_data
# = store stuff =
# transition
scoreboard players add @a[tag=shop,scores={transition=1..39}] transition 1
scoreboard players remove @a[tag=!shop,scores={transition=1..39}] transition 1
execute as @a[tag=!shop,scores={transition=1}] at @s run camera @s clear 
# scoreboards
execute as @a at @s run scoreboard players operation @s coins = @s coins_storage
execute as @a at @s run scoreboard players operation @s wins = @s win_storage
# functions
function store_functions/clearing
execute as @a[tag=color] at @s run function store_functions/store_color
execute as @a[tag=ornament] at @s run function store_functions/store_ornament
execute as @a[tag=particle] at @s run function store_functions/store_particle
execute as @a[tag=4th_slot4] at @s run function store_functions/store_perk
execute as @a[tag=tag] at @s run function store_functions/store_tag
# = game start =
# intermission
execute if score lever lobby matches 1 if score players game matches ..-2 run scoreboard players remove intermission1 lobby 1 
execute if score intermission1 lobby matches ..0 run scoreboard players remove intermission lobby 1 
execute if score intermission1 lobby matches ..0 run scoreboard players set intermission1 lobby 20 
execute if score lever lobby matches 0 if score players game matches ..-2 run scoreboard players set intermission lobby 21 
execute if score lever lobby matches 0 if score players game matches ..-2 run scoreboard players set intermission1 lobby 1 
execute if score intermission lobby matches 0 run scoreboard players set "game switch" game 1 
execute if score intermission lobby matches 0 run function game_functions/game_setup/game 
# game
execute if score "game switch" game matches 1 run scoreboard players add game game 1
execute if score game game matches 5 run function vote_results
execute if score game game matches 40 run function game_functions/game_setup/house_loader
execute if score game game matches 75 run camera @a[tag=!stop] fade time 1 0.3 1 color 0 0 0
execute if score game game matches 90 run function game_functions/game_setup/player_tp
execute if score game game matches 95 run function game_functions/game_setup/house_data
execute if score game game matches 100 run camera @a[tag=!stop] clear
execute if score game game matches 100.. run scoreboard players set "game switch" game 0
execute if score game game matches 100.. run scoreboard players set "timer switch" game 1
execute if score game game matches 100.. run scoreboard players reset game game
# = admin stuff =
execute as @a[tag=host, tag=lobby, tag=!game, tag=!spectator] at @s run gamemode creative @s
execute as @a[tag=host1] at @s run kill @a[r=2]
# pick up marsh :P
execute as @a[tag=host2, hasitem={item=brr:marshmallow997_plush, location=slot.weapon.mainhand}] at @s positioned ^ ^ ^2 run tp @a[name=Marshmallow997, r=10] ^ ^ ^-1.2 facing @s
execute as @a[tag=host3, hasitem={item=brr:bonnie_plush, location=slot.weapon.mainhand}] at @s positioned ^ ^ ^2 run tp @a[name=BonnieRobloxRIP, r=10] ^ ^ ^-1.5 facing @s
execute as @a[tag=lobby, tag=!host] at @s run stopsound @s music.game.subspace.game
execute as @a[tag=lobby, tag=!host] at @s run stopsound @s music.game.subspace.game02
execute as @a[tag=lobby, tag=!host] at @s run stopsound @s music.game.subspace.game03
# = skins =
execute if score skin lobby matches 3 run fog @a pop subspace
execute if score skin lobby matches 3 run fog @a pop halloween
execute if score skin lobby matches 2 run fog @a push brr:halloween halloween
execute if score skin lobby matches 2 run fog @a pop subspace
execute if score skin lobby matches 1 run fog @a push brr:subspace subspace
execute if score skin lobby matches 1 run fog @a pop halloween
execute if score skin lobby matches 1 run particle brr:subspace_lobby 1 -12 -6
execute if score skin lobby matches 1 run particle brr:subspace_lobby 1 -12 -35
execute if score skin lobby matches 0 run fog @a pop subspace
execute if score skin lobby matches 0 run fog @a pop halloween
execute if score skin lobby matches 1 run scoreboard players set music lobby -13