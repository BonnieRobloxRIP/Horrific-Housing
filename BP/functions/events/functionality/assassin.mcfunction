# scores
execute as @r[tag=assassin] at @s run scoreboard players remove assassin1 events 1
execute if score assassin1 events matches ..0 run scoreboard players remove @a[tag=assassin] "assassin timer" 1
execute if score assassin1 events matches ..0 run scoreboard players set assassin1 events 20
