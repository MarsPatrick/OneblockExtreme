execute at @s run summon minecraft:wither_skeleton
execute at @s run tp @e[type=wither_skeleton,sort=nearest,limit=1] @s
execute at @s run particle minecraft:explosion ~ ~1 ~
execute at @s run playsound minecraft:entity.wither_skeleton.hurt voice @p ~ ~ ~ 2.0
execute as @s run tp @s ~ ~-256 ~
execute as @s run scoreboard players reset @s transform_timer
execute as @s run kill @s