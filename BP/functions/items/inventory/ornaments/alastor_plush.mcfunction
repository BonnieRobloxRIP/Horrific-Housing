execute as @s[tag=shop, tag=!unequip, scores={ornament_alastor=1..}] at @s run tag @s add unequip
# unequip
# remove other plushies in orders
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1, ornament_plush=2..}] at @s run scoreboard players remove @s ornament_plush 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1, ornament_springtrap=2..}] at @s run scoreboard players remove @s ornament_springtrap 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1, ornament_seal=2..}] at @s run scoreboard players remove @s ornament_seal 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1, ornament_sans=2..}] at @s run scoreboard players remove @s ornament_sans 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1, ornament_melodie=2..}] at @s run scoreboard players remove @s ornament_melodie 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1, ornament_janet=2..}] at @s run scoreboard players remove @s ornament_janet 1
# 2 and up
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_plush=3..}] at @s run scoreboard players remove @s ornament_plush 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_springtrap=3..}] at @s run scoreboard players remove @s ornament_springtrap 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_seal=3..}] at @s run scoreboard players remove @s ornament_seal 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_sans=3..}] at @s run scoreboard players remove @s ornament_sans 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_melodie=3..}] at @s run scoreboard players remove @s ornament_melodie 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_janet=3..}] at @s run scoreboard players remove @s ornament_janet 1
# 3 and up
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_plush=4..}] at @s run scoreboard players remove @s ornament_plush 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_springtrap=4..}] at @s run scoreboard players remove @s ornament_springtrap 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=2, ornament_seal=4..}] at @s run scoreboard players remove @s ornament_seal 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=3, ornament_sans=4..}] at @s run scoreboard players remove @s ornament_sans 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=3, ornament_melodie=4..}] at @s run scoreboard players remove @s ornament_melodie 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=3, ornament_janet=4..}] at @s run scoreboard players remove @s ornament_janet 1
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=1..}] at @s run scoreboard players set @s ornament_alastor 0
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=0}] at @s run playsound sfx.shop.unequip @s 131 4 -27
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=0}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully unequipped plushie"}]}
# equip
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={plushies=0, equipped=..2}] at @s run scoreboard players set @s ornament_alastor 1
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={plushies=1, equipped=..2}] at @s run scoreboard players set @s ornament_alastor 2
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={plushies=2, equipped=..2}] at @s run scoreboard players set @s ornament_alastor 3
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={plushies=3, equipped=..2}] at @s run scoreboard players set @s ornament_alastor 4
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={plushies=0, equipped=..3}] at @s run scoreboard players set @s ornament_alastor 1
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={plushies=1, equipped=..3}] at @s run scoreboard players set @s ornament_alastor 2
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={plushies=2, equipped=..3}] at @s run scoreboard players set @s ornament_alastor 3
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={plushies=3, equipped=..3}] at @s run scoreboard players set @s ornament_alastor 4
execute as @s[tag=shop, tag=!unequip, scores={ornament_alastor=1..}] at @s run playsound sfx.shop.equip @s 131 4 -27
execute as @s[tag=shop, tag=!unequip, scores={ornament_alastor=1..}] at @s run tellraw @s {"rawtext":[{"text":"§aSuccessfully equipped plushie"}]}
execute as @s[tag=shop, tag=!unequip, tag=!4th_slot, scores={equipped=3}] at @s run tellraw @s {"rawtext":[{"text": "§6You cannot equip more than §b3 §6Ornaments!"}]}
execute as @s[tag=shop, tag=!unequip, tag=4th_slot, scores={equipped=4}] at @s run tellraw @s {"rawtext":[{"text": "§6You cannot equip more than §b4 §6Ornaments!"}]}
execute as @s[tag=shop, tag=unequip, scores={ornament_alastor=0}] at @s run tag @s remove unequip
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
