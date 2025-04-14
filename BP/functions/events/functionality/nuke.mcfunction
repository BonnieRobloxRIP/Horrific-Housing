# scores
execute as @s[type=brr:plate, scores={"nuke switch"=1}] at @s run scoreboard players add @s nuke 1
# effects/particles
execute as @s[type=brr:plate, scores={nuke=1}] at @s run playsound particle.alarm9 @a
# target finder
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s run scoreboard players operation @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] "nuke id" = @s "nuke id"
execute as @s[type=brr:plate] at @s if score @s "nuke id" = @e[type=brr:plate] "nuke id" run scoreboard players set @s "nuke switch" -1
# nuke send
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=100..}] at @s run function events/nuke_properties/nuke_send
# nuke receive
execute as @s[type=brr:plate, tag=nuked] at @s run function events/nuke_properties/nuke_send
# end
