summon minecraft:mooshroom
tp @e[type=mooshroom,sort=nearest,limit=1] @s
particle minecraft:explosion ~ ~1 ~
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
kill @s