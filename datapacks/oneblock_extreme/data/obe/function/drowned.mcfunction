summon minecraft:drowned
tp @e[type=drowned,sort=nearest,limit=1] @s
playsound minecraft:entity.zombie.converted_to_drowned voice @p ~ ~ ~ 1.0
tp @s ~ ~-384 ~
kill @s
