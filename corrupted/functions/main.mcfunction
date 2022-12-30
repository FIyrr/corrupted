
execute as @a[predicate=corrupted:wears_full_corrupted_armor] at @s run function corrupted:corrupted_diamond_armor/main
execute as @a[predicate=!corrupted:wears_full_corrupted_armor,predicate=corrupted:wears_corrupted_diamond_boots_unbreakable] run item modify entity @s armor.feet corrupted:make_not_unbreakable
execute as @a[predicate=!corrupted:wears_full_corrupted_armor,predicate=corrupted:wears_corrupted_diamond_chestplate_unbreakable] run item modify entity @s armor.chest corrupted:make_not_unbreakable
execute as @a[predicate=!corrupted:wears_full_corrupted_armor,predicate=corrupted:wears_corrupted_diamond_helmet_unbreakable] run item modify entity @s armor.head corrupted:make_not_unbreakable
execute as @a[predicate=!corrupted:wears_full_corrupted_armor,predicate=corrupted:wears_corrupted_diamond_leggings_unbreakable] run item modify entity @s armor.legs corrupted:make_not_unbreakable

execute as @e[type=marker,tag=corrupted.corrupted] at @s run function corrupted:corrupted_diamond_pickaxe/corruption
execute as @e[scores={corrupted.go_in_floor_time=1}] run data merge entity @s {NoAI:1b}
scoreboard players add @e[scores={corrupted.go_in_floor_time=1..20}] corrupted.go_in_floor_time 1
execute as @e[scores={corrupted.go_in_floor_time=1..10}] at @s as @e[type=armor_stand,tag=corrupted.warden_hand,sort=nearest,limit=1] at @s run tp @s ~ ~0.05 ~
execute as @e[scores={corrupted.go_in_floor_time=10..}] at @s as @e[type=armor_stand,tag=corrupted.warden_hand,sort=nearest,limit=1] at @s run tp @s ~ ~-0.1 ~
execute as @e[scores={corrupted.go_in_floor_time=10..}] at @s run tp @s ~ ~-0.09 ~
execute as @e[scores={corrupted.go_in_floor_time=20..}] run data merge entity @s {NoAI:0b}
execute as @e[scores={corrupted.go_in_floor_time=20..}] run kill @e[type=armor_stand,tag=corrupted.warden_hand,sort=nearest,limit=1]
execute as @e[scores={corrupted.go_in_floor_time=20..}] run scoreboard players set @s corrupted.go_in_floor_time 0

execute as @a[predicate=corrupted:holds_corrupted_diamond_sword,scores={corrupted.rcd=1..}] at @s anchored eyes positioned ^ ^ ^0.1 run function corrupted:corrupted_diamond_sword/start_raycast 
execute as @a[predicate=corrupted:locked_offhand,predicate=!corrupted:need_to_lock_offhand] run clear @s warped_fungus_on_a_stick{corrupted.locked_offhand:1b}
execute as @a[predicate=corrupted:holds_offhand_lock] run item replace entity @s weapon.mainhand with air
execute as @a[scores={corrupted.clear_lock_in_1t=1..}] run function corrupted:/lock_offhand/scheduled_clear
execute as @a[predicate=corrupted:need_to_lock_offhand] at @s run function corrupted:lock_offhand/main
execute as @a[predicate=!corrupted:need_to_lock_offhand,tag=corrupted.locked_offhand] run tag @s remove corrupted.locked_offhand

execute as @a[scores={corrupted.broke_beetroot=1..}] run function corrupted:corrupted_diamond_hoe/grant_xp
execute as @a[scores={corrupted.broke_wheat=1..}] run function corrupted:corrupted_diamond_hoe/grant_xp
execute as @a[scores={corrupted.broke_carrots=1..}] run function corrupted:corrupted_diamond_hoe/grant_xp
execute as @a[scores={corrupted.broke_potato=1..}] run function corrupted:corrupted_diamond_hoe/grant_xp