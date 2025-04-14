# strike
execute if score strike events matches 1.. run scoreboard players remove "strike cooldown" events 1
execute as @r[type=brr:plate, tag=!ufo, tag=!meteor, name=!subspace, name=!blackhole, name=!inv] at @s if score "strike cooldown" events matches ..0 if score strike events matches 1.. run summon lightning_bolt ~ ~ ~
execute if score "strike cooldown" events matches ..0 if score strike events matches 1.. run scoreboard players remove strike events 1
execute if score "strike cooldown" events matches ..0 run scoreboard players set "strike cooldown" events 20
