# get all votes
# normal
execute as @a[tag=game] at @s if score @s vote matches 1 run scoreboard players add classic vote 1
execute as @a[tag=game] at @s if score @s vote matches 2 run scoreboard players add blast vote 1
execute as @a[tag=game] at @s if score @s vote matches 3 run scoreboard players add rapid vote 1
execute as @a[tag=game] at @s if score @s vote matches 4 run scoreboard players add stud vote 1
execute as @a[tag=game] at @s if score @s vote matches 5 run scoreboard players add oneplate vote 1
execute as @a[tag=game] at @s if score @s vote matches 6 run scoreboard players add scattered vote 1
execute as @a[tag=game] at @s if score @s vote matches 7 run scoreboard players add lava vote 1
execute as @a[tag=game] at @s if score @s vote matches 8 run scoreboard players add spleef vote 1
execute as @a[tag=game] at @s if score @s vote matches 9 run scoreboard players add line vote 1
execute as @a[tag=game] at @s if score @s vote matches 10 run scoreboard players add town vote 1
execute as @a[tag=game] at @s if score @s vote matches 11 run scoreboard players add ring vote 1
execute as @a[tag=game] at @s if score @s vote matches 12 run scoreboard players add sweeper vote 1
execute as @a[tag=game] at @s if score @s vote matches 13 run scoreboard players add twoplates vote 1
execute as @a[tag=game] at @s if score @s vote matches 14 run scoreboard players add murdertown vote 1
execute as @a[tag=game] at @s if score @s vote matches 15 run scoreboard players add sloweddown vote 1
execute as @a[tag=game] at @s if score @s vote matches 16 run scoreboard players add gear vote 1
execute as @a[tag=game] at @s if score @s vote matches 17 run scoreboard players add hotel vote 1
execute as @a[tag=game] at @s if score @s vote matches 18 run scoreboard players add islands vote 1
execute as @a[tag=game] at @s if score @s vote matches 19 run scoreboard players add heist vote 1
execute as @a[tag=game] at @s if score @s vote matches 20 run scoreboard players add stack vote 1
# look for highest number
scoreboard players operation max_votes vote = classic vote
scoreboard players operation max_votes vote > blast vote
scoreboard players operation max_votes vote > rapid vote
scoreboard players operation max_votes vote > stud vote
scoreboard players operation max_votes vote > oneplate vote
scoreboard players operation max_votes vote > scattered vote
scoreboard players operation max_votes vote > lava vote
scoreboard players operation max_votes vote > spleef vote
scoreboard players operation max_votes vote > line vote
scoreboard players operation max_votes vote > town vote
scoreboard players operation max_votes vote > ring vote
scoreboard players operation max_votes vote > sweeper vote
scoreboard players operation max_votes vote > twoplates vote
scoreboard players operation max_votes vote > murdertown vote
scoreboard players operation max_votes vote > sloweddown vote
scoreboard players operation max_votes vote > gear vote
scoreboard players operation max_votes vote > hotel vote
scoreboard players operation max_votes vote > islands vote
scoreboard players operation max_votes vote > heist vote
scoreboard players operation max_votes vote > stack vote
# pick winner
execute if score max_votes vote = classic vote run tag @a[scores={vote=1}] add vote_winner
execute if score max_votes vote = blast vote run tag @a[scores={vote=2}] add vote_winner
execute if score max_votes vote = rapid vote run tag @a[scores={vote=3}] add vote_winner
execute if score max_votes vote = stud vote run tag @a[scores={vote=4}] add vote_winner
execute if score max_votes vote = oneplate vote run tag @a[scores={vote=5}] add vote_winner
execute if score max_votes vote = scattered vote run tag @a[scores={vote=6}] add vote_winner
execute if score max_votes vote = lava vote run tag @a[scores={vote=7}] add vote_winner
execute if score max_votes vote = spleef vote run tag @a[scores={vote=8}] add vote_winner
execute if score max_votes vote = line vote run tag @a[scores={vote=9}] add vote_winner
execute if score max_votes vote = town vote run tag @a[scores={vote=10}] add vote_winner
execute if score max_votes vote = ring vote run tag @a[scores={vote=11}] add vote_winner
execute if score max_votes vote = sweeper vote run tag @a[scores={vote=12}] add vote_winner
execute if score max_votes vote = twoplates vote run tag @a[scores={vote=13}] add vote_winner
execute if score max_votes vote = murdertown vote run tag @a[scores={vote=14}] add vote_winner
execute if score max_votes vote = sloweddown vote run tag @a[scores={vote=15}] add vote_winner
execute if score max_votes vote = gear vote run tag @a[scores={vote=16}] add vote_winner
execute if score max_votes vote = hotel vote run tag @a[scores={vote=17}] add vote_winner
execute if score max_votes vote = islands vote run tag @a[scores={vote=18}] add vote_winner
execute if score max_votes vote = heist vote run tag @a[scores={vote=19}] add vote_winner
execute if score max_votes vote = stack vote run tag @a[scores={vote=20}] add vote_winner
# choice
scoreboard players operation choice vote = @r[tag=vote_winner] vote
# gamemode set up
execute if score choice vote matches 1 run scoreboard players set gamemode game 0
execute if score choice vote matches 2 run scoreboard players set gamemode game 1
execute if score choice vote matches 3 run scoreboard players set gamemode game 2
execute if score choice vote matches 4 run scoreboard players set gamemode game 3
execute if score choice vote matches 5 run scoreboard players set gamemode game 4
execute if score choice vote matches 6 run scoreboard players set gamemode game 5
execute if score choice vote matches 7 run scoreboard players set gamemode game 6
execute if score choice vote matches 8 run scoreboard players set gamemode game 7
execute if score choice vote matches 9 run scoreboard players set gamemode game 8
execute if score choice vote matches 10 run scoreboard players set gamemode game 9
execute if score choice vote matches 11 run scoreboard players set gamemode game 10
execute if score choice vote matches 12 run scoreboard players set gamemode game 11
execute if score choice vote matches 13 run scoreboard players set gamemode game 12
execute if score choice vote matches 14 run scoreboard players set gamemode game 13
execute if score choice vote matches 15 run scoreboard players set gamemode game 14
execute if score choice vote matches 16 run scoreboard players set gamemode game 15
execute if score choice vote matches 17 run scoreboard players set gamemode game 16
execute if score choice vote matches 18 run scoreboard players set gamemode game 17
execute if score choice vote matches 19 run scoreboard players set gamemode game 18
execute if score choice vote matches 20 run scoreboard players set gamemode game 19