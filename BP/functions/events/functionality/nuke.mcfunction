# scores
execute as @s[type=brr:plate, scores={"nuke switch"=1}] at @s run scoreboard players add @s nuke 1
# effects/particles
execute as @s[type=brr:plate, scores={nuke=1}] at @s run playsound particle.alarm9 @a
execute as @s[type=brr:plate, scores={"nuke switch"=-1}] at @s run particle brr:warning ^ ^ ^
# target finder
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 0 run tag @s add nuke1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 0 run tag @r[type=brr:plate, tag=!nuke1, tag=!nuke2, tag=!nuke3, tag=!nuke4, tag=!nuke5, tag=!nuke6, scores={"nuke switch"=0}] add nuke1
execute as @s[type=brr:plate, tag=nuke1, scores={"nuke switch"=0}] at @s if score nuke game matches 0 run scoreboard players set @s "nuke switch" -1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 1 run tag @s add nuke2
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 1 run tag @r[type=brr:plate, tag=!nuke1, tag=!nuke2, tag=!nuke3, tag=!nuke4, tag=!nuke5, tag=!nuke6, scores={"nuke switch"=0}] add nuke2
execute as @s[type=brr:plate, tag=nuke2, scores={"nuke switch"=0}] at @s if score nuke game matches 1 run scoreboard players set @s "nuke switch" -1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 2 run tag @s add nuke3
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 2 run tag @r[type=brr:plate, tag=!nuke1, tag=!nuke2, tag=!nuke3, tag=!nuke4, tag=!nuke5, tag=!nuke6, scores={"nuke switch"=0}] add nuke3
execute as @s[type=brr:plate, tag=nuke3, scores={"nuke switch"=0}] at @s if score nuke game matches 2 run scoreboard players set @s "nuke switch" -1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 3 run tag @s add nuke4
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 3 run tag @r[type=brr:plate, tag=!nuke1, tag=!nuke2, tag=!nuke3, tag=!nuke4, tag=!nuke5, tag=!nuke6, scores={"nuke switch"=0}] add nuke4
execute as @s[type=brr:plate, tag=nuke4, scores={"nuke switch"=0}] at @s if score nuke game matches 3 run scoreboard players set @s "nuke switch" -1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 4 run tag @s add nuke5
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 4 run tag @r[type=brr:plate, tag=!nuke1, tag=!nuke2, tag=!nuke3, tag=!nuke4, tag=!nuke5, tag=!nuke6, scores={"nuke switch"=0}] add nuke5
execute as @s[type=brr:plate, tag=nuke5, scores={"nuke switch"=0}] at @s if score nuke game matches 4 run scoreboard players set @s "nuke switch" -1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 5 run tag @s add nuke6
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s if score nuke game matches 5 run tag @r[type=brr:plate, tag=!nuke1, tag=!nuke2, tag=!nuke3, tag=!nuke4, tag=!nuke5, tag=!nuke6, scores={"nuke switch"=0}] add nuke6
execute as @s[type=brr:plate, tag=nuke6, scores={"nuke switch"=0}] at @s if score nuke game matches 5 run scoreboard players set @s "nuke switch" -1
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s run scoreboard players add nuke game 1
execute if score nuke game matches 6.. run scoreboard players set nuke game 0
# nuke send
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=100..}] at @s run function events/nuke_properties/nuke_send
# nuke receive
execute as @s[type=brr:plate, scores={"nuke switch"=-2}] at @s run function events/nuke_properties/nuke_receive
# end
execute as @s[type=brr:plate, scores={"nuke switch"=-2, nuke=150..}] at @s run kill @s
