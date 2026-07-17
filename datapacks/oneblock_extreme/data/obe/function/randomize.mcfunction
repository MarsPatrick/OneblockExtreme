scoreboard players set @e[name=bit] Panel 1
scoreboard players set @e[name=randomizer] Panel 0

execute as @e[tag=randomizer] as @e[tag=randomizer] as @e[tag=randomizer] as @e[tag=randomizer] as @e[tag=randomizer,sort=furthest] at @s run scoreboard players operation @e[type=minecraft:armor_stand,distance=..2,sort=random,limit=1] Panel += @e[name=bit,scores={Panel=1..}] Panel

### random_limit the random_outcome ###
execute if score @e[name=randomizer,tag=randomizer,limit=1] Panel < @e[name=bit,limit=1] Panel run scoreboard players operation random_outcome Panel = @e[name=randomizer,tag=randomizer] Panel
execute if score @e[name=randomizer,tag=randomizer,limit=1] Panel > @e[name=bit,limit=1] Panel run scoreboard players operation random_outcome Panel = @e[name=randomizer,tag=unused] Panel
scoreboard players operation random_outcome Panel *= random_limit Panel
scoreboard players operation random_outcome Panel /= @e[name=bit] Panel

### Rise up the random_outcome by 1 ###
scoreboard players set @e[name=bit] Panel 1
scoreboard players operation random_outcome Panel += @e[name=bit] Panel
execute if entity @s[tag=trader] run scoreboard players operation @s Trades += random_outcome Panel
scoreboard players reset @e[name=randomizer] Panel
scoreboard players reset @e[name=bit] Panel