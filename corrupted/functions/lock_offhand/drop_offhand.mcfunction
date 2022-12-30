summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b},PickupDelay:1s,Tags:["corrupted.set_from_offhand"]}
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1,tag=corrupted.set_from_offhand] Item set from entity @s Inventory[{Slot:-106b}]
clear @s warped_fungus_on_a_stick{corrupted.locked_offhand:1b}
