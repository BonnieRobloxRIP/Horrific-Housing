# plate vanish
execute as @e[type=brr:plate, name=!inv, name=!subspace, name=!blackhole, scores={vanish=1..}] at @s run scoreboard players add @s vanish 1
execute as @e[type=brr:plate, name=!inv, name=!subspace, name=!blackhole, scores={vanish=1..}] at @s run particle brr:plate_vanishing ~ ~-1 ~-0.5
execute as @e[type=brr:plate, name=!inv, name=!subspace, name=!blackhole, scores={vanish=100..}] at @s run structure load E0M0 ~-4 ~-33 ~-5
execute as @e[type=brr:plate, name=!inv, name=!subspace, name=!blackhole, scores={vanish=100..}] at @s run kill @s