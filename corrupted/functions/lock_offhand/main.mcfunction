execute unless data entity @s Inventory[{Slot:-106b,tag:{corrupted.locked_offhand:1b}}] run clear @s warped_fungus_on_a_stick{corrupted.locked_offhand:1b}
execute unless data entity @s Inventory[{Slot:-106b,tag:{corrupted.locked_offhand:1b}}] unless data entity @s Inventory[{Slot:-106b,tag:{corrupted.lock_offhand:1b}}] if data entity @s Inventory[{Slot:-106b}] run function corrupted:lock_offhand/drop_offhand

item replace entity @s weapon.offhand with warped_fungus_on_a_stick{display:{Name:'[{"text":"a","color":"dark_aqua","italic":false,"obfuscated":true},{"translate":"inventory.corrupted.locked_offhand","color":"aqua","italic":false,"obfuscated":false},{"text":"a","color":"dark_aqua","italic":false,"obfuscated":true}]'},CustomModelData:1625,corrupted.locked_offhand:1b} 1
tag @s add corrupted.locked_offhand