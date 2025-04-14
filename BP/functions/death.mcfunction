# death
scoreboard players set @a[scores={alive=!2}] alive 0
scoreboard players set @e[type=player] alive 1
execute as @a[scores={alive=0}, tag=game] at @s run scoreboard players add @p[tag=murderer, r=5] kills 1
execute as @a[scores={alive=0}, tag=game] at @s run clear @s
execute as @a[scores={alive=0}, tag=game] at @s run stopsound @s music.event.tacos
execute as @a[scores={alive=0}, tag=game] at @s run stopsound @s sfx.game.homedesign
execute as @a[scores={alive=0}, tag=game] at @s if score gamemode game matches 6 run scoreboard players add "lava level" gamemodes 1
execute as @a[scores={alive=0}, tag=game, tag=house1] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate01] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house2] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate02] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house3] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate03] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house4] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate04] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house5] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate05] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house6] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate06] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house7] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate07] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house8] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate08] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house9] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate09] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house10] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate10] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house11] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate11] vanish 1
execute as @a[scores={alive=0}, tag=game, tag=house12] at @s if score gamemode game matches 8 run scoreboard players add @e[type=brr:plate, tag=plate12] vanish 1
execute as @a[scores={alive=0}, tag=game] at @s run scoreboard players remove players game 1
execute as @a[scores={alive=0}, tag=game] at @s run scoreboard players random @s dm 1 257
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 1 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is #2"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 2 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" took the L"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 3 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot their password"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 4 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to pay their taxes"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 5 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" breathed incorrectly"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 6 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" had an invalid opinion"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 7 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought they could fly"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 8 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" challenged a rock to a debate"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 9 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" died in a fire"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 10 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" doesn't know what 2+2 is"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 11 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to do their homework"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 12 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was late for class"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 13 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" overslept"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 14 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s favourite show got spoiled"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 15 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to drink water today"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 16 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" stared at the sun"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 17 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got disconnected"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 18 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" has 5% battery"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 19 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not want to chill"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 20 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" has 9 missed calls from Issac Newton"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 21 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" doesn't know how to read"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 22 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" put a spoon in the microwave"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 23 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ran out of money"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 24 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s free trial of existence has expired"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 25 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s pickles dried out"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 26 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to charge their phone"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 27 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not get their 8 hours of sleep"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 28 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" reminded the teacher of the homework"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 29 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" watched Fallen Kingdom Minecraft Parody and cried"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 30 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" smashed their keyboard"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 31 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was sent to Ohio"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 32 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got L rizz"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 33 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought the plastic fruits were real"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 34 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" didn't make it"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 35 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" dropped the soap"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 36 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got an unskippable ad"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 37 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" bit their tongue"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 38 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got a paper cut"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 39 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ran out of power"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 40 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got locked in the basement"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 41 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got jumpscared"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 42 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ran out of HP"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 43 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought they were in a dream"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 44 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" dropped their phone"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 45 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" strayed from the path"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 46 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was taken too soon..."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 47 run tellraw @a {"rawtext":[{"text": "§4Fly high, "}, {"selector": "@s"}, {"text":" :("}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 48 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" spilled their milk"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 49 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got turned into a marketable plushie"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 50 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgor"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 51 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is legally blind"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 52 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is devastated"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 53 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" didn't forward the chain text"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 54 run tellraw @a {"rawtext":[{"text": "§4Crazy? "}, {"selector": "@s"}, {"text":" was crazy once..."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 55 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":": 'Tis but a scratch'"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 56 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" isn't coming back from that"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 57 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" imploded"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 58 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got food poisoning"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 59 run tellraw @a {"rawtext":[{"text": "§4Someone called "}, {"selector": "@s"}, {"text":" unfunny"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 60 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" tried to binge One Piece"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 61 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" wasn't paying attention"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 62 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got copyright struck"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 63 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got 360 no-scope'd"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 64 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not fill up the creeper hole"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 65 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" looked at an enderman"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 66 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" §l§othought that herobrine was removed"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 67 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" misclicked"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 68 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did nothing and died"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 69 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is mad"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 70 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got added to an FBI watchlist"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 71 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" couldn't think of a comeback"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 72 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" lagged"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 73 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" deleted system32"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 74 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" needs to take a shower after this one"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 75 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":".exe has stopped working"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 76 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s mother walked in"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 77 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s pet died"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 78 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s plane of existence ceased to exist."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 79 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s toilet was too far away."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 80 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" woke up at 3 AM"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 81 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" zoned out for a second"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 82 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was put down for aggressive behavior..."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 83 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was part of the 50% Thanos wiped out"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 84 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was lost in the vacuum of space."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 85 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was late to class"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 86 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was camping"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 87 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" wants to go cry"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 88 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" drank a litre of taco bell hot sauce"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 89 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" drank lava?"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 90 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" dropped their croissant"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 91 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" drove a car... off a cliff."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 92 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" drowned in soup"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 93 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" evaporated."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 94 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" face palmed the floor"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 95 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" flipped the switch"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 96 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to bring their UNO reverse card."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 97 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to drink a healing potion"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 98 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got a robot arm, that turned rogue and attacked them."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 99 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got a rock in their shoe"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 100 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got a sunburn from the moon???"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 101 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" wanted to reconstruct Germany to its former glory"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 102 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" fell and did not stand up"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 103 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot the time"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 104 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought they are him"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 105 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s browser history got leaked"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 106 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ran out of toilet paper"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 107 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" succumbed to mind control"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 108 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not see that meteor coming"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 109 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got abducted"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 110 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was crushed by a giant rolling donut"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 111 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is dead. not a big surprise"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 112 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" flew the plane to the towers"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 113 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got drafted for WW3"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 114 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" lost 7 trophies"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 115 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" saw things they were not supposed to see"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 116 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got betrayed by an allie"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 117 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is about to rage quit"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 118 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" dropped their ice cream"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 119 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" died to a headcrab"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 120 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is too far gone"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 121 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s brains are rotten"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 122 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" will regret this"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 123 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got their balls snatched"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 124 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s air conditioner broke in the summer"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 125 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was turned into the ash baby"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 126 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not believe in gravity"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 127 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought they were immune"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 128 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" blamed the game after they got punched of the map"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 129 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" asked for creative mode"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 130 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" bullied a mod"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 131 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not like and subscribe"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 132 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thinks skibidi toilet is cringe"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 133 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" watched too much Cocomelon"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 134 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" dived from a great height into shallow water"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 135 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got an E for Effort"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 136 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got coal for Christmas"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 137 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got coffin danced"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 138 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got fired"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 139 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got gnome'd"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 140 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got hit by a child on a bike."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 141 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got hit by a raining taco."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 142 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got lost in IKEA."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 143 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got smacked by Will Smith."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 144 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is back to level 0"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 145 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is a failure"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 146 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is no more"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 147 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" jumped into a black hole."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 148 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" knocked on the wrong door"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 149 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" kissed a toad and it didn't turn into a prince"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 150 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" lost a few braincells"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 151 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s purchase could not be refunded"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 152 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" answered a rhetorical question."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 153 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got rickrolled"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 154 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" stepped on a lego"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 155 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" failed nnn"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 156 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" killed an important to their mission NPC"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 157 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" stepped on the landmine like a fool"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 158 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" stepped on dog poo"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 159 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" lost their keys"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 160 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" lost their lunch money"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 161 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to bring their money to the store (they realized it at the checkout section)"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 162 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" died "}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 163 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" found a coin not native to their currency"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 164 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s electricity cutted out"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 165 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got caught selling candy to the kids"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 166 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" mispronounced something during an argument (they are done for)"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 167 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"... ahhh"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 168 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ngl bro idk what to even say to that one... wth was that "}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 169 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" failed a simple jump"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 170 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought they could pull this off"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 171 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought of their failed plans as they were descending towards the darkness"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 172 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not leave a 5 star review on this game's page"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 173 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was not patient enough"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 174 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" smacked their head at the back of their bed"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 175 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" had a nightmare"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 176 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s keyboard disconnected mid-jump"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 177 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":": 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH'"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 178 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" bid farewell cruel world"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 179 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not join the Discord server"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 180 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got trapped in the book Charlotte's Web (they are scared of spiders)"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 181 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":": 'OHhhhh my PcccCCCC§kccccccccccccccccccccccc!!!!!!'"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 182 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ate too many chicken nuggets"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 183 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought these death messages weren't funny"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 184 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" has been kicked from the game"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 185 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" watched an emotional film"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 186 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" didn't get much sleep"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 187 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got asked to answer the teacher when they didn't put their hand up"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 188 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got reverse UNO carded"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 189 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" wanted to be a soundcloud rapper when they grow up"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 190 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" said a not nice word"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 191 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" yeeted themself off the plate"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 192 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" surrendered"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 193 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got trapped in a border"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 194 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" thought they were slick"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 195 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" stood on a rake"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 196 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got consumed into the subspace realm"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 197 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is crying in real life for this"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 198 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" had their life linked to a suicidal person"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 199 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" went off the rails"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 200 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" called the teacher mum"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 201 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" will win the next round instead"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 202 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" lost all their money on the stock market"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 203 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" had a family and kids"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 204 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" went afk"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 205 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" commited red chat message"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 206 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was chosen as a sacrifice"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 207 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got on the wrong plate"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 208 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" stared at a rail for too long"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 209 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" said: 'ERM.. WHAT THE SIGMA!'"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 210 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" couldn't handle the stress"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 211 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" didn't like trains"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 212 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s Brain wasn't braining"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 213 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" should've seen that coming"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 214 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ate a very hot chili"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 215 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" should honestly just leave the game they are so bad"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 216 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" condensed into soda"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 217 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was burnt to a crisp"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 218 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was interrupted"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 219 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did an awkward handshake"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 220 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to breathe"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 221 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" has left the chat"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 222 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to wash their hands"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 223 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ate concrete"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 224 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" headed right into the path of danger"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 225 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ate one million carrots"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 226 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" went to get a snack..."}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 227 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got gunned down... with a water pistol"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 228 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" has fallen into the river in Lego city"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 229 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got April fooled in the wrong month"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 230 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" chewed 5 gum"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 231 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" laughed at a funeral"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 232 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" "}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 233 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot their friend's birthday"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 234 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" forgot to say good morning to their loved one"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 235 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not do the dishes"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 236 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was not mentally prepared for this one"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 237 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" tried but could not do it in the end"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 238 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ate a spoonful of cinnamon"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 239 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" had their grave dug by the Grave Digger"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 240 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not bow before the subspace leaders"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 241 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":"'s mouse suicided mid-fight"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 242 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" installed Horion"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 243 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" pressed ctrl + alt + del"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 244 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got mojang'd"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 245 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" said the n word infront of black people"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 246 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is not a cat person"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 247 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" is not a bunny person"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 248 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" made the Dispatcher mad"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 249 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" went against the bunny army"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 250 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" did not get the joke"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 251 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" was shot by Luigi"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 252 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" ate a Carolina Reaper pepper"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 253 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" made it to the toilet and expected rain but thunder came"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 254 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" used the wrong hair in a polyjuice potion (it was pet fur)"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 255 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" spontaneously combusted"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 256 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" asked what are the real world applications of Calculus (there is none)"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 257 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" got attacked by a bunch of fucking niggers"}]}
execute as @a[scores={alive=0}, tag=game] at @s if score @s dm matches 258 run tellraw @a {"rawtext":[{"text": "§4"}, {"selector": "@s"}, {"text":" "}]}

execute as @a[scores={alive=0}, tag=game] at @s run scoreboard players reset @s dm
execute as @a[scores={alive=0}, tag=game] at @s run tag @s remove game
scoreboard players set @a[scores={alive=0}] alive 2
execute as @e[type=player, scores={alive=2}] at @s run tag @s remove game
execute as @e[type=player, scores={alive=2}] at @s run tp @s 0 1 -1

# win
execute as @a[tag=game, scores={alive=1}] at @s if score singleplayer game matches 0 if score players game matches 1 if score "timer switch" game matches 1 unless score gamemode game matches 1 run tag @s add win
execute as @a[tag=win] at @s run scoreboard players add @s win_storage 1
execute as @a[tag=win] at @s run scoreboard players add @s coins_storage 80
execute as @a[tag=win] at @s run scoreboard players random @s vm 1 179
execute as @a[tag=win] at @s run playsound sfx.game.win @a
execute as @a[tag=win] at @s if score @s vm matches 1 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is #1"}]}
execute as @a[tag=win] at @s if score @s vm matches 2 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " doesn't know how to take L's"}]}
execute as @a[tag=win] at @s if score @s vm matches 3 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won. But at what cost?"}]}
execute as @a[tag=win] at @s if score @s vm matches 4 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " leveled up!"}]}
execute as @a[tag=win] at @s if score @s vm matches 5 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " showed everyone how it's done"}]}
execute as @a[tag=win] at @s if score @s vm matches 6 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " respects their elders"}]}
execute as @a[tag=win] at @s if score @s vm matches 7 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is a pro"}]}
execute as @a[tag=win] at @s if score @s vm matches 8 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " gets all the women"}]}
execute as @a[tag=win] at @s if score @s vm matches 9 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is famous"}]}
execute as @a[tag=win] at @s if score @s vm matches 10 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " has ascended"}]}
execute as @a[tag=win] at @s if score @s vm matches 11 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " deserved this win"}]}
execute as @a[tag=win] at @s if score @s vm matches 12 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " could not be more proud"}]}
execute as @a[tag=win] at @s if score @s vm matches 13 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got extra credit"}]}
execute as @a[tag=win] at @s if score @s vm matches 14 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is on another level"}]}
execute as @a[tag=win] at @s if score @s vm matches 15 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " couldn't have done it without you"}]}
execute as @a[tag=win] at @s if score @s vm matches 16 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won flawlessly"}]}
execute as @a[tag=win] at @s if score @s vm matches 17 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is valid"}]}
execute as @a[tag=win] at @s if score @s vm matches 18 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " wins by doing absolutely nothing"}]}
execute as @a[tag=win] at @s if score @s vm matches 19 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won fair and square"}]}
execute as @a[tag=win] at @s if score @s vm matches 20 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " found money in their pocket"}]}
execute as @a[tag=win] at @s if score @s vm matches 21 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " cheated but won anyway"}]}
execute as @a[tag=win] at @s if score @s vm matches 22 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " takes no prisoners"}]}
execute as @a[tag=win] at @s if score @s vm matches 23 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got really lucky"}]}
execute as @a[tag=win] at @s if score @s vm matches 24 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " should be dead, but they're not"}]}
execute as @a[tag=win] at @s if score @s vm matches 25 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " always comes back"}]}
execute as @a[tag=win] at @s if score @s vm matches 26 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won. Shocker"}]}
execute as @a[tag=win] at @s if score @s vm matches 27 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is not sure how they won"}]}
execute as @a[tag=win] at @s if score @s vm matches 28 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " never reveals their secrets"}]}
execute as @a[tag=win] at @s if score @s vm matches 29 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is on a roll!"}]}
execute as @a[tag=win] at @s if score @s vm matches 30 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " lives to see another day"}]}
execute as @a[tag=win] at @s if score @s vm matches 31 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " stayed determined"}]}
execute as @a[tag=win] at @s if score @s vm matches 32 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " redeemed their bonus points"}]}
execute as @a[tag=win] at @s if score @s vm matches 33 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " minded their own business"}]}
execute as @a[tag=win] at @s if score @s vm matches 34 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " defeated their evil clone!"}]}
execute as @a[tag=win] at @s if score @s vm matches 35 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got up on the right side of the bed"}]}
execute as @a[tag=win] at @s if score @s vm matches 36 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got +99 social credit!"}]}
execute as @a[tag=win] at @s if score @s vm matches 37 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " avoided getting cancelled!"}]}
execute as @a[tag=win] at @s if score @s vm matches 38 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " slept through the round... and won???"}]}
execute as @a[tag=win] at @s if score @s vm matches 39 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is getting their own merch line!"}]}
execute as @a[tag=win] at @s if score @s vm matches 40 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got promoted!"}]}
execute as @a[tag=win] at @s if score @s vm matches 41 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won an argument"}]}
execute as @a[tag=win] at @s if score @s vm matches 42 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " thinks it's oof or be oofed"}]}
execute as @a[tag=win] at @s if score @s vm matches 43 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " has the power of God and Anime on their side!!!"}]}
execute as @a[tag=win] at @s if score @s vm matches 44 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is the talk of the town"}]}
execute as @a[tag=win] at @s if score @s vm matches 45 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": "'s cat got famous"}]}
execute as @a[tag=win] at @s if score @s vm matches 46 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is officially not the worst!"}]}
execute as @a[tag=win] at @s if score @s vm matches 47 run tellraw @a {"rawtext":[{"text": "§aThe odds were in "}, {"selector": "@s"}, {"text": "'s favour"}]}
execute as @a[tag=win] at @s if score @s vm matches 48 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " didn't spoil the movie!"}]}
execute as @a[tag=win] at @s if score @s vm matches 49 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " made a hit tweet"}]}
execute as @a[tag=win] at @s if score @s vm matches 50 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " survived till 6AM!"}]}
execute as @a[tag=win] at @s if score @s vm matches 51 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won the lottery!"}]}
execute as @a[tag=win] at @s if score @s vm matches 52 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " wins!"}]}
execute as @a[tag=win] at @s if score @s vm matches 53 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " cooked a 5 star meal!"}]}
execute as @a[tag=win] at @s if score @s vm matches 54 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " reached a new high score"}]}
execute as @a[tag=win] at @s if score @s vm matches 55 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is just too good."}]}
execute as @a[tag=win] at @s if score @s vm matches 56 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " made their father proud"}]}
execute as @a[tag=win] at @s if score @s vm matches 57 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " wrote an essay: 'Connection terminated. I'm sorry to interupt you Elizabeth, if you still even remember that name, but I'm afraid you've been misinformed. You're not here to recieve a gift, nor have you been called here by the individual you assume, although you have indeed been called. You have all been called here, into a labyrinth of sounds and smells, misdirection and misfortune. A labirynth with no exit, a maze with no prize. You don't even realize that you are trapped. Your lust for blood has driven you in endless circles, chasing the cries of children in some unseen chamber always seeming so near, yet somehow out of reach. But you will never find them, none of you will. This is where your story ends. And to you, my brave volunteer, who somehow found this job listing not intended for you, although there was a way out planned for you, I have a feeling that's not what you want. I have a feeling that you are right where you want to be. I am remaining as well. I am nearby. This place will not be remembered and the memory of everything that started this can finally begin to fade away, as the agony of every tragedy should. And to you monsters trapped in the corridors, be still, and give up your spirits. They don't belong to you. For most of you, I believe there is peace and perhaps more waiting for you after the smoke clears. Although for one of you, the darkest pit of hell has opened to swallow you whole, so don't keep the devil waiting old friend. My daughter, if you can hear me, I knew you would return as well. It's in your nature to protect the innocent. I'm sorry that on that day, the day you were shut out and left to die, no one was there to lift you up into their arms, the way you lifted others into yours. And then, what became of you? I should have known you wouldn't be contempt to just disappear, not my daughter. I couldn't save you then, so let me save you now. It's time to rest. For you, and those you have carried in your arms. This ends, for all of us. End communication. *beep*' what ya think?"}]}
execute as @a[tag=win] at @s if score @s vm matches 58 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " ended someone's whole career"}]}
execute as @a[tag=win] at @s if score @s vm matches 59 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " clutched the round."}]}
execute as @a[tag=win] at @s if score @s vm matches 60 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " collected the infinity stones"}]}
execute as @a[tag=win] at @s if score @s vm matches 61 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " completed the parkour without a single doubt"}]}
execute as @a[tag=win] at @s if score @s vm matches 62 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " countered their sibling's blame (the sibling got in trouble)"}]}
execute as @a[tag=win] at @s if score @s vm matches 63 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " managed to recover from an Account Deletion"}]}
execute as @a[tag=win] at @s if score @s vm matches 64 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got unbanned from the game"}]}
execute as @a[tag=win] at @s if score @s vm matches 65 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " redeemed themselves"}]}
execute as @a[tag=win] at @s if score @s vm matches 66 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " somehow won after being thrown far off the map"}]}
execute as @a[tag=win] at @s if score @s vm matches 67 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " safely walked down the stairs"}]}
execute as @a[tag=win] at @s if score @s vm matches 68 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got their revenge"}]}
execute as @a[tag=win] at @s if score @s vm matches 69 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": "'s dad came back with the milk"}]}
execute as @a[tag=win] at @s if score @s vm matches 70 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got the secret ending"}]}
execute as @a[tag=win] at @s if score @s vm matches 71 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " predicted their future, and they were right!"}]}
execute as @a[tag=win] at @s if score @s vm matches 72 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " Won a MrBeast Challenge"}]}
execute as @a[tag=win] at @s if score @s vm matches 73 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " survived the snap."}]}
execute as @a[tag=win] at @s if score @s vm matches 74 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got an A+!"}]}
execute as @a[tag=win] at @s if score @s vm matches 75 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won as the impostor."}]}
execute as @a[tag=win] at @s if score @s vm matches 76 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " made a short video and got 100k likes."}]}
execute as @a[tag=win] at @s if score @s vm matches 77 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " thinks before they act! (quite rare these days gotta tell ya!)"}]}
execute as @a[tag=win] at @s if score @s vm matches 78 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " restored balance."}]}
execute as @a[tag=win] at @s if score @s vm matches 79 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " remembered their friend's birthday"}]}
execute as @a[tag=win] at @s if score @s vm matches 80 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " did not disappoint the spectators"}]}
execute as @a[tag=win] at @s if score @s vm matches 81 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got a bunny!"}]}
execute as @a[tag=win] at @s if score @s vm matches 82 run tellraw @a {"rawtext":[{"text": "§aEveryone is afraid of "}, {"selector": "@s"}, {"text": " after this W"}]}
execute as @a[tag=win] at @s if score @s vm matches 83 run tellraw @a {"rawtext":[{"text": "§aLegend has it that "}, {"selector": "@s"}, {"text": " never gave up"}]}
execute as @a[tag=win] at @s if score @s vm matches 84 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " said no in the face of death"}]}
execute as @a[tag=win] at @s if score @s vm matches 85 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " helped their mother"}]}
execute as @a[tag=win] at @s if score @s vm matches 86 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " was found not guilty"}]}
execute as @a[tag=win] at @s if score @s vm matches 87 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " knows their abc's!"}]}
execute as @a[tag=win] at @s if score @s vm matches 88 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " studied hard and won"}]}
execute as @a[tag=win] at @s if score @s vm matches 89 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " enjoys watching ya'll fall"}]}
execute as @a[tag=win] at @s if score @s vm matches 90 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " doesn't need to touch grass"}]}
execute as @a[tag=win] at @s if score @s vm matches 91 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is above the rules"}]}
execute as @a[tag=win] at @s if score @s vm matches 92 run tellraw @a {"rawtext":[{"text": "§aSometimes "}, {"selector": "@s"}, {"text": " can play the game right"}]}
execute as @a[tag=win] at @s if score @s vm matches 93 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " bought land in the metaverse"}]}
execute as @a[tag=win] at @s if score @s vm matches 94 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " successfully MLG'd"}]}
execute as @a[tag=win] at @s if score @s vm matches 95 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got all 7 notebooks"}]}
execute as @a[tag=win] at @s if score @s vm matches 96 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " escaped the facility"}]}
execute as @a[tag=win] at @s if score @s vm matches 97 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " knows how to duplicate diamonds"}]}
execute as @a[tag=win] at @s if score @s vm matches 98 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is rich"}]}
execute as @a[tag=win] at @s if score @s vm matches 99 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is mewing"}]}
execute as @a[tag=win] at @s if score @s vm matches 100 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is above average"}]}
execute as @a[tag=win] at @s if score @s vm matches 101 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " wins a golden toilet as their prize!"}]}
execute as @a[tag=win] at @s if score @s vm matches 102 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " played well."}]}
execute as @a[tag=win] at @s if score @s vm matches 103 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is a hero! (Except to those that they murdered)"}]}
execute as @a[tag=win] at @s if score @s vm matches 104 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " has ultra instinct."}]}
execute as @a[tag=win] at @s if score @s vm matches 105 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got an ez dub."}]}
execute as @a[tag=win] at @s if score @s vm matches 106 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " had gfuel in their system."}]}
execute as @a[tag=win] at @s if score @s vm matches 107 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " caught a shiny Pokémon"}]}
execute as @a[tag=win] at @s if score @s vm matches 108 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " approves this victory message."}]}
execute as @a[tag=win] at @s if score @s vm matches 109 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won 10 trophies"}]}
execute as @a[tag=win] at @s if score @s vm matches 110 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " redeemed their honour"}]}
execute as @a[tag=win] at @s if score @s vm matches 111 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " captured the avatar"}]}
execute as @a[tag=win] at @s if score @s vm matches 112 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " said no to teamers"}]}
execute as @a[tag=win] at @s if score @s vm matches 113 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is him"}]}
execute as @a[tag=win] at @s if score @s vm matches 114 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is never gonna let you down"}]}
execute as @a[tag=win] at @s if score @s vm matches 115 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " ain't a moron"}]}
execute as @a[tag=win] at @s if score @s vm matches 116 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " does not fall for that"}]}
execute as @a[tag=win] at @s if score @s vm matches 117 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " outsmarted the outsmarting"}]}
execute as @a[tag=win] at @s if score @s vm matches 118 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " never dies"}]}
execute as @a[tag=win] at @s if score @s vm matches 119 run tellraw @a {"rawtext":[{"text": "§aApplause for "}, {"selector": "@s"}, {"text": "! they did good :D"}]}
execute as @a[tag=win] at @s if score @s vm matches 120 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " respects everyone's opinion"}]}
execute as @a[tag=win] at @s if score @s vm matches 121 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " likes everyone"}]}
execute as @a[tag=win] at @s if score @s vm matches 122 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " rizzed you up"}]}
execute as @a[tag=win] at @s if score @s vm matches 123 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " overcame the brainrot"}]}
execute as @a[tag=win] at @s if score @s vm matches 124 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is wanted in all 50 states"}]}
execute as @a[tag=win] at @s if score @s vm matches 125 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " played the original game on Roblox"}]}
execute as @a[tag=win] at @s if score @s vm matches 126 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " retired their parents"}]}
execute as @a[tag=win] at @s if score @s vm matches 127 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is wholesome!"}]}
execute as @a[tag=win] at @s if score @s vm matches 128 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " has a happy family"}]}
execute as @a[tag=win] at @s if score @s vm matches 129 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " is respected by Saitama"}]}
execute as @a[tag=win] at @s if score @s vm matches 130 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " prayed today"}]}
execute as @a[tag=win] at @s if score @s vm matches 131 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " was blind and deaf yet they still won"}]}
execute as @a[tag=win] at @s if score @s vm matches 132 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " rickrolled Rick Astley"}]}
execute as @a[tag=win] at @s if score @s vm matches 133 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": "... Open the window Luthor"}]}
execute as @a[tag=win] at @s if score @s vm matches 134 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": ": 'Man when does this game get freakin goo- *sees this epic victory message*'"}]}
execute as @a[tag=win] at @s if score @s vm matches 135 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " planned it all"}]}
execute as @a[tag=win] at @s if score @s vm matches 136 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " does not consent to die at this time"}]}
execute as @a[tag=win] at @s if score @s vm matches 137 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " rescued the science team"}]}
execute as @a[tag=win] at @s if score @s vm matches 138 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " unboxed an unusual hat"}]}
execute as @a[tag=win] at @s if score @s vm matches 139 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " pushed the cart"}]}
execute as @a[tag=win] at @s if score @s vm matches 140 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " caught a shiny W"}]}
execute as @a[tag=win] at @s if score @s vm matches 141 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " enchanted their brain with Skill V"}]}
execute as @a[tag=win] at @s if score @s vm matches 142 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " respects Mojang's decisions"}]}
execute as @a[tag=win] at @s if score @s vm matches 143 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " had to take a seat after this one"}]}
execute as @a[tag=win] at @s if score @s vm matches 144 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " killed omni-man"}]}
execute as @a[tag=win] at @s if score @s vm matches 145 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " does not believe in therapy"}]}
execute as @a[tag=win] at @s if score @s vm matches 146 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " had maxed out their charisma"}]}
execute as @a[tag=win] at @s if score @s vm matches 147 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " speedran this round"}]}
execute as @a[tag=win] at @s if score @s vm matches 148 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " was called a hacker (they are just too good!)"}]}
execute as @a[tag=win] at @s if score @s vm matches 149 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " uses both hands"}]}
execute as @a[tag=win] at @s if score @s vm matches 150 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " never oversleeps"}]}
execute as @a[tag=win] at @s if score @s vm matches 151 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " respects all races"}]}
execute as @a[tag=win] at @s if score @s vm matches 152 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " should run for president"}]}
execute as @a[tag=win] at @s if score @s vm matches 153 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " rated this map 5 stars on its game page!"}]}
execute as @a[tag=win] at @s if score @s vm matches 154 run tellraw @a {"rawtext":[{"text": "§aI'm going to be honest here. "}, {"selector": "@s"}, {"text": " did such an amazing job this game like daym. did you see that? oh wait, yeah. you all died"}]}
execute as @a[tag=win] at @s if score @s vm matches 155 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " Hehehehehehehehehehehehehehehehe... hehe... ehhhhhhhh... what?"}]}
execute as @a[tag=win] at @s if score @s vm matches 156 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " perfectly Full Comboed a mania difficulty rhythm level"}]}
execute as @a[tag=win] at @s if score @s vm matches 157 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " was revived"}]}
execute as @a[tag=win] at @s if score @s vm matches 158 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " won mission impossible"}]}
execute as @a[tag=win] at @s if score @s vm matches 159 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " escaped the backrooms!"}]}
execute as @a[tag=win] at @s if score @s vm matches 160 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " found true love"}]}
execute as @a[tag=win] at @s if score @s vm matches 161 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " bought Twitter they are not elon musk :P What if they become him :P No idea how :P"}]}
execute as @a[tag=win] at @s if score @s vm matches 162 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " plugged in the ethernet cable"}]}
execute as @a[tag=win] at @s if score @s vm matches 163 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " earned themselves a vacation"}]}
execute as @a[tag=win] at @s if score @s vm matches 164 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got promoted to the CEO of Burger King"}]}
execute as @a[tag=win] at @s if score @s vm matches 165 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " made it to the toilet"}]}
execute as @a[tag=win] at @s if score @s vm matches 166 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " released the kids from their basement"}]}
execute as @a[tag=win] at @s if score @s vm matches 167 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " made a weather machine and made it snow until school was cancelled for the year"}]}
execute as @a[tag=win] at @s if score @s vm matches 168 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " saw an opportunity and took it"}]}
execute as @a[tag=win] at @s if score @s vm matches 169 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " stopped the experiment from conducting on time"}]}
execute as @a[tag=win] at @s if score @s vm matches 170 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " successfully spread their seed"}]}
execute as @a[tag=win] at @s if score @s vm matches 171 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " prevented 9/11 with a magic slap of their cheeks"}]} 
execute as @a[tag=win] at @s if score @s vm matches 172 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " got their Hogwarts letter"}]} 
execute as @a[tag=win] at @s if score @s vm matches 173 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " was let out of their cabinet under the stairs"}]} 
execute as @a[tag=win] at @s if score @s vm matches 174 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " punched Professor Umbridge in the face"}]} 
execute as @a[tag=win] at @s if score @s vm matches 175 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " gave Profesor Snape a blowjob"}]} 
execute as @a[tag=win] at @s if score @s vm matches 176 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " neva gona give you up to the grammar police"}]} 
execute as @a[tag=win] at @s if score @s vm matches 177 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " pleased the taco gods with a sufficient sacrifice"}]}
execute as @a[tag=win] at @s if score @s vm matches 178 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " read a 500 page book without pictures"}]} 
execute as @a[tag=win] at @s if score @s vm matches 179 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " eats their fruits and veggies"}]} 
execute as @a[tag=win] at @s if score @s vm matches 180 run tellraw @a {"rawtext":[{"text": "§a"}, {"selector": "@s"}, {"text": " "}]} 

execute as @a[tag=win] at @s run scoreboard players reset @s vm
execute as @a[tag=win] at @s run title @s subtitle §fYou were rewarded §e80 Coins §ffor winning!
execute as @a[tag=win] at @s run title @s title §aYou Won!
execute as @a[tag=win] at @s run tp @s 0 1 -1
execute as @a[tag=win] at @s if score players game matches 1 run scoreboard players set players game 0
tag @a[tag=win] remove win

execute if score players game matches 0 run function game_functions/reset 