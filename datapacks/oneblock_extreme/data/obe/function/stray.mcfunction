tag @s add checked
scoreboard players add Stray Panel 1
execute if score Stray Panel matches 4.. run scoreboard players set Stray Panel 0
execute if score Stray Panel matches 0 run summon minecraft:stray
execute if score Stray Panel matches 0 run tp @s ~ ~-384 ~
execute if score Stray Panel matches 0 run kill @s