
execute as @e[nbt={HurtTime:10s},distance=..5,limit=1] at @s as @e[type=!#corrupted:plz_dont_pull_into_ground,sort=random,limit=1,distance=..6] at @s run function corrupted:corrupted_diamond_axe/go_into_ground
advancement revoke @s only corrupted:corrupted_diamond_axe_hit