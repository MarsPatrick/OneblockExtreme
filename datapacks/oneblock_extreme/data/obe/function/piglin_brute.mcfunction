summon minecraft:piglin_brute ~ ~ ~
data modify entity @e[type=minecraft:piglin_brute,sort=nearest,limit=1] Health set value 25f
tp @e[type=minecraft:piglin_brute,sort=nearest,limit=1] @s
particle minecraft:explosion ~ ~1 ~
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
kill @s