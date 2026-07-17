### genetate random trades ###
execute as @e[tag=trader] run scoreboard players set @s Trades 0
execute as @e[tag=trader] run function obe:randomize

### check common ###
execute if score @e[name=T1,limit=1] Trades = @e[name=T2,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T1,limit=1] Trades = @e[name=T3,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T1,limit=1] Trades = @e[name=T4,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T1,limit=1] Trades = @e[name=T5,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T1,limit=1] Trades = @e[name=T6,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T1,limit=1] Trades = @e[name=T7,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T1,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T2,limit=1] Trades = @e[name=T3,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T2,limit=1] Trades = @e[name=T4,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T2,limit=1] Trades = @e[name=T5,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T2,limit=1] Trades = @e[name=T6,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T2,limit=1] Trades = @e[name=T7,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T2,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T3,limit=1] Trades = @e[name=T4,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T3,limit=1] Trades = @e[name=T5,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T3,limit=1] Trades = @e[name=T6,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T3,limit=1] Trades = @e[name=T7,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T3,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T4,limit=1] Trades = @e[name=T5,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T4,limit=1] Trades = @e[name=T6,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T4,limit=1] Trades = @e[name=T7,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T4,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T5,limit=1] Trades = @e[name=T6,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T5,limit=1] Trades = @e[name=T7,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T5,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T6,limit=1] Trades = @e[name=T7,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T6,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
execute if score @e[name=T7,limit=1] Trades = @e[name=T8,limit=1] Trades run function obe:wandering_trader_pool
