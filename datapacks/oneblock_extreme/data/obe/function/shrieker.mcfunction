execute unless block ~ ~ ~ minecraft:sculk_shrieker run kill @s
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=false] unless entity @e[type=minecraft:warden,distance=..16] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye"}}]
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=false] unless entity @e[type=minecraft:warden,distance=..16] run particle minecraft:explosion
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=false] unless entity @e[type=minecraft:warden,distance=..16] run setblock ~ ~ ~ minecraft:sculk_shrieker[can_summon=true]
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=true] if entity @e[type=minecraft:warden,distance=..16] run particle minecraft:explosion
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=true] if entity @e[type=minecraft:warden,distance=..16] run setblock ~ ~ ~ minecraft:sculk_shrieker[can_summon=false]
advancement grant @p[distance=..16] only obe:story/active_shrieker
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=false] if entity @e[type=minecraft:warden,distance=..16] run kill @s

