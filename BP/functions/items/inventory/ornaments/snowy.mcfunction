execute as @s[tag=shop, tag=!unequip, scores={ornament_snowy=1}] at @s run tag @s add unequip
# unequip
execute as @s[tag=shop, tag=unequip, scores={ornament_snowy=1}] at @s run scoreboard players set @s ornament_snowy 0
execute as @s[tag=shop, tag=unequip, scores={ornament_snowy=0}] at @s run playsound sfx.shop.unequip @s 131 4 -27
execute as @s[tag=shop, tag=unequip, scores={ornament_snowy=0}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully unequipped ornament"}]}
# equip
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={equipped=..2}] at @s run scoreboard players set @s ornament_snowy 1
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={equipped=..3}] at @s run scoreboard players set @s ornament_snowy 1
execute as @s[tag=shop, tag=!unequip, scores={ornament_snowy=1}] at @s run playsound sfx.shop.equip @s 131 4 -27
execute as @s[tag=shop, tag=!unequip, scores={ornament_snowy=1}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully equipped ornament"}]}
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={equipped=3}] at @s run tellraw @s {"rawtext":[{"text": "§6You cannot equip more than §b3 §6Ornaments!"}]}
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={equipped=4}] at @s run tellraw @s {"rawtext":[{"text": "§6You cannot equip more than §b4 §6Ornaments!"}]}
execute as @s[tag=shop, tag=unequip, scores={ornament_snowy=0}] at @s run tag @s remove unequip
# load
execute as @s[tag=inv] at @s run function store_functions/preview_slots/slot1
execute as @s[tag=inv2] at @s run function store_functions/preview_slots/slot2
execute as @s[tag=inv3] at @s run function store_functions/preview_slots/slot3
execute as @s[tag=inv4] at @s run function store_functions/preview_slots/slot4
execute as @s[tag=inv5] at @s run function store_functions/preview_slots/slot5
execute as @s[tag=inv6] at @s run function store_functions/preview_slots/slot6
execute as @s[tag=inv7] at @s run function store_functions/preview_slots/slot7
execute as @s[tag=inv8] at @s run function store_functions/preview_slots/slot8
execute as @s[tag=inv9] at @s run function store_functions/preview_slots/slot9
execute as @s[tag=inv10] at @s run function store_functions/preview_slots/slot10
execute as @s[tag=inv11] at @s run function store_functions/preview_slots/slot11
execute as @s[tag=inv12] at @s run function store_functions/preview_slots/slot12
execute as @s[tag=inv13] at @s run function store_functions/preview_slots/slot13
execute as @s[tag=inv14] at @s run function store_functions/preview_slots/slot14
execute as @s[tag=inv15] at @s run function store_functions/preview_slots/slot15
execute as @s[tag=inv16] at @s run function store_functions/preview_slots/slot16
execute as @s[tag=inv17] at @s run function store_functions/preview_slots/slot17
execute as @s[tag=inv18] at @s run function store_functions/preview_slots/slot18
execute as @s[tag=inv19] at @s run function store_functions/preview_slots/slot19
execute as @s[tag=inv20] at @s run function store_functions/preview_slots/slot20