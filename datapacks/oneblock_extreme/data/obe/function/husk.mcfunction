summon minecraft:husk ~ ~ ~ {"Fire":20s}
tp @e[type=minecraft:zombie,sort=nearest,limit=1] @s
playsound minecraft:block.fire.extinguish voice @p ~ ~ ~ 2.0
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
kill @s