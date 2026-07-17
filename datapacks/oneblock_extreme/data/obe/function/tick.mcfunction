### Grass regenation ###

execute as @e[tag=commander] at @a if block 0 64 0 minecraft:air if entity @e[type=player,nbt={OnGround:0b}] run tp @e[x=0,y=65,z=0,dx=0,dy=0,dz=0] ~ ~0.20 ~
execute as @e[tag=commander] at @s if block 0 64 0 minecraft:air run setblock 0 64 0 grass_block

### Transform mobs ###

##skeletion => stray ##
execute if entity @e[type=minecraft:player,nbt={Dimension:"minecraft:overworld"}] as @e[type=minecraft:skeleton,tag=!checked,sort=random] at @s run function obe:stray

##zombified_piglin =>nether skeletion ##
execute if entity @e[type=minecraft:player,nbt={Dimension:"minecraft:the_nether"}] as @e[type=minecraft:zombified_piglin,tag=!checked,sort=random] at @s run function obe:nether_skeleton

##zombie=> drowned ##
execute if entity @e[type=minecraft:player,nbt={Dimension:"minecraft:overworld"}] as @e[type=minecraft:zombie,nbt={DrownedConversionTime:10}] at @s run function obe:drowned

##grow squid=>squid and drowned ##
execute if entity @e[type=minecraft:player,nbt={Dimension:"minecraft:overworld"}] as @e[type=minecraft:glow_squid,tag=!checked,sort=random] at @s run function obe:squid

##cat =>ocelot ##
execute if entity @e[type=minecraft:player,nbt={Dimension:"minecraft:overworld"}] as @e[type=minecraft:cat,tag=!checked,sort=random] at @s run function obe:ocelot

## detect thunders ##
execute if entity @e[type=minecraft:lightning_bolt] unless entity @e[tag=portal_checker] as @e[type=minecraft:lightning_bolt] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:0b,Invisible:0b,Tags:["portal_checker"]}
execute if entity @e[tag=portal_checker,tag=!checked] as @e[tag=portal_checker] at @s run function obe:end_portal

## raycasting ##
execute as @p[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s anchored eyes run function obe:raycast
execute as @p[nbt={SelectedItem:{id:"minecraft:netherite_hoe",tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s anchored eyes run function obe:raycast
execute if entity @p[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] as @e[tag=amethyst] at @s if block ~ ~ ~ minecraft:air run function obe:amethyst
execute if entity @p[nbt={SelectedItem:{id:"minecraft:netherite_hoe",tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] as @e[tag=amethyst] at @s if block ~ ~ ~ minecraft:air run function obe:amethyst
execute if entity @p[nbt=!{SelectedItem:{id:"minecraft:diamond_hoe",tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}},nbt=!{SelectedItem:{id:"minecraft:netherite_hoe",tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run kill @e[tag=amethyst]