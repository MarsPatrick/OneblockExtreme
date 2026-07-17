### reset broken block ###
scoreboard players set amethyst Panel 0
setblock ~ ~ ~ minecraft:amethyst_block

### Up ###
execute if block ~ ~ ~ minecraft:amethyst_block run scoreboard players add amethyst Panel 1
execute if block ~ ~-1 ~ minecraft:calcite run scoreboard players add amethyst Panel 1
execute if block ~ ~-2 ~ minecraft:smooth_basalt run scoreboard players add amethyst Panel 1
execute if blocks ~1 ~ ~ ~ ~-2 ~ ~-1 ~-2 ~ all run scoreboard players add amethyst Panel 1
execute if blocks ~ ~ ~1 ~ ~-2 ~ ~ ~-2 ~-1 all run scoreboard players add amethyst Panel 1
execute unless score amethyst Panel matches 5.. run scoreboard players set amethyst Panel 0

### Down ###
execute if block ~ ~ ~ minecraft:amethyst_block run scoreboard players add amethyst Panel 1
execute if block ~ ~1 ~ minecraft:calcite run scoreboard players add amethyst Panel 1
execute if block ~ ~2 ~ minecraft:smooth_basalt run scoreboard players add amethyst Panel 1
execute if blocks ~1 ~2 ~ ~ ~ ~ ~-1 ~ ~ all run scoreboard players add amethyst Panel 1
execute if blocks ~ ~2 ~1 ~ ~ ~ ~ ~ ~-1 all run scoreboard players add amethyst Panel 1
execute unless score amethyst Panel matches 5.. run scoreboard players set amethyst Panel 0

### North ###
execute if block ~ ~ ~ minecraft:amethyst_block run scoreboard players add amethyst Panel 1
execute if block ~ ~ ~1 minecraft:calcite run scoreboard players add amethyst Panel 1
execute if block ~ ~ ~2 minecraft:smooth_basalt run scoreboard players add amethyst Panel 1
execute if blocks ~0 ~0 ~0 ~1 ~0 ~2 ~-1 ~0 ~0 all run scoreboard players add amethyst Panel 1
execute if blocks ~0 ~1 ~0 ~0 ~0 ~2 ~0 ~0 ~0 all run scoreboard players add amethyst Panel 1
execute unless score amethyst Panel matches 5.. run scoreboard players set amethyst Panel 0

### South ###
execute if block ~ ~ ~ minecraft:amethyst_block run scoreboard players add amethyst Panel 1
execute if block ~ ~ ~-1 minecraft:calcite run scoreboard players add amethyst Panel 1
execute if block ~ ~ ~-2 minecraft:smooth_basalt run scoreboard players add amethyst Panel 1
execute if blocks ~0 ~0 ~-2 ~1 ~0 ~0 ~-1 ~0 ~-2 all run scoreboard players add amethyst Panel 1
execute if blocks ~0 ~1 ~-2 ~0 ~0 ~0 ~0 ~0 ~-2 all run scoreboard players add amethyst Panel 1
execute unless score amethyst Panel matches 5.. run scoreboard players set amethyst Panel 0

### West ###
execute if block ~ ~ ~ minecraft:amethyst_block run scoreboard players add amethyst Panel 1
execute if block ~1 ~ ~ minecraft:calcite run scoreboard players add amethyst Panel 1
execute if block ~2 ~ ~ minecraft:smooth_basalt run scoreboard players add amethyst Panel 1
execute if blocks ~0 ~0 ~0 ~2 ~0 ~1 ~0 ~0 ~-1 all run scoreboard players add amethyst Panel 1
execute if blocks ~0 ~-1 ~0 ~2 ~0 ~0 ~0 ~0 ~0 all run scoreboard players add amethyst Panel 1
execute unless score amethyst Panel matches 5.. run scoreboard players set amethyst Panel 0

### East ###
execute if block ~ ~ ~ minecraft:amethyst_block run scoreboard players add amethyst Panel 1
execute if block ~-1 ~ ~ minecraft:calcite run scoreboard players add amethyst Panel 1
execute if block ~-2 ~ ~ minecraft:smooth_basalt run scoreboard players add amethyst Panel 1
execute if blocks ~-2 ~0 ~0 ~0 ~0 ~1 ~-2 ~0 ~-1 all run scoreboard players add amethyst Panel 1
execute if blocks ~-2 ~-1 ~0 ~0 ~0 ~0 ~-2 ~0 ~0 all run scoreboard players add amethyst Panel 1
execute unless score amethyst Panel matches 5.. run scoreboard players set amethyst Panel 0

### setblock ###
execute if score amethyst Panel matches 5.. run setblock ~ ~ ~ minecraft:budding_amethyst
execute unless score amethyst Panel matches 5.. run setblock ~ ~ ~ minecraft:air
advancement grant @p[sort=nearest,limit=1] only obe:nether/budding_amethys

scoreboard players reset amethyst Panel
kill @s
