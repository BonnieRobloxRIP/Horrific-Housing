# choosing new murderer
execute as @r[tag=game, tag=!assassin] at @s run tag @s add assassin
execute as @r[tag=game, tag=!target] if score run tag @s add target
execute as @a[tag=assassin] at @s run give @s netherite_sword
# end
gamerule pvp true