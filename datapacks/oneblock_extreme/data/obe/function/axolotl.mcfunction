scoreboard players set Axolotl Panel 0
execute as @e[type=minecraft:axolotl,distance=..48] run scoreboard players add Axolotl Panel 1
execute if score Axolotl Panel matches ..3 run summon minecraft:axolotl
execute if score Axolotl Panel matches ..3 run tp @e[type=axolotl,sort=nearest,limit=1] @s
execute if score Axolotl Panel matches ..3 run tp @s ~ ~-384 ~
execute if score Axolotl Panel matches ..3 run kill @s
