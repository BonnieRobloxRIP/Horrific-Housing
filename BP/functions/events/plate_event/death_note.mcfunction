# value setting
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, tag=!train2, tag=!nuked, tag=!subportal, name=!subspace, name=!blackhole, name=!inv, name=!beans, name=!sweeper] at @s run tag @s add deathnote
# summon
execute as @e[tag=deathnote, type=brr:plate] at @s run summon brr:death_note ~ ~ ~