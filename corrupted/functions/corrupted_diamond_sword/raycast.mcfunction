scoreboard players remove @s corrupted.raycast 1
execute if score @s corrupted.raycast matches 0 run tag @s remove corrupted.sonic_boom.caster
effect give @e[type=!#corrupted:undead,tag=!corrupted.sonic_boom.caster,distance=..2] instant_damage 1 2
effect give @e[type=#corrupted:undead,tag=!corrupted.sonic_boom.caster,distance=..2] instant_health 1 2
execute if score @s corrupted.raycast matches 1.. positioned ^ ^ ^1 run function corrupted:corrupted_diamond_sword/raycast
particle sonic_boom ~ ~ ~ 0 0 0 1 1
