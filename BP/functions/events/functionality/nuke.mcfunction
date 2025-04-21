# scores
execute as @s[type=brr:plate, scores={"nuke switch"=1}] at @s run scoreboard players add @s nuke 1
# effects/particles
execute as @s[type=brr:plate, scores={nuke=1}] at @s run playsound particle.alarm9 @a
execute as @s[type=brr:plate, scores={"nuke switch"=-1}] at @s run particle brr:warning ^ ^ ^
# target finder
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=1}] at @s run scoreboard players operation @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper, scores={"nuke switch"=0}] "nuke id" = @s "nuke id"
# nuke send
execute as @s[type=brr:plate, scores={"nuke switch"=1, nuke=100..}] at @s run function events/nuke_properties/nuke_send
# nuke receive
execute as @s[type=brr:plate, tag=nuked] at @s run function events/nuke_properties/nuke_send
# end
execute as @s[type=brr:plate, tag=nuked, scores={nuke=150..}] at @s run kill @s
