tag @s add checked
scoreboard players add Nether_skeleton Panel 1
execute if score Nether_skeleton Panel matches 4.. run scoreboard players set Nether_skeleton Panel 0
execute if score Nether_skeleton Panel matches 0 run summon minecraft:skeleton
execute if score Nether_skeleton Panel matches 0 at @s run data modify entity @e[type=minecraft:skeleton,sort=nearest,limit=1] HandItems set value [{id:"minecraft:stone_sword", Count: 1b, tag:{Damage: 0}}]
execute if score Nether_skeleton Panel matches 0 run tp @s ~ ~-384 ~
execute if score Nether_skeleton Panel matches 0 run kill @s
