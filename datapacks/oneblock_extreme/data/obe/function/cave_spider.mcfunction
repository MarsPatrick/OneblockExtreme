summon minecraft:cave_spider
tp @e[type=cave_spider,sort=nearest,limit=1] @s
particle minecraft:explosion ~ ~1 ~
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
kill @s