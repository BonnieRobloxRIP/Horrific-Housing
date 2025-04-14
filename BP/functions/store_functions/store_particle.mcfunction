# = choosing =
clear @s[tag=shop, tag=particle]
execute as @s[tag=shop, tag=particle] at @s run scoreboard players random @s store_particle 1 5
execute as @s[tag=shop, tag=particle, tag=purple_ring, tag=blue_flame, tag=green_sphere, tag=red_trail, tag=fire_ring] at @s run scoreboard players set @s store_particle 6
# = give =
# purple_ring
execute as @s[tag=shop, tag=particle, tag=!purple_ring, scores={store_particle=1}] at @s run tag @s add particle2
execute as @s[tag=shop, tag=particle, tag=!purple_ring, scores={store_particle=1}] at @s run tag @s add purple_ring
# blue_flame
execute as @s[tag=shop, tag=particle, tag=!blue_flame, scores={store_particle=2}] at @s run tag @s add particle2
execute as @s[tag=shop, tag=particle, tag=!blue_flame, scores={store_particle=2}] at @s run tag @s add blue_flame
# green_sphere
execute as @s[tag=shop, tag=particle, tag=!green_sphere, scores={store_particle=3}] at @s run tag @s add particle2
execute as @s[tag=shop, tag=particle, tag=!green_sphere, scores={store_particle=3}] at @s run tag @s add green_sphere
# red_trail
execute as @s[tag=shop, tag=particle, tag=!red_trail, scores={store_particle=4}] at @s run tag @s add particle2
execute as @s[tag=shop, tag=particle, tag=!red_trail, scores={store_particle=4}] at @s run tag @s add red_trail
# fire_ring
execute as @s[tag=shop, tag=particle, tag=!fire_ring, scores={store_particle=5}] at @s run tag @s add particle2
execute as @s[tag=shop, tag=particle, tag=!fire_ring, scores={store_particle=5}] at @s run tag @s add fire_ring
# = end =
# - title -
execute as @s[tag=shop, tag=particle2] at @s run title @s title You got:
execute as @s[tag=shop, tag=particle2, scores={store_particle=1}] at @s run title @s subtitle §5§lThe Purple Ring!
execute as @s[tag=shop, tag=particle2, scores={store_particle=2}] at @s run title @s subtitle §b§lThe Blue Stars!
execute as @s[tag=shop, tag=particle2, scores={store_particle=3}] at @s run title @s subtitle §2§lThe Green Sphere!
execute as @s[tag=shop, tag=particle2, scores={store_particle=4}] at @s run title @s subtitle §4§lThe Red Trail!
execute as @s[tag=shop, tag=particle2, scores={store_particle=5}] at @s run title @s subtitle §e§lThe Fire Ring!
# - if all particles are unlocked
execute as @s[tag=shop, scores={store_particle=6}] at @s run tellraw @s {"rawtext":[{"text":"§3You already own all available particles!"}]}
execute as @s[tag=shop, scores={store_particle=6}] at @s run scoreboard players add @s coins_storage 500
execute as @s[tag=shop, scores={store_particle=6}] at @s run tag @s add particle2
# - remove tags -
execute as @s[tag=shop, tag=particle2] at @s run scoreboard players reset @s store_particle
execute as @s[tag=shop, tag=particle2] at @s run tag @s remove particle
execute as @s[tag=shop, tag=particle2] at @s run tag @s remove particle2