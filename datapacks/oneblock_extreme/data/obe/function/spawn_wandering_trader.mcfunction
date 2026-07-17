### Reset armor_stand ###

kill @e[type=minecraft:armor_stand,tag=!]
summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["commander"]}
summon armor_stand 0 5 2 {CustomName:'"randomizer"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["randomizer"]}
summon armor_stand 0 5 1 {CustomName:'"randomizer"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["unused"]}
summon armor_stand 0 5 -2 {CustomName:'"bit"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["randomizer"]}

### Setup Trade Procressor ###
summon armor_stand 0 -2 0 {CustomName:'"T1"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T2"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T3"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T4"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T5"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T6"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T7"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}
summon armor_stand 0 -2 0 {CustomName:'"T8"',NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["trader"]}

### Spawn ###

execute as @e[type=player,limit=1] at @s as @e[type=minecraft:armor_stand,tag=trader] run summon minecraft:armor_stand ~ ~ ~ {Slient:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["pointer"]}
execute as @e[type=player,limit=1] at @s run spreadplayers ~ ~ 0 48 false @e[type=minecraft:armor_stand,tag=pointer]
execute as @e[type=player,limit=1] at @s run tag @e[type=minecraft:armor_stand,tag=pointer,sort=furthest,distance=16..48,limit=1] add spawner
execute as @e[tag=spawner] at @s run place template minecraft:trader

### Re-leash the llama ###
execute as @e[tag=spawner] at @s run data modify entity @e[type=minecraft:trader_llama,nbt={"Variant":0},sort=nearest,limit=1] Leash set from entity @e[type=minecraft:wandering_trader,sort=nearest,limit=1]
execute as @e[tag=spawner] at @s run data modify entity @e[type=minecraft:trader_llama,nbt={"Variant":3},sort=nearest,limit=1] Leash set from entity @e[type=minecraft:wandering_trader,sort=nearest,limit=1]
execute as @e[tag=spawner] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:lead"}},distance=..1]
execute as @e[type=player,limit=1] at @s run kill @e[type=minecraft:armor_stand,tag=pointer]

### Set tag and reset the trade selections ###
execute as @e[type=minecraft:wandering_trader,tag=!custom_trader] at @s run function obe:wandering_trader

### Set timer for next spawn ###
scoreboard players set Wandering_trader Panel 3600