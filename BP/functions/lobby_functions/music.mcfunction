# = scores =
execute as @a[tag=lobby] at @s run scoreboard players remove @s music 1
execute as @a[tag=game] at @s run scoreboard players remove @s music_game 1
execute as @a[tag=chill] at @s run scoreboard players remove @s chill 1
execute as @a[tag=subspace] at @s run scoreboard players remove @s subspace 1
execute as @a[tag=blackhole] at @s run scoreboard players remove @s "black hole" 1
execute as @a[tag=blast] at @s run scoreboard players remove @s gamemodes 1
# - no score -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby02
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby03
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby04
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby05
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.summer_lobby
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.summer_lobby02
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.calm_lobby
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.christmas_lobby
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.subspace
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game02
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game03
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game04
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game05
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.subspace.game
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.subspace.game02
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.subspace.game03
execute as @a[tag=chill, scores={chill=..0}] at @s run stopsound @s music.game.event.chill
execute as @a[tag=subspace, scores={subspace=..0}] at @s run stopsound @s music.game.realm.subspace
execute as @a[tag=blackhole, scores={"black hole"=..0}] at @s run stopsound @s music.game.realm.blackhole
execute as @a[tag=blast, scores={gamemodes=..0}] at @s run stopsound @s music.game.gamemode.blast
# = play =
# - lobby ost 1 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 0 run playsound music.lobby.lobby @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 0 run scoreboard players set @s music 2520
# - lobby ost 2 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby02
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 1 run playsound music.lobby.lobby02 @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 1 run scoreboard players set @s music 4300
# - lobby ost 3 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby03
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 2 run playsound music.lobby.lobby03 @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 2 run scoreboard players set @s music 520
# - summer lobby ost 1 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.summer_lobby
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 3 run playsound music.lobby.summer_lobby @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 3 run scoreboard players set @s music 2880
# - summer lobby ost 2 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.summer_lobby02
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 4 run playsound music.lobby.summer_lobby02 @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 4 run scoreboard players set @s music 1420
# - calm lobby ost -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.calm_lobby
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 5 run playsound music.lobby.calm_lobby @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 5 run scoreboard players set @s music 2240
# - lobby ost 4 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby04
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 6 run playsound music.lobby.lobby04 @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 6 run scoreboard players set @s music 8260
# - lobby ost 4 -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.lobby05
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 7 run playsound music.lobby.lobby05 @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches 7 run scoreboard players set @s music 2780
# - christmas lobby ost -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.christmas_lobby
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches -1 run playsound music.lobby.christmas_lobby @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches -1 run scoreboard players set @s music 1440
# - subspace lobby ost -
execute as @a[tag=lobby, scores={music=..0}] at @s run stopsound @s music.lobby.subspace
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches -13 run playsound music.lobby.subspace @s
execute as @a[tag=lobby, scores={music=..0}] at @s if score music lobby matches -13 run scoreboard players set @s music 5180
# - game ost 1 -
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 0 run playsound music.game.game @s
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 0 run scoreboard players set @s music_game 4660
# - game ost 2 -
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game02
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 1 run playsound music.game.game02 @s ~ ~ ~ 1 1.1
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 1 run scoreboard players set @s music_game 2720
# - game ost 3 -
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game03
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 2 run playsound music.game.game03 @s
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 2 run scoreboard players set @s music_game 2360
# - game ost 4 -
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game04
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 3 run playsound music.game.game04 @s
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 3 run scoreboard players set @s music_game 2860
# - game ost 5 -
execute as @a[tag=game, scores={music_game=..0}] at @s run stopsound @s music.game.game05
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 4 run playsound music.game.game05 @s
execute as @a[tag=game, scores={music_game=..0}] at @s if score music_game lobby matches 4 run scoreboard players set @s music_game 1600
# - blast
execute as @a[tag=blast, scores={gamemodes=..0}] at @s run stopsound @s music.game.gamemode.blast
execute as @a[tag=blast, scores={gamemodes=..0}] at @s run playsound music.game.gamemode.blast @s
execute as @a[tag=blast, scores={gamemodes=..0}] at @s run scoreboard players set @s gamemodes 1800
# = effects = 
# - chill -
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run stopsound @s music.game.event.chill
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run stopsound @s music.game.game
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run stopsound @s music.game.game02
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run stopsound @s music.game.game03
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run stopsound @s music.game.game04
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run stopsound @s music.game.game05
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run playsound music.game.event.chill @s
execute as @a[tag=chill, tag=game, scores={chill=..0}] at @s run scoreboard players set @s chill 1520
# = realms =
# - subspace tripmine realm -
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run stopsound @s music.game.event.chill
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run stopsound @s music.game.game
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run stopsound @s music.game.game02
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run stopsound @s music.game.game03
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run stopsound @s music.game.game04
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run stopsound @s music.game.game05
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run playsound music.game.realm.subspace @s
execute as @a[tag=subspace, tag=game, scores={subspace=..0}] at @s run scoreboard players set @s subspace 1200
# - black hole realm -
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run stopsound @s music.game.event.chill
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run stopsound @s music.game.game
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run stopsound @s music.game.game02
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run stopsound @s music.game.game03
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run stopsound @s music.game.game04
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run stopsound @s music.game.game05
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run playsound music.game.realm.blackhole @s
execute as @a[tag=blackhole, tag=game, scores={"black hole"=..0}] at @s run scoreboard players set @s "black hole" 4600
# = stop =
# - without the tags -
execute as @a[tag=!game] at @s run scoreboard players reset @s music_game
execute as @a[tag=!lobby] at @s run scoreboard players reset @s music
execute as @a[tag=!chill] at @s run scoreboard players reset @s chill
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.lobby
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.lobby02
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.lobby03
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.lobby04
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.lobby05
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.summer_lobby
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.summer_lobby02
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.calm_lobby
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.christmas_lobby
execute as @a[tag=!lobby] at @s run stopsound @s music.lobby.subspace
execute as @a[tag=!game] at @s run stopsound @s music.game.game
execute as @a[tag=!game] at @s run stopsound @s music.game.game02
execute as @a[tag=!game] at @s run stopsound @s music.game.game03
execute as @a[tag=!game] at @s run stopsound @s music.game.game04
execute as @a[tag=!game] at @s run stopsound @s music.game.game05
execute as @a[tag=!chill] at @s run stopsound @s music.game.event.chill
execute as @a[tag=!subspace] at @s run stopsound @s music.game.realm.subspace
execute as @a[tag=!blackhole] at @s run stopsound @s music.game.realm.blackhole
execute as @a[tag=!blast] at @s run stopsound @s music.game.gamemode.blast
# - chill -
execute as @a[tag=chill] at @s run scoreboard players reset music_game
execute as @a[tag=chill] at @s run stopsound @s music.game.game
execute as @a[tag=chill] at @s run stopsound @s music.game.game02
execute as @a[tag=chill] at @s run stopsound @s music.game.game03
execute as @a[tag=chill] at @s run stopsound @s music.game.game04
execute as @a[tag=chill] at @s run stopsound @s music.game.game05
# - subspace tripmine realm -
execute as @a[tag=subspace] at @s run scoreboard players reset music_game
execute as @a[tag=subspace, tag=chill] at @s run scoreboard players reset chill
execute as @a[tag=subspace] at @s run stopsound @s music.game.game
execute as @a[tag=subspace] at @s run stopsound @s music.game.game02
execute as @a[tag=subspace] at @s run stopsound @s music.game.game03
execute as @a[tag=subspace] at @s run stopsound @s music.game.game04
execute as @a[tag=subspace] at @s run stopsound @s music.game.game05
execute as @a[tag=subspace] at @s run stopsound @s music.game.event.chill
# - black hole realm -
execute as @a[tag=blackhole] at @s run scoreboard players reset music_game
execute as @a[tag=blackhole, tag=chill] at @s run scoreboard players reset chill
execute as @a[tag=blackhole] at @s run stopsound @s music.game.game
execute as @a[tag=blackhole] at @s run stopsound @s music.game.game02
execute as @a[tag=blackhole] at @s run stopsound @s music.game.game03
execute as @a[tag=blackhole] at @s run stopsound @s music.game.game04
execute as @a[tag=blackhole] at @s run stopsound @s music.game.game05
execute as @a[tag=blackhole] at @s run stopsound @s music.game.event.chill
# - blast
execute as @a[tag=blast] at @s run scoreboard players reset music_game
execute as @a[tag=blast] at @s run stopsound @s music.game.game
execute as @a[tag=blast] at @s run stopsound @s music.game.game02
execute as @a[tag=blast] at @s run stopsound @s music.game.game03
execute as @a[tag=blast] at @s run stopsound @s music.game.game04
execute as @a[tag=blast] at @s run stopsound @s music.game.game05
execute as @a[tag=blast] at @s run stopsound @s music.game.event.chill
execute as @a[tag=blast] at @s run stopsound @s music.game.realm.blackhole
execute as @a[tag=blast] at @s run stopsound @s music.game.realm.subspace
execute as @a[tag=blast] at @s run stopsound @s music.game.event.tacos
execute as @a[tag=blast] at @s run stopsound @s sfx.events.homedesign