scoreboard objectives add vm dummy
scoreboard objectives add dm dummy
scoreboard objectives add pc dummy
scoreboard objectives add nmm dummy
scoreboard objectives add ufo dummy
scoreboard objectives add obby dummy
scoreboard objectives add taco dummy
scoreboard objectives add vote dummy
scoreboard objectives add game dummy
scoreboard objectives add shop dummy
scoreboard objectives add duel dummy
scoreboard objectives add nuke dummy
scoreboard objectives add kills dummy
scoreboard objectives add chill dummy
scoreboard objectives add floor dummy
scoreboard objectives add train dummy
scoreboard objectives add flood dummy
scoreboard objectives add alive dummy
scoreboard objectives add large dummy
scoreboard objectives add lobby dummy
scoreboard objectives add music dummy
scoreboard objectives add meteor dummy
scoreboard objectives add vanish dummy
scoreboard objectives add global dummy
scoreboard objectives add border dummy
scoreboard objectives add upside dummy
scoreboard objectives add events dummy
scoreboard objectives add icicle dummy
scoreboard objectives add realms dummy
scoreboard objectives add 1minute dummy
scoreboard objectives add subspace dummy
scoreboard objectives add rotation dummy
scoreboard objectives add plushies dummy
scoreboard objectives add mountain dummy
scoreboard objectives add equipped dummy
scoreboard objectives add assassin dummy
scoreboard objectives add gamemodes dummy
scoreboard objectives add flashbang dummy
scoreboard objectives add life_link dummy
scoreboard objectives add invisible dummy
scoreboard objectives add transition dummy
scoreboard objectives add store_page dummy
scoreboard objectives add music_game dummy
scoreboard objectives add house_color dummy
scoreboard objectives add win_storage dummy
scoreboard objectives add "ufo floor" dummy
scoreboard objectives add "ufo switch" dummy
scoreboard objectives add "taco music" dummy
scoreboard objectives add "black hole" dummy
scoreboard objectives add "nuke switch" dummy
scoreboard objectives add "taco switch" dummy
scoreboard objectives add coins_storage dummy
scoreboard objectives add "duel switch" dummy
scoreboard objectives add "train switch" dummy
scoreboard objectives add "flood button" dummy
scoreboard objectives add "ufo animation" dummy
scoreboard objectives add "security wall" dummy
scoreboard objectives add "meteor switch" dummy
scoreboard objectives add "icicle switch" dummy
scoreboard objectives add "train movement" dummy
scoreboard objectives add "event building" dummy
scoreboard objectives add "assassin timer" dummy
scoreboard objectives add "mountain switch" dummy
scoreboard objectives add "flood button switch" dummy


scoreboard players set skin lobby 0
scoreboard players set lever lobby 0
scoreboard players set players game 0
scoreboard players set gamemode game 0
scoreboard players set subspace lobby 0
scoreboard players set "event randomizer" game 0
scoreboard players set item1 subspace 0
scoreboard players set item2 subspace 0
scoreboard players set item3 subspace 0
scoreboard players set item4 subspace 0
scoreboard players set items subspace 0

tp @a 0 2 -1
function game_functions/reset
tag @s add host
scoreboard objectives add store_color dummy
scoreboard objectives add store_ornament dummy
scoreboard objectives add store_particle dummy
scoreboard objectives add store_perk dummy
scoreboard objectives add store_tag dummy

scoreboard objectives add ornament_pot dummy
scoreboard objectives add ornament_lamp dummy
scoreboard objectives add ornament_crane dummy
scoreboard objectives add ornament_farm_bales dummy
scoreboard objectives add ornament_tree dummy
scoreboard objectives add ornament_carpet dummy
scoreboard objectives add ornament_plush dummy
scoreboard objectives add ornament_ring dummy
scoreboard objectives add ornament_alastor dummy
scoreboard objectives add ornament_springtrap dummy
scoreboard objectives add ornament_seal dummy
scoreboard objectives add ornament_construction_site dummy
scoreboard objectives add ornament_yeeter dummy
scoreboard objectives add ornament_bushes dummy
scoreboard objectives add ornament_snowy dummy
scoreboard objectives add ornament_banana dummy
scoreboard objectives add ornament_sans dummy
scoreboard objectives add ornament_fan dummy
scoreboard objectives add ornament_mcdonalds dummy
scoreboard objectives add ornament_horns dummy
scoreboard objectives add ornament_melodie dummy
scoreboard objectives add ornament_janet dummy

scoreboard objectives add particle_purple_ring dummy
scoreboard objectives add particle_blue_flame dummy
scoreboard objectives add particle_green_sphere dummy
scoreboard objectives add particle_red_trail dummy
scoreboard objectives add particle_fire_ring dummy

scoreboard objectives add tag_lover dummy
scoreboard objectives add tag_og dummy
scoreboard objectives add tag_winner dummy
scoreboard objectives add tag_bunny dummy
scoreboard objectives add tag_cat dummy

tickingarea add -34 -32 8 34 32 72 game true
tickingarea add 80 0 24 110 64 60 realms true
