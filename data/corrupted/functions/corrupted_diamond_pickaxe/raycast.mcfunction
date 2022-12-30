scoreboard players remove @s corrupted.raycast 1
execute if score @s corrupted.raycast matches 1.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #corrupted:air run summon marker ^ ^ ^-0.1 {Tags:["corrupted.corrupted"]}
execute if score @s corrupted.raycast matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #corrupted:air run function corrupted:corrupted_diamond_pickaxe/raycast

