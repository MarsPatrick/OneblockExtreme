summon frog ~ ~ ~ {variant:"minecraft:warm"}
tp @e[type=frog,sort=nearest,limit=1] @s
particle minecraft:explosion
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
advancement grant @p[distance=..16] only obe:story/white_frog
kill @s