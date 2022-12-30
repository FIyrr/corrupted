summon experience_orb ~ ~ ~0.3 {Value:100}
summon experience_orb ~0.1 ~ ~ {Value:10}
summon experience_orb ~ ~ ~-0.25 {Value:1}
summon experience_orb ~0.5 ~ ~ {Value:1}
summon experience_orb ~ ~ ~0.5 {Value:1}
playsound minecraft:entity.warden.attack_impact player @s
give @s netherite_scrap 3
give @s gold_ingot 2
particle block netherite_block ~ ~1 ~ 0.5 0.5 0.5 0 10
clear @s netherite_axe{corrupted.corrupted_diamond_axe:1b}
clear @s netherite_sword{corrupted.corrupted_diamond_sword:1b}
clear @s netherite_shovel{corrupted.corrupted_diamond_shovel:1b}
clear @s netherite_pickaxe{corrupted.corrupted_diamond_pickaxe:1b}
clear @s netherite_hoe{corrupted.corrupted_diamond_hoe:1b}
clear @s netherite_helmet{corrupted.corrupted_diamond_helmet:1b}
clear @s netherite_chestplate{corrupted.corrupted_diamond_chestplate:1b}
clear @s netherite_leggings{corrupted.corrupted_diamond_leggings:1b}
clear @s netherite_boots{corrupted.corrupted_diamond_boots:1b}
advancement grant @s only corrupted:visible/fail_to_upgrade
advancement revoke @s only corrupted:fail_to_upgrade/netherite_axe
advancement revoke @s only corrupted:fail_to_upgrade/netherite_boots
advancement revoke @s only corrupted:fail_to_upgrade/netherite_chestplate
advancement revoke @s only corrupted:fail_to_upgrade/netherite_helmet
advancement revoke @s only corrupted:fail_to_upgrade/netherite_hoe
advancement revoke @s only corrupted:fail_to_upgrade/netherite_leggings
advancement revoke @s only corrupted:fail_to_upgrade/netherite_pickaxe
advancement revoke @s only corrupted:fail_to_upgrade/netherite_shovel
advancement revoke @s only corrupted:fail_to_upgrade/netherite_sword