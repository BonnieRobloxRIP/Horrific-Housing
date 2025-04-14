
# = choosing =
clear @s[tag=shop, tag=color]
execute as @s[tag=shop, tag=color] at @s run scoreboard players random @s store_color 1 12
execute as @s[tag=shop, tag=color, tag=blue, tag=pink, tag=green, tag=yellow, tag=orange, tag=purple, tag=white, tag=black, tag=gray, tag=magenta, tag=light_blue, tag=rgb] at @s run scoreboard players set @s store_color 13
# = give =
# blue
execute as @s[tag=shop, tag=color, tag=!blue, scores={store_color=1}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!blue, scores={store_color=1}] at @s run tag @s add blue
# pink
execute as @s[tag=shop, tag=color, tag=!pink, scores={store_color=2}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!pink, scores={store_color=2}] at @s run tag @s add pink
# green
execute as @s[tag=shop, tag=color, tag=!green, scores={store_color=3}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!green, scores={store_color=3}] at @s run tag @s add green
# yellow
execute as @s[tag=shop, tag=color, tag=!yellow, scores={store_color=4}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!yellow, scores={store_color=4}] at @s run tag @s add yellow
# orange
execute as @s[tag=shop, tag=color, tag=!orange, scores={store_color=5}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!orange, scores={store_color=5}] at @s run tag @s add orange
# purple
execute as @s[tag=shop, tag=color, tag=!purple, scores={store_color=6}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!purple, scores={store_color=6}] at @s run tag @s add purple
# white
execute as @s[tag=shop, tag=color, tag=!white, scores={store_color=7}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!white, scores={store_color=7}] at @s run tag @s add white
# black
execute as @s[tag=shop, tag=color, tag=!black, scores={store_color=8}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!black, scores={store_color=8}] at @s run tag @s add black
# gray
execute as @s[tag=shop, tag=color, tag=!gray, scores={store_color=9}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!gray, scores={store_color=9}] at @s run tag @s add gray
# magenta
execute as @s[tag=shop, tag=color, tag=!magenta, scores={store_color=10}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!magenta, scores={store_color=10}] at @s run tag @s add magenta
# light blue
execute as @s[tag=shop, tag=color, tag=!light_blue, scores={store_color=11}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!light_blue, scores={store_color=11}] at @s run tag @s add light_blue
# rgb
execute as @s[tag=shop, tag=color, tag=!rgb, scores={store_color=12}] at @s run tag @s add color2
execute as @s[tag=shop, tag=color, tag=!rgb, scores={store_color=12}] at @s run tag @s add rgb
# = end =
# - title -
execute as @s[tag=shop, tag=color2] at @s run title @s title You got:
execute as @s[tag=shop, tag=color2, scores={store_color=1}] at @s run title @s subtitle §1§lBlue!
execute as @s[tag=shop, tag=color2, scores={store_color=2}] at @s run title @s subtitle §c§lPink!
execute as @s[tag=shop, tag=color2, scores={store_color=3}] at @s run title @s subtitle §2§lGreen!
execute as @s[tag=shop, tag=color2, scores={store_color=4}] at @s run title @s subtitle §e§lYellow!
execute as @s[tag=shop, tag=color2, scores={store_color=5}] at @s run title @s subtitle §6§lOrange!
execute as @s[tag=shop, tag=color2, scores={store_color=6}] at @s run title @s subtitle §5§lPurple!
execute as @s[tag=shop, tag=color2, scores={store_color=7}] at @s run title @s subtitle §f§lWhite!
execute as @s[tag=shop, tag=color2, scores={store_color=8}] at @s run title @s subtitle §0§lBlack!
execute as @s[tag=shop, tag=color2, scores={store_color=9}] at @s run title @s subtitle §8§lGray!
execute as @s[tag=shop, tag=color2, scores={store_color=10}] at @s run title @s subtitle §d§lMagenta!
execute as @s[tag=shop, tag=color2, scores={store_color=11}] at @s run title @s subtitle §b§lLight Blue!
execute as @s[tag=shop, tag=color2, scores={store_color=12}] at @s run title @s subtitle §4§lR§2G§1B§e!
# - if all colors are unlocked
execute as @s[tag=shop, scores={store_color=13}] at @s run tellraw @s {"rawtext":[{"text":"§3You already own all available colors!"}]}
execute as @s[tag=shop, scores={store_color=13}] at @s run scoreboard players add @s coins_storage 80
execute as @s[tag=shop, scores={store_color=13}] at @s run tag @s add color2
# - remove tags -
execute as @s[tag=shop, tag=color2] at @s run scoreboard players reset @s store_color
execute as @s[tag=shop, tag=color2] at @s run tag @s remove color
execute as @s[tag=shop, tag=color2] at @s run tag @s remove color2