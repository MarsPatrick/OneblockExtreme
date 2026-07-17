tag @s add checked

scoreboard players set Ocelots Panel 0
scoreboard players set Cats Panel 0

execute as @e[type=minecraft:ocelot,distance=..48] run scoreboard players add Ocelots Panel 1
execute as @e[type=minecraft:cat,distance=..48] run scoreboard players add Cats Panel 1

execute if score Cats Panel matches 3.. if score Ocelots Panel matches ..1 run tag @s add spawn

execute if entity @s[tag=spawn,nbt=!{Age:0}] run summon minecraft:ocelot ~ ~ ~ {Age:-24000}
execute if entity @s[tag=spawn,nbt={Age:0}] run summon minecraft:ocelot ~ ~ ~ {Age:0}

execute if entity @s[tag=spawn] run tp @e[type=minecraft:ocelot,sort=nearest,limit=1] @s
execute if entity @s[tag=spawn] run effect give @s minecraft:invisibility 2
execute if entity @s[tag=spawn] run tp @s ~ ~-256 ~

execute if entity @s[tag=spawn] run kill @s

scoreboard players reset Ocelots Panel
scoreboard players reset Cats Panel