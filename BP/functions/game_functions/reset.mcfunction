# = intiiation =
scoreboard players set players game -1
# = objectives =
# remove
scoreboard objectives remove alive
scoreboard objectives remove dm
scoreboard objectives remove vm
scoreboard objectives remove coins
scoreboard objectives remove wins
scoreboard objectives remove nap
scoreboard objectives remove events
scoreboard objectives remove potion
scoreboard objectives remove realms
scoreboard objectives remove duel
scoreboard objectives remove flashbang
scoreboard objectives remove vote
scoreboard objectives remove gamemodes
scoreboard objectives remove "black hole"
scoreboard objectives remove life_link
scoreboard objectives remove global
# add
scoreboard objectives add alive dummy
scoreboard objectives add dm dummy
scoreboard objectives add vm dummy
scoreboard objectives add coins dummy "§e§l Coins "
scoreboard objectives add wins dummy "§b§l Wins "
scoreboard objectives add nap dummy
scoreboard objectives add events dummy
scoreboard objectives add potion dummy
scoreboard objectives add realms dummy
scoreboard objectives add duel dummy
scoreboard objectives add flashbang dummy
scoreboard objectives add vote dummy
scoreboard objectives add gamemodes dummy
scoreboard objectives add "black hole" dummy
scoreboard objectives add life_link dummy
scoreboard objectives add global dummy
# setdisplay
scoreboard objectives setdisplay sidebar coins
scoreboard objectives setdisplay belowname wins
# = scores =
execute if score lever lobby matches 0 run scoreboard players set intermission lobby 21
execute if score lever lobby matches 1 run scoreboard players set intermission lobby 20
scoreboard players set "timer switch" game 0
scoreboard players set "game switch" game 0
scoreboard players set timer game 50
scoreboard players set singleplayer game 1
scoreboard players set "darkness switch" global 0
scoreboard players set darkness global 0
scoreboard players set subspace realms 0
scoreboard players set subspace1 realms 5
scoreboard players set blackhole realms 0
scoreboard players set blackhole1 realms 5
scoreboard players set blasttime gamemodes 90
scoreboard players set blasttimer gamemodes 5
scoreboard players set spleef gamemodes 2400
scoreboard players set nuke game 0
scoreboard players set E1 events 0
scoreboard players set E2 events 0
scoreboard players set E3 events 0
scoreboard players set E4 events 0
scoreboard players set E5 events 0
scoreboard players set E6 events 0
scoreboard players set E7 events 0
scoreboard players set E8 events 0
scoreboard players set E9 events 0
scoreboard players set E10 events 0
scoreboard players set E11 events 0
scoreboard players set E12 events 0
scoreboard players set E13 events 0
scoreboard players set E14 events 0
scoreboard players set E15 events 0
scoreboard players set E16 events 0
scoreboard players set E17 events 0
scoreboard players set E18 events 0
scoreboard players set E19 events 0
scoreboard players set E20 events 0
scoreboard players set E21 events 0
scoreboard players set E22 events 0
scoreboard players set E23 events 0
scoreboard players set E24 events 0
scoreboard players set E25 events 0
scoreboard players set E26 events 0
scoreboard players set E27 events 0
scoreboard players set E28 events 0
scoreboard players set E29 events 0
scoreboard players set E30 events 0
scoreboard players set E31 events 0
scoreboard players set E32 events 0
scoreboard players set E33 events 0
scoreboard players set E34 events 0
scoreboard players set E35 events 0
scoreboard players set E36 events 0
scoreboard players set E37 events 0
scoreboard players set E38 events 0
scoreboard players set E39 events 0
scoreboard players set E40 events 0
scoreboard players set E41 events 0
scoreboard players set E42 events 0
scoreboard players set E43 events 0
scoreboard players set E44 events 0
scoreboard players set E45 events 0
scoreboard players set E46 events 0
scoreboard players set E47 events 0
scoreboard players set E48 events 0
scoreboard players set E49 events 0
scoreboard players set E50 events 0
scoreboard players set E51 events 0
scoreboard players set E52 events 0
scoreboard players set E53 events 0
scoreboard players set E54 events 0
scoreboard players set E55 events 0
scoreboard players set E56 events 0
scoreboard players set E57 events 0
scoreboard players set E58 events 0
scoreboard players set E59 events 0
scoreboard players set E60 events 0
scoreboard players set E61 events 0
scoreboard players set E62 events 0
scoreboard players set E63 events 0
scoreboard players set E64 events 0
scoreboard players set E65 events 0
scoreboard players set E66 events 0
scoreboard players set E67 events 0
scoreboard players set E68 events 0
scoreboard players set E69 events 0
scoreboard players set E70 events 0
scoreboard players set E71 events 0
scoreboard players set E72 events 0
scoreboard players set E73 events 0
scoreboard players set E74 events 0
scoreboard players set E75 events 0
scoreboard players set E76 events 0
scoreboard players set E77 events 0
scoreboard players set E78 events 0
scoreboard players set E79 events 0
scoreboard players set E80 events 0
scoreboard players set E81 events 0
scoreboard players set E82 events 0
scoreboard players set E83 events 0
scoreboard players set E84 events 0
scoreboard players set E85 events 0
scoreboard players set E86 events 0
scoreboard players set E87 events 0
scoreboard players set E88 events 0
scoreboard players set E89 events 0
scoreboard players set E90 events 0
scoreboard players set E91 events 0
scoreboard players set E92 events 0
scoreboard players set E93 events 0
scoreboard players set E94 events 0
scoreboard players set E95 events 0
scoreboard players set E96 events 0
scoreboard players set E97 events 0
scoreboard players set E98 events 0
scoreboard players set E99 events 0
scoreboard players set E100 events 0
# = game area =
# structures
execute as @e[type=brr:plate, name=!subspace, name=!blackhole] at @s run structure load E0M0 ~-4 ~-31 ~-4 0_degrees none block_by_block 10
execute as @e[type=brr:plate, tag=train1] at @s run structure load E46M1d ~-64 ~-2 ~-4 
execute as @e[type=brr:plate, tag=train1] at @s run structure load E46M1d ~ ~-2 ~-4 
execute as @e[type=brr:plate, name=subspace] at @s run structure load subspaced ~-8 ~1 ~-8
execute as @e[type=brr:plate, name=blackhole] at @s run structure load blackholed ~-6 ~1 ~-6
execute unless score gamemode game matches 9 run structure load delete -32 -64 8 0_degrees none block_by_block 10
execute if score gamemode game matches 9 run structure load delete -34 -64 8 0_degrees none block_by_block 10
# entities
kill @e[type=brr:plate]
kill @e[type=brr:subspace_tripmine_entity]
kill @e[type=brr:laser_entity]
kill @e[type=thrown_trident]
# gamerules
gamerule showbordereffect false
gamerule showtags false
gamerule sendcommandfeedback false
gamerule showdeathmessages false
gamerule commandblockoutput false
gamerule commandblocksenabled true
gamerule pvp false
gamerule tntexplodes false
gamerule falldamage false
gamerule respawnblocksexplode false
gamerule doimmediaterespawn true
gamerule randomtickspeed 0
gamerule dofiretick false
gamerule doentitydrops false
gamerule dodaylightcycle false
gamerule domobloot false
gamerule domobspawning false
gamerule doweathercycle false
gamerule keepinventory true
gamerule dotiledrops false
gamerule mobgriefing false
gamerule spawnradius 0
gamerule recipesunlock false
difficulty peaceful
# the time of day based on the skin of the lobby
execute if score skin lobby matches 0 run time set 1000
execute if score skin lobby matches 1 run time set 13500
execute if score skin lobby matches 2 run time set 13000
execute if score skin lobby matches 3 run time set 13500
# sounds
stopsound @a music.game.event.tacos
stopsound @a sfx.events.nuke.nuke
stopsound @a sfx.events.homedesign
stopsound @a sfx.events.subspaceportal.plate_consuming_start
# = lobby =
# - main things -
execute if score skin lobby matches 0 run structure load lobby02 -12 -22 -27
execute if score skin lobby matches 0 run structure load parkour -16 -6 -57
execute if score skin lobby matches 1 run structure load lobby02_subspace -12 -22 -27
execute if score skin lobby matches 1 run structure load parkour_subspace -16 -6 -57
execute if score skin lobby matches 2 run structure load lobby02s1 -12 -22 -27
execute if score skin lobby matches 2 run structure load parkours1 -16 -6 -57
execute if score skin lobby matches 3 run structure load lobby02s2 -12 -22 -27
execute if score skin lobby matches 3 run structure load parkours2 -16 -6 -57
tp @a[tag=spectator] 0 1 -1
# - voting -
scoreboard players add gm1 vote 0
scoreboard players add gm2 vote 0
scoreboard players add gm3 vote 0
# - elevator -
execute if score "elevator position" lobby matches 1 run scoreboard players set "elevator direction" lobby 1
execute if score "elevator position" lobby matches 1 run scoreboard players set "elevator switch" lobby 1
execute if score "elevator position" lobby matches 1 run setblock -9 1 -2 air
execute if score "elevator position" lobby matches 1 run setblock -6 -15 -5 air
execute if score "elevator position" lobby matches 1 run setblock -9 1 -5 air
# = ending =
scoreboard players set gamemode game 0
scoreboard players set players game -2
