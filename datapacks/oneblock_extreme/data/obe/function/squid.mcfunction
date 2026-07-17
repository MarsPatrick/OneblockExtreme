tag @s add checked
scoreboard players add Squid Panel 1
execute if score Squid Panel matches 2.. run scoreboard players set Squid Panel 0
execute if score Squid Panel matches 0 run summon minecraft:squid 
execute if score Squid Panel matches 0 run tp @s ~ ~-384 ~
execute if score Squid Panel matches 0 run kill @s

scoreboard players add Drowned Panel 1
execute if score Drowned Panel matches 6.. run scoreboard players set Drowned Panel 0
execute if score Drowned Panel matches 1 run function obe:axolotl
