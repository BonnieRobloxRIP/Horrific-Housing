# = lobby =
# spectating
execute as @a[tag=lobby, tag=spectator] at @s run titleraw @s actionbar {"rawtext":[{"text": "§o§7To stop spectating go to the coordinates 0 1 -1 \n§r§a§l                  "}, {"score": {"name": "players", "objective": "game"}}, {"text": " §r§bPlayers left"}]}
# if on spawn
execute as @a at @s if block ~ ~-2 ~ brr:spawn run titleraw @s actionbar {"rawtext":[{"text": "               Welcome to §bHorrific Housing!\n§rJoin our discord server  §5discord.gg/N4mkDncC9q\n§r        Follow §eBonnieRobloxRIP§r to play anytime!"}]}
# timer
execute as @a[tag=lobby] at @s unless block ~ ~-2 ~ brr:spawn if score intermission lobby matches 10..20 run titleraw @s actionbar {"rawtext":[{"text": "Game starts in §a"}, {"score":{"name": "intermission", "objective": "lobby"}}, {"text": " §rSeconds..."}]}
execute as @a[tag=lobby] at @s unless block ~ ~-2 ~ brr:spawn if score intermission lobby matches 6..9 run titleraw @s actionbar {"rawtext":[{"text": "Game starts in §2"}, {"score":{"name": "intermission", "objective": "lobby"}}, {"text": " §rSeconds..."}]}
execute as @a[tag=lobby] at @s unless block ~ ~-2 ~ brr:spawn if score intermission lobby matches 3..5 run titleraw @s actionbar {"rawtext":[{"text": "Game starts in §e"}, {"score":{"name": "intermission", "objective": "lobby"}}, {"text": " §rSeconds..."}]}
execute as @a[tag=lobby] at @s unless block ~ ~-2 ~ brr:spawn if score intermission lobby matches 2 run titleraw @s actionbar {"rawtext":[{"text": "Game starts in §6"}, {"score":{"name": "intermission", "objective": "lobby"}}, {"text": " §rSeconds..."}]}
execute as @a[tag=lobby] at @s unless block ~ ~-2 ~ brr:spawn if score intermission lobby matches 1 run titleraw @s actionbar {"rawtext":[{"text": "Game starts in §4"}, {"score":{"name": "intermission", "objective": "lobby"}}, {"text": " §rSecond..."}]}
execute as @a at @s if score intermission lobby matches 0 unless block ~ ~-2 ~ brr:spawn run titleraw @s actionbar {"rawtext":[{"text": "§2Game is starting!"}]}
# off
execute as @a[tag=lobby] at @s unless block ~ ~-2 ~ brr:spawn if score intermission lobby matches 21.. run titleraw @s actionbar {"rawtext":[{"text": "§4The game has been disabled by the host"}]}
# = game =
# - normal -
execute as @a[tag=!spectator, tag=!1minute, tag=!subspace, tag=!blackhole] at @s unless block ~ ~-2 ~ brr:spawn if score players game matches 1.. unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§a§l "}, {"score": {"name": "players", "objective": "game"}}, {"text": " §r§bPlayers left"}]}
# normal with 1 minute
execute as @a[tag=1minute, scores={1minute=1..}] at @s if score players game matches 1.. unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§cYou are going to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n§a§l"}, {"text": "              "},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
execute as @a[tag=1minute, scores={1minute=0}] at @s if score players game matches 1.. run titleraw @s actionbar {"rawtext":[{"text": "§4KABOOMMM!!!!!!! :D"}]}
# normal in subspace
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 30.. unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will be erased in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n              §a"},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 20..30 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will be §kerased§r§l§5 in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n              §5"},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 15..19 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou §kwill be erased §r§l§5in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n              §5"},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§dPlayers left"}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 10..14 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will §kbe erased in:§r§l §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n          §5"},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§d§kPlayers §r§dleft"}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 4..9 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will die in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n        §5"},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§d§kPlayers left"}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 3 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§l§kYou w§r§l§5ill DIE §d"}, {"score":{"name":"subspace","objective":"realms"}}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 2 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§l§kYou will §r§l§5DIE §d"}, {"score":{"name":"subspace","objective":"realms"}}]}
execute as @a[tag=subspace, tag=!1minute] at @s if score subspace realms matches 1 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5DIE"}]}
# normal in black hole
execute as @a[tag=blackhole, tag=!1minute] at @s unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§9You are going to be consumed in: §l"}, {"score":{"name":"blackhole","objective":"realms"}}, {"text": " Seconds \n                 §a"},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
# normal with 1 minute, subspace
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 30.. unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§l You will be erased in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n§r"}, {"text": "§cYou are going to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n§a§l             "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 20..30 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will be §kerased§r§l§5 in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n§r"}, {"text": "§5You are going to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n§5§l             "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 15..19 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou §kwill be erased §r§l§5in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n§r"}, {"text": "§5You are §kgoing§r§5 to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n§5§l             "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§dPlayers left"}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 10..14 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will §kbe erased in:§r§l §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n§r"}, {"text": "§5You§k are going to§r§5 explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§dSeconds.\n§5§l             "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§d§kPlayers §r§dleft"}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 4..9 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§lYou will die in: §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"text": " Seconds \n§r"}, {"text": "§5§kYou are going to explode §r§5in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§dSec§konds.§r \n§5§l             "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§d§kPlayers left"}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 3 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§l§kYou w§r§l§5ill DIE §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"score":{"name":"@s","objective":"1minute"}}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 2 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5§l§kYou will §r§l§5DIE §d"}, {"score":{"name":"subspace","objective":"realms"}}, {"score":{"name":"@s","objective":"1minute"}}]}
execute as @a[tag=subspace, tag=1minute] at @s if score subspace realms matches 1 unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§5DIE"}]}
# normal with 1 minute, black hole
execute as @a[tag=blackhole, tag=1minute] at @s unless score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§9You are going to be consumed in: §l"}, {"score":{"name":"blackhole","objective":"realms"}}, {"text": " Seconds \n§r    "}, {"text": "§cYou are going to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n§a§l                 "},   {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
# normal with assassin

# normal with 1 minute and assassin

# normal in subspace with assassin

# normal in subspace with 1 minute and assassin

# normal in black hole with assassin

# normal in black hole with 1 minute and assassin

# - blast -
execute as @a[tag=!spectator, tag=!1minute, tag=!subspace, tag=!blackhole] at @s unless block ~ ~-2 ~ brr:spawn if score players game matches 1.. if score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§e§l "}, {"score":{"name":"blasttime","objective":"gamemodes"}}, {"text": " §r§6Seconds Remain\n§a§l"}, {"text": " "},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
# blast with 1 minute
execute as @a[tag=1minute, scores={1minute=1..}] at @s if score players game matches 1.. if score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§cYou are going to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n"}, {"text": "§e§l           "}, {"score":{"name":"blasttime","objective":"gamemodes"}}, {"text": " §r§6Seconds Remain\n§a§l"}, {"text": "              "},  {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
# blast in subspace

# blast in black hole
execute as @a[tag=game, tag=blackhole] at @s if score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "§9You will be consumed in: §9§l"}, {"score":{"name":"blackhole", "objective": "subspace"}}, {"text": " §r§9Seconds \n§r§e§l          "}, {"score":{"name":"blasttime","objective":"gamemodes"}}, {"text": " §r§6Seconds Remain\n§a§l             "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
# blast with assassin

# blast with 1 minute and assassin

# blast in subspace with assassin

# blast in subspace with 1 minute and assassin

# blast in black hole with assassin

# blast in black hole with 1 minute and assassin

# blast with 1 minute, subspace

# blast with 1 minute, black hole
execute as @a[tag=game, tag=blackhole, tag=1minute] at @s if score gamemode game matches 1 run titleraw @s actionbar {"rawtext":[{"text": "   §9You will be consumed in: §9§l"}, {"score":{"name":"blackhole", "objective": "realms"}}, {"text": " §r§9Seconds \n§r"}, {"text": "§cYou are going to explode in: §l§6"}, {"score":{"name":"@s","objective":"1minute"}}, {"text": " §r§3Seconds.\n§e§l           "}, {"score":{"name":"blasttime","objective":"gamemodes"}}, {"text": " §r§6Seconds Remain\n§a§l              "}, {"score":{"name":"players","objective":"game"}}, {"text": " §r§bPlayers left"}]}
# = times =
title @a[tag=lobby] times 0 40 5
title @a[tag=game] times 0 60 40
title @a[tag=subspace] times 0 80 40
title @a[tag=blackhole] times 0 80 40
