# = events =
execute if score "event randomizer" game matches 1 run function events/plate_event/ice_floor

execute if score "event randomizer" game matches 2 run function events/plate_event/magma_floor

execute if score "event randomizer" game matches 3 run function events/player_event/nap

execute if score "event randomizer" game matches 4 run function events/plate_event/bank

execute if score "event randomizer" game matches 5 run function events/plate_event/store

execute if score "event randomizer" game matches 6 run function events/plate_event/igloo

execute if score "event randomizer" game matches 7 run function events/plate_event/border

execute if score "event randomizer" game matches 8 run function events/plate_event/security_wall

execute if score "event randomizer" game matches 9 run function events/player_event/potions

execute if score "event randomizer" game matches 10 run gamerule falldamage true
execute if score "event randomizer" game matches 10 run effect @r[tag=game] levitation 10 1 false

execute if score "event randomizer" game matches 11 run function events/plate_event/aliens

execute if score "event randomizer" game matches 12 run function events/plate_event/large

execute if score "event randomizer" game matches 13 run give @r[tag=game] brr:subspace_tripmine_block 1 0 {"can_place_on":{"blocks":["grass_block", "bedrock", "concrete", "planks", "wood", "stained_glass", "packed_ice", "magma", "honey_block", "brr:rgb_block", "brr:invisible", "leaves", "stonebrick", "stone_brick_stairs", "stone"]}}

execute if score "event randomizer" game matches 14 run function events/plate_event/campfire

execute if score "event randomizer" game matches 15 run function events/player_event/chill

execute if score "event randomizer" game matches 16 run function events/plate_event/maze

execute if score "event randomizer" game matches 17 run give @r[tag=game] brr:landmine 1 0 {"can_place_on":{"blocks":["grass_block", "bedrock", "concrete", "planks", "wood", "stained_glass", "packed_ice", "magma", "honey_block", "brr:rgb_block", "brr:invisible", "leaves", "stonebrick", "stone_brick_stairs", "obsidian", "stone"]}}

execute if score "event randomizer" game matches 18 run function events/plate_event/pc

execute if score "event randomizer" game matches 19 run function events/plate_event/flood_escape

execute if score "event randomizer" game matches 20 run function events/global_event/darkness

execute if score "event randomizer" game matches 21 run gamerule pvp true
execute if score "event randomizer" game matches 21 run give @r[tag=game] diamond_sword

execute if score "event randomizer" game matches 22 run function events/plate_event/homeless

execute if score "event randomizer" game matches 23 run function events/plate_event/lower

execute if score "event randomizer" game matches 24 run function events/plate_event/improved_house

execute if score "event randomizer" game matches 25 run function events/player_event/tnt

execute if score "event randomizer" game matches 26 run function events/player_event/murder_mystery

execute if score "event randomizer" game matches 27 run function events/plate_event/cake

execute if score "event randomizer" game matches 28 run function events/plate_event/lightning

execute if score "event randomizer" game matches 29 run function events/player_event/swap

execute if score "event randomizer" game matches 30 run function events/player_event/one_minute

execute if score "event randomizer" game matches 31 run function events/plate_event/mountain

execute if score "event randomizer" game matches 32 run function events/player_event/mining

execute if score "event randomizer" game matches 33 run tag @r[tag=game, tag=!game_ring] add game_ring

execute if score "event randomizer" game matches 34 run function events/plate_event/black_hole

execute if score "event randomizer" game matches 35 run function events/plate_event/meteor

execute if score "event randomizer" game matches 36 run tag @r[tag=game, tag=!speed] add speed

execute if score "event randomizer" game matches 37 run function events/plate_event/upside

execute if score "event randomizer" game matches 38 run function events/plate_event/taco

execute if score "event randomizer" game matches 39 run function events/plate_event/duel

execute if score "event randomizer" game matches 40 run function events/plate_event/revive

execute if score "event randomizer" game matches 41 run function events/plate_event/icicle

execute if score "event randomizer" game matches 42 run function events/plate_event/castle

execute if score "event randomizer" game matches 43 run tag @r[tag=game, tag=!jump] add jump

execute if score "event randomizer" game matches 44 run tag @r[tag=game, tag=!health] add health

execute if score "event randomizer" game matches 45 run function events/player_event/flashbang

execute if score "event randomizer" game matches 46 run function events/plate_event/train

execute if score "event randomizer" game matches 47 run give @r[tag=game, c=3] brr:banana 1 

execute if score "event randomizer" game matches 48 run function events/player_event/life_link

execute if score "event randomizer" game matches 49 run function events/plate_event/nuke

execute if score "event randomizer" game matches 50 run function events/plate_event/lil_john



execute if score "event randomizer" game matches 91 run tag @r[tag=game, tag=!lightbulb] add lightbulb

execute if score "event randomizer" game matches 92 run tag @r[tag=game, tag=!bsod] add bsod
execute if score "event randomizer" game matches 92 run function events/player_event/bsod

scoreboard players set "event randomizer" game 0
