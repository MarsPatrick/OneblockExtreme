tag @s add custom_trader
data remove entity @s Offers.Recipes

### genetate random trades ###
scoreboard players set random_limit Panel 50
function obe:wandering_trader_pool

### Assign Trades ###
### Original trade ###
execute if entity @e[tag=trader,scores={Trades=1}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:allium",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=2}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:fern",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=3}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:red_tulip",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=4}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:orange_tulip",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=5}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:pink_tulip",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=6}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:white_tulip",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=7}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:beetroot_seeds",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=8}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:pumpkin_seeds",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=9}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:melon_seeds",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=10}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:brown_mushroom",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=11}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:red_mushroom",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=12}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:blue_orchid",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=13}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:sugar_cane",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=14}] run data modify entity @s Offers.Recipes prepend value {maxUses:7,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:lily_of_the_valley",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=15}] run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:small_dripleaf",Count:2b}}
execute if entity @e[tag=trader,scores={Trades=16}] run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:pointed_dripstone",Count:2b}}
execute if entity @e[tag=trader,scores={Trades=17}] run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:moss_block",Count:2b}}
execute if entity @e[tag=trader,scores={Trades=18}] run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:emerald",Count:2b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:sea_pickle",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=19}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:cactus",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=20}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:spruce_sapling",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=21}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:birch_sapling",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=22}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:jungle_sapling",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=23}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:acacia_sapling",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=24}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:dark_oak_sapling",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=25}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:mangrove_propagule",Count:1b}}

### Custom trade ###
execute if entity @e[tag=trader,scores={Trades=26}] run data modify entity @s Offers.Recipes prepend value {maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:wither_skeleton_skull",Count:1b},sell:{id:"minecraft:ancient_debris",Count:2b}}
execute if entity @e[tag=trader,scores={Trades=27}] run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:diamond",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=28}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:2b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:nether_wart",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=29}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:brain_coral",Count:4b}}
execute if entity @e[tag=trader,scores={Trades=30}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:bubble_coral",Count:4b}}
execute if entity @e[tag=trader,scores={Trades=31}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:fire_coral",Count:4b}}
execute if entity @e[tag=trader,scores={Trades=32}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:horn_coral",Count:4b}}
execute if entity @e[tag=trader,scores={Trades=33}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:tube_coral",Count:4b}}
execute if entity @e[tag=trader,scores={Trades=34}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:glow_berries",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=35}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:sweet_berries",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=36}] run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:glow_lichen",Count:2b}}
execute if entity @e[tag=trader,scores={Trades=37}] run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:wither_rose",Count:1b}}

### Custom trade(spawn eggs) ###
execute if entity @e[tag=trader,scores={Trades=38}] run data modify entity @s Offers.Recipes prepend value {maxUses:2,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:bamboo",Count:8b},sell:{id:"minecraft:panda_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=39}] run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:donkey_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=40}] run data modify entity @s Offers.Recipes prepend value {maxUses:2,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:llama_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=41}] run data modify entity @s Offers.Recipes prepend value {maxUses:2,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:dolphin_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=42}] run data modify entity @s Offers.Recipes prepend value {maxUses:2,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:blue_ice",Count:1b},sell:{id:"minecraft:polar_bear_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=43}] run data modify entity @s Offers.Recipes prepend value {maxUses:2,buy:{id:"minecraft:emerald",Count:4b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:goat_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=44}] run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:shulker_shell",Count:4b},sell:{id:"minecraft:shulker_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=45}] run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:wolf_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=46}] run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:sweet_berries",Count:8b},sell:{id:"minecraft:fox_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=47}] run data modify entity @s Offers.Recipes prepend value {maxUses:6,buy:{id:"minecraft:emerald",Count:2b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:parrot_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=48}] run data modify entity @s Offers.Recipes prepend value {maxUses:6,buy:{id:"minecraft:emerald",Count:2b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:allay_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=49}] run data modify entity @s Offers.Recipes prepend value {maxUses:6,buy:{id:"minecraft:emerald",Count:2b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:rabbit_spawn_egg",Count:1b}}
execute if entity @e[tag=trader,scores={Trades=50}] run data modify entity @s Offers.Recipes prepend value {maxUses:6,buy:{id:"minecraft:emerald",Count:2b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:frogspawn",Count:1b}}