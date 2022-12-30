execute store result score @s corrupted.experience_points run experience query @s points
execute store result score @s corrupted.experience_levels run experience query @s levels
scoreboard players set @s corrupted.rcd 0
execute if score @s corrupted.experience_levels matches 14.. run function corrupted:corrupted_diamond_sword/actually_start_raycast 
execute if score @s corrupted.experience_levels matches 13 if score @s corrupted.experience_points matches 2.. run function corrupted:corrupted_diamond_sword/actually_start_raycast 
execute unless score @s corrupted.experience_levels matches 14.. unless entity @s[scores={corrupted.experience_points=2..,corrupted.experience_levels=13}] run tellraw @s {"text":"You don't have enough experience points to use this!","color":"red"}