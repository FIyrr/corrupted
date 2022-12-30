playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.5
scoreboard players set @s corrupted.raycast 15
tag @s add corrupted.sonic_boom.caster
xp add @s -250
function corrupted:corrupted_diamond_sword/raycast