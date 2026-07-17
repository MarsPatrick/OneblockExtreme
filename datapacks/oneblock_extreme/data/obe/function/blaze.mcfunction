summon minecraft:blaze ~ ~0.2 ~
tp @e[type=blaze,sort=nearest,limit=1] @s
setblock ~ ~ ~ minecraft:fire
particle minecraft:explosion
playsound minecraft:entity.generic.explode voice @p ~ ~ ~ 2.0
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
advancement grant @p[distance=..16] only obe:nether/blaze
kill @s