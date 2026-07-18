tag @s add checked

### create portal ###
scoreboard players set end_portal Panel 0
scoreboard players set end_portal_border Panel 0

# Nucleo 3x3 = crying_obsidian (9 celdas)
execute at @s if block ~-1 ~-1 ~-1 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~0 ~-1 ~-1 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~1 ~-1 ~-1 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~-1 ~-1 ~0 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~0 ~-1 ~0 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~1 ~-1 ~0 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~-1 ~-1 ~1 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~0 ~-1 ~1 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if block ~1 ~-1 ~1 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1

# Contorno en cruz = end_stone (12 celdas, mismas posiciones donde luego van los frames)
execute at @s if block ~2 ~-1 ~-1 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~2 ~-1 ~0 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~2 ~-1 ~1 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~-2 ~-1 ~-1 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~-2 ~-1 ~0 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~-2 ~-1 ~1 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~-1 ~-1 ~2 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~0 ~-1 ~2 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~1 ~-1 ~2 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~-1 ~-1 ~-2 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~0 ~-1 ~-2 minecraft:end_stone run scoreboard players add end_portal_border Panel 1
execute at @s if block ~1 ~-1 ~-2 minecraft:end_stone run scoreboard players add end_portal_border Panel 1

execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:obsidian replace
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run fill ~-1 ~-0 ~-1 ~1 ~-0 ~1 minecraft:fire keep
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~2 ~-0 ~1
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~2 ~-0 ~-1
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~-2 ~-0 ~1
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~-2 ~-0 ~-1
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~1 ~-0 ~2
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~1 ~-0 ~-2
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~-1 ~-0 ~2
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run particle minecraft:explosion ~-1 ~-0 ~-2
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run fill ~2 ~-1 ~-1 ~2 ~-1 ~1 minecraft:end_portal_frame[facing=west] replace
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run fill ~-2 ~-1 ~-1 ~-2 ~-1 ~1 minecraft:end_portal_frame[facing=east] replace
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run fill ~-1 ~-1 ~2 ~1 ~-1 ~2 minecraft:end_portal_frame[facing=north] replace
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~-2 minecraft:end_portal_frame[facing=south] replace
execute at @s if score end_portal Panel matches 9 if score end_portal_border Panel matches 12 run advancement grant @e[type=minecraft:player] only obe:story/end_portal

### destroy portal ###
# El rayo puede caer sobre cualquiera de las 4 esquinas: primero detectamos en cual
# (mirando que frames tiene pegados al lado) y recien ahi corremos el check real

execute as @e[tag=portal_checker] at @s if block ~0 ~-1 ~-2 minecraft:end_portal_frame if block ~-2 ~-1 ~0 minecraft:end_portal_frame positioned ~-2 ~0 ~-2 run function obe:end_portal_destroy
execute as @e[tag=portal_checker] at @s if block ~0 ~-1 ~2 minecraft:end_portal_frame if block ~-2 ~-1 ~0 minecraft:end_portal_frame positioned ~-2 ~0 ~2 run function obe:end_portal_destroy
execute as @e[tag=portal_checker] at @s if block ~0 ~-1 ~-2 minecraft:end_portal_frame if block ~2 ~-1 ~0 minecraft:end_portal_frame positioned ~2 ~0 ~-2 run function obe:end_portal_destroy
execute as @e[tag=portal_checker] at @s if block ~0 ~-1 ~2 minecraft:end_portal_frame if block ~2 ~-1 ~0 minecraft:end_portal_frame positioned ~2 ~0 ~2 run function obe:end_portal_destroy

kill @s
