execute store result score @s corrupted.experience_levels run xp query @s levels
execute if score @s corrupted.experience_levels matches 100.. unless predicate corrupted:wears_full_corrupted_armor_unbreakable run function corrupted:corrupted_diamond_armor/unbreakable
execute if score @s corrupted.experience_levels matches 250.. run function corrupted:corrupted_diamond_armor/fully_charged
xp add @s -1 points