execute as @s[tag=shop, tag=!unequip, scores={particle_blue_flame=1}] at @s run tag @s add unequip
# unequip
execute as @s[tag=shop, tag=unequip, scores={particle_blue_flame=1}] at @s run scoreboard players set @s particle_blue_flame 0
execute as @s[tag=shop, tag=unequip, scores={particle_blue_flame=0}] at @s run playsound sfx.shop.unequip @s 131 4 -27
execute as @s[tag=shop, tag=unequip, scores={particle_blue_flame=0}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully unequipped particle"}]}
# equip
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s particle_purple_ring 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s particle_blue_flame 1
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s particle_green_sphere 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s particle_red_trail 0
execute as @s[tag=shop, tag=!unequip] at @s run scoreboard players set @s particle_fire_ring 0
execute as @s[tag=shop, tag=!unequip, scores={particle_blue_flame=1}] at @s run playsound sfx.shop.equip @s 131 4 -27
execute as @s[tag=shop, tag=!unequip, scores={particle_blue_flame=1}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully equipped particle"}]}
execute as @s[tag=shop, tag=unequip, scores={particle_blue_flame=0}] at @s run tag @s remove unequip
