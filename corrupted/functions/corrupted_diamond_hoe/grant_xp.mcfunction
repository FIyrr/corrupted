scoreboard players set @s corrupted.broke_beetroot 0
scoreboard players set @s corrupted.broke_potato 0
scoreboard players set @s corrupted.broke_carrot 0
scoreboard players set @s corrupted.broke_wheat 0

execute if predicate corrupted:one_in_100 run xp add @s 50 points
execute if predicate corrupted:one_in_10000 run xp add @s 1000 points
execute if predicate corrupted:one_in_five run xp add @s 1 points
