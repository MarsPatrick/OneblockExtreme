scoreboard players set Guardian Panel 0
execute as @e[type=minecraft:guardian,distance=..12] run scoreboard players add Guardian Panel 1
execute unless entity @e[type=minecraft:elder_guardian,distance=..48] if score Guardian Panel matches 6.. if entity @s[nbt={ActiveEffects:[{Id:19,Amplifier:1b}]}] run tag @s add Elder
execute if entity @s[tag=Elder] run summon minecraft:elder_guardian
execute if entity @s[tag=Elder] run tp @e[sort=nearest,limit=1,type=elder_guardian] @s
execute if entity @s[tag=!Elder] run summon minecraft:guardian
execute if entity @s[tag=!Elder] run tp @e[sort=nearest,limit=1,type=guardian] @s
particle minecraft:explosion ~ ~1 ~
playsound minecraft:entity.guardian.hurt voice @p ~ ~ ~ 2.0
tp @s ~ ~-256 ~
scoreboard players reset @s transform_timer
scoreboard players reset Guardian Panel
kill @s