### Se llama ya "positioned" 2 bloques arriba del centro real del portal ###
scoreboard players set end_portal Panel 0
scoreboard players set end_portal_corners Panel 0

# Confirma que el portal existe (frames en los 4 brazos de la cruz)
execute if block ~2 ~-1 ~0 minecraft:end_portal_frame run scoreboard players add end_portal Panel 1
execute if block ~-2 ~-1 ~0 minecraft:end_portal_frame run scoreboard players add end_portal Panel 1
execute if block ~0 ~-1 ~2 minecraft:end_portal_frame run scoreboard players add end_portal Panel 1
execute if block ~0 ~-1 ~-2 minecraft:end_portal_frame run scoreboard players add end_portal Panel 1

# Confirma cobre (normal o waxed) en las 4 esquinas
execute if block ~2 ~-1 ~2 minecraft:copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~2 ~-1 ~2 minecraft:waxed_copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~2 ~-1 ~-2 minecraft:copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~2 ~-1 ~-2 minecraft:waxed_copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~-2 ~-1 ~2 minecraft:copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~-2 ~-1 ~2 minecraft:waxed_copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~-2 ~-1 ~-2 minecraft:copper_block run scoreboard players add end_portal_corners Panel 1
execute if block ~-2 ~-1 ~-2 minecraft:waxed_copper_block run scoreboard players add end_portal_corners Panel 1

execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:fire replace minecraft:end_portal
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~2 ~-1 ~1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~2 ~-0 ~1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~2 ~-1 ~0 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~2 ~-0 ~0 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~2 ~-1 ~-1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~2 ~-0 ~-1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~1 ~-1 ~2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~1 ~-0 ~2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~0 ~-1 ~2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~0 ~-0 ~2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~-1 ~-1 ~2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-1 ~-0 ~2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~-2 ~-1 ~1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-2 ~-0 ~1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~-2 ~-1 ~0 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-2 ~-0 ~0 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~-2 ~-1 ~-1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-2 ~-0 ~-1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~1 ~-1 ~-2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~1 ~-0 ~-2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~0 ~-1 ~-2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~0 ~-0 ~-2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 if block ~-1 ~-1 ~-2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-1 ~-0 ~-2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~2 ~-1 ~1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~2 ~-1 ~0 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~2 ~-1 ~-1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~1 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~0 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~-1 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~-2 ~-1 ~1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~-2 ~-1 ~0 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~-2 ~-1 ~-1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~1 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~0 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run summon minecraft:item ~-1 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~2 ~-0 ~1
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~2 ~-0 ~-1
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~-2 ~-0 ~1
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~-2 ~-0 ~-1
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~1 ~-0 ~2
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~1 ~-0 ~-2
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~-1 ~-0 ~2
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run particle minecraft:explosion ~-1 ~-0 ~-2
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 minecraft:air replace minecraft:end_portal_frame
execute if score end_portal Panel matches 4 if score end_portal_corners Panel matches 4 run advancement grant @e[type=minecraft:player] only obe:story/end_portal_destroy

scoreboard players reset end_portal Panel
scoreboard players reset end_portal_corners Panel
