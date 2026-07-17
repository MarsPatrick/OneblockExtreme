tag @s add checked
### create portal ###
scoreboard players set end_portal Panel 0
execute at @s if block ~0 ~-2 ~0 minecraft:crying_obsidian run scoreboard players add end_portal Panel 1
execute at @s if blocks ~0 ~-2 ~0 ~1 ~-2 ~0 ~-1 ~-2 ~0 all run scoreboard players add end_portal Panel 1
execute at @s if blocks ~-1 ~-2 ~0 ~1 ~-2 ~-1 ~-1 ~-2 ~0 all run scoreboard players add end_portal Panel 1
execute at @s if block ~2 ~-2 ~0 minecraft:end_stone run scoreboard players add end_portal Panel 1
execute at @s if blocks ~2 ~-2 ~-1 ~2 ~-2 ~0 ~2 ~-2 ~0 all run scoreboard players add end_portal Panel 1
execute at @s if blocks ~2 ~-2 ~1 ~2 ~-2 ~-1 ~-2 ~-2 ~-1 all run scoreboard players add end_portal Panel 1
execute at @s if block ~0 ~-2 ~-2 minecraft:end_stone run scoreboard players add end_portal Panel 1
execute at @s if blocks ~-1 ~-2 ~-2 ~0 ~-2 ~-2 ~0 ~-2 ~-2 all run scoreboard players add end_portal Panel 1
execute at @s if blocks ~-1 ~-2 ~-2 ~1 ~-2 ~-2 ~-1 ~-2 ~2 all run scoreboard players add end_portal Panel 1
execute at @s if score end_portal Panel matches 9 run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:obsidian replace
execute at @s if score end_portal Panel matches 9 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:fire keep
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~2 ~-1 ~1
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~2 ~-1 ~-1
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~-2 ~-1 ~1
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~-2 ~-1 ~-1
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~1 ~-1 ~2
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~1 ~-1 ~-2
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~-1 ~-1 ~2
execute at @s if score end_portal Panel matches 9 run particle minecraft:explosion ~-1 ~-1 ~-2
execute at @s if score end_portal Panel matches 9 run fill ~2 ~-2 ~-1 ~2 ~-2 ~1 minecraft:end_portal_frame[facing=west] replace
execute at @s if score end_portal Panel matches 9 run fill ~-2 ~-2 ~-1 ~-2 ~-2 ~1 minecraft:end_portal_frame[facing=east] replace
execute at @s if score end_portal Panel matches 9 run fill ~-1 ~-2 ~2 ~1 ~-2 ~2 minecraft:end_portal_frame[facing=north] replace
execute at @s if score end_portal Panel matches 9 run fill ~-1 ~-2 ~-2 ~1 ~-2 ~-2 minecraft:end_portal_frame[facing=south] replace
execute at @s if score end_portal Panel matches 9 run advancement grant @e[type=minecraft:player] only obe:story/end_portal

### destroy portal ###
scoreboard players set end_portal Panel 0

execute as @e[tag=portal_checker] at @s if block ~1 ~-2 ~ minecraft:end_portal_frame run scoreboard players add end_portal Panel 1
execute as @e[tag=portal_checker] at @s if block ~-1 ~-2 ~ minecraft:end_portal_frame run scoreboard players add end_portal Panel 1

execute as @e[tag=portal_checker] at @s if block ~1 ~-2 ~ minecraft:end_portal_frame[facing=south] run tp @s ~2 ~ ~2
execute as @e[tag=portal_checker] at @s if block ~1 ~-2 ~ minecraft:end_portal_frame[facing=north] run tp @s ~2 ~ ~-2
execute as @e[tag=portal_checker] at @s if block ~-1 ~-2 ~ minecraft:end_portal_frame[facing=south] run tp @s ~-2 ~ ~2
execute as @e[tag=portal_checker] at @s if block ~-1 ~-2 ~ minecraft:end_portal_frame[facing=north] run tp @s ~-2 ~ ~-2

execute at @s if block ~2 ~-2 ~2 minecraft:copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~2 ~-2 ~-2 minecraft:copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~-2 ~-2 ~2 minecraft:copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~-2 ~-2 ~-2 minecraft:copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~2 ~-2 ~2 minecraft:waxed_copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~2 ~-2 ~-2 minecraft:waxed_copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~-2 ~-2 ~2 minecraft:waxed_copper_block run scoreboard players add end_portal Panel 1
execute at @s if block ~-2 ~-2 ~-2 minecraft:waxed_copper_block run scoreboard players add end_portal Panel 1

execute at @s if score end_portal Panel matches 5 run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 minecraft:fire replace minecraft:end_portal
execute at @s if score end_portal Panel matches 5 if block ~2 ~-2 ~1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~2 ~-1 ~1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~2 ~-2 ~0 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~2 ~-1 ~0 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~2 ~-2 ~-1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~2 ~-1 ~-1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~1 ~-2 ~2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~1 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~0 ~-2 ~2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~0 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~-1 ~-2 ~2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-1 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~-2 ~-2 ~1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-2 ~-1 ~1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~-2 ~-2 ~0 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-2 ~-1 ~0 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~-2 ~-2 ~-1 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-2 ~-1 ~-1 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~1 ~-2 ~-2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~1 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~0 ~-2 ~-2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~0 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 if block ~-1 ~-2 ~-2 minecraft:end_portal_frame[eye=true] run summon minecraft:item ~-1 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:ender_eye", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~2 ~-1 ~1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~2 ~-1 ~0 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~2 ~-1 ~-1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~1 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~0 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~-1 ~-1 ~2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~-2 ~-1 ~1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~-2 ~-1 ~0 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~-2 ~-1 ~-1 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~1 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~0 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run summon minecraft:item ~-1 ~-1 ~-2 {Invulnerable:1b,Item:{id:"minecraft:end_stone", Count:1b}}
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~2 ~-1 ~1
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~2 ~-1 ~-1
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~-2 ~-1 ~1
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~-2 ~-1 ~-1
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~1 ~-1 ~2
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~1 ~-1 ~-2
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~-1 ~-1 ~2
execute at @s if score end_portal Panel matches 5 run particle minecraft:explosion ~-1 ~-1 ~-2
execute at @s if score end_portal Panel matches 5 run fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:end_portal_frame
execute at @s if score end_portal Panel matches 5 run advancement grant @e[type=minecraft:player] only obe:story/end_portal_destroy

scoreboard players reset end_portal Panel
kill @s
