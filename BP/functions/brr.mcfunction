tag @s add house1
tag @s add house2
tag @s add house3
tag @s add house4
tag @s add house5
tag @s add house6
tag @s add house7
tag @s add house8
tag @s add house9
tag @s add house10
tag @s add house11
tag @s add house12
tag @s add game
tag @s remove lobby
clear @s
scoreboard players set gamemode game 5
function game_functions/game_setup/house_loader
structure load event_data -5 5 6
scoreboard players set item1 subspace 0
scoreboard players set item2 subspace 0
scoreboard players set item3 subspace 0
scoreboard players set item4 subspace 0
scoreboard players set items subspace 0
