execute as @p[predicate=corrupted:holds_corrupted_diamond_pickaxe] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air 
particle minecraft:sculk_charge_pop ~ ~ ~ 0.5 0.5 0.5 0 5
execute if predicate corrupted:one_in_five if block ~ ~ ~1 #corrupted:stones run summon marker ~ ~ ~1 {Tags:["corrupted.corrupted"]}
execute if predicate corrupted:one_in_five if block ~ ~ ~-1 #corrupted:stones run summon marker ~ ~ ~-1 {Tags:["corrupted.corrupted"]}
execute if predicate corrupted:one_in_five if block ~1 ~ ~ #corrupted:stones run summon marker ~1 ~ ~ {Tags:["corrupted.corrupted"]}
execute if predicate corrupted:one_in_five if block ~-1 ~ ~ #corrupted:stones run summon marker ~-1 ~ ~ {Tags:["corrupted.corrupted"]}
execute if predicate corrupted:one_in_five if block ~ ~1 ~ #corrupted:stones run summon marker ~ ~1 ~ {Tags:["corrupted.corrupted"]}
# execute if predicate corrupted:one_in_five if block ~ ~-1 ~ #corrupted:stones run summon marker ~ ~-1 ~ {Tags:["corrupted.corrupted"]}

kill @s