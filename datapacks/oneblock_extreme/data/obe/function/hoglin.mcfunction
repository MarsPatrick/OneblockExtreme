summon minecraft:hoglin ~ ~ ~ {Age:-24000}
tp @e[type=hoglin,sort=nearest,limit=1] @s
particle minecraft:explosion
playsound minecraft:entity.hoglin.converted_to_zombified voice @p ~ ~ ~ 2.0
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
kill @s