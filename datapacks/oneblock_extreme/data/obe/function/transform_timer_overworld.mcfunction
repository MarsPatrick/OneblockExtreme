### husk ###
execute as @e[tag=!overworld,type=minecraft:zombie,nbt=!{Health:20.0f},nbt=!{Fire:-1s}] run tag @s add overworld
execute as @e[tag=overworld,type=minecraft:zombie,scores={transform_timer=4..}] at @s if block ~ ~-1 ~ minecraft:sand run function obe:husk

### cave_spider ###
execute as @e[tag=!overworld,type=minecraft:spider,nbt={ActiveEffects:[{Id:1}]}] run tag @s add overworld
execute as @e[tag=overworld,type=minecraft:spider,scores={transform_timer=4..}] at @s run function obe:cave_spider

### husk ###
execute as @e[tag=!overworld,type=minecraft:zombie,nbt=!{Health:20.0f},nbt=!{Fire:-1s}] run tag @s add overworld
execute as @e[tag=overworld,type=minecraft:zombie,scores={transform_timer=4..}] at @s if block ~ ~-1 ~ minecraft:sand run function obe:husk

### mooshroom ###
execute as @e[type=minecraft:cow] at @s if block ~ ~-1 ~ minecraft:mycelium run effect give @s minecraft:strength 2
execute as @e[type=minecraft:cow] at @s if block ~ ~-1 ~ minecraft:mycelium run scoreboard players add @s transform_timer 1
execute as @e[type=minecraft:cow] at @s unless block ~ ~-1 ~ minecraft:mycelium run tag @s remove overworld
execute as @e[type=minecraft:cow] at @s unless block ~ ~-1 ~ minecraft:mycelium run scoreboard players reset @s transform_timer
execute as @e[type=minecraft:cow,scores={transform_timer=5..}] at @s if block ~ ~-1 ~ minecraft:mycelium run function obe:mooshroom

### guardian ###
execute as @e[tag=!overworld,type=minecraft:squid,nbt={ActiveEffects:[{Id:19}]}] run tag @s add overworld
execute as @e[tag=overworld,type=minecraft:squid,scores={transform_timer=4..}] at @s run function obe:guardian

execute as @e[tag=!overworld,type=minecraft:glow_squid,nbt={ActiveEffects:[{Id:19}]}] run tag @s add overworld
execute as @e[tag=overworld,type=minecraft:glow_squid,scores={transform_timer=4..}] at @s run function obe:guardian

### Activate Shrieker ###

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye"}}] at @s if block ~ ~ ~ minecraft:sculk_shrieker unless entity @e[tag=shrieker,distance=..0.8] align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["shrieker"]}
execute as @e[tag=shrieker] at @s run function obe:shrieker

### change world border ###
worldborder set 59999968

### Summon Wandering Trader ###
scoreboard players add @e[tag=overworld] transform_timer 1
execute if score Wandering_trader Panel matches ..0 run function obe:spawn_wandering_trader


