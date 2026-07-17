execute if entity @p[nbt={Dimension:"minecraft:the_nether"}] run function obe:transform_timer_nether
execute if entity @p[nbt={Dimension:"minecraft:overworld"}] run function obe:transform_timer_overworld

### Trader timer ###
scoreboard players remove Wandering_trader Panel 1

schedule function obe:transform_timer 1s replace