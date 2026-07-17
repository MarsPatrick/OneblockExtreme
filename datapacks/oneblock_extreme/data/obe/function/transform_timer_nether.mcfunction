### blaze ###
execute as @e[tag=!nether,type=minecraft:skeleton,nbt=!{Health:20.0f},nbt=!{Fire:-1s}] run tag @s add nether
execute as @e[tag=nether,type=minecraft:skeleton,scores={transform_timer=4..},nbt=!{Fire:-1s}] at @s run function obe:blaze

### wither skeleton ###
execute as @e[tag=!nether,type=minecraft:skeleton,nbt={ActiveEffects:[{Id:20}]}] run tag @s add nether
execute as @e[tag=nether,type=minecraft:skeleton] run effect give @s minecraft:wither 10 1
execute as @e[tag=nether,type=minecraft:skeleton,scores={transform_timer=4..}] run function obe:wither_skeleton

### piglin brute ###
execute as @e[tag=!nether,type=minecraft:piglin,nbt={ActiveEffects:[{Id:5,Amplifier:1b}]}] run tag @s add nether
execute as @e[tag=nether,type=minecraft:piglin,scores={transform_timer=4..}] at @s run function obe:piglin_brute

### hoglin ###

execute as @p[nbt={Dimension:"minecraft:the_nether"}] at @s as @e[tag=!nether,type=minecraft:pig,distance=..32] run tag @s add nether
execute as @e[tag=nether,type=minecraft:pig] run effect give @s minecraft:strength 10
execute as @e[tag=nether,type=minecraft:pig,scores={transform_timer=4..}] at @s run function obe:hoglin

### frog ###

execute as @p[nbt={Dimension:"minecraft:the_nether"}] at @s as @e[tag=!nether,type=minecraft:frog,nbt=!{variant:"minecraft:warm"},distance=..32] run tag @s add nether
execute as @e[tag=nether,type=minecraft:frog] run effect give @s minecraft:strength 10
execute as @e[tag=nether,type=minecraft:frog,scores={transform_timer=4..}] at @s run function obe:frog

scoreboard players add @e[tag=nether] transform_timer 1

### change world border ###
worldborder set 1792