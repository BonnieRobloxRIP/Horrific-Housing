# event
execute as @r[tag=game, tag=!flashbang] at @s run tag @s add flashbang1
execute as @a[tag=flashbang1] at @s run playsound sfx.events.flashbang @s
execute as @a[tag=flashbang1] at @s run tag @s add flashbang
execute as @a[tag=flashbang1] at @s run tag @s remove flashbang1
