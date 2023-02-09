# 樽の中身を対象アイテムにする
execute in overworld run data modify block -20 124 27 Items set value []
data modify storage mangomc: InventoryItem.Slot set value 0
execute in overworld run data modify block -20 124 27 Items append from storage mangomc: InventoryItem
# 対象スロットを得る
execute store result score $Temp1 Temp run data get storage mangomc: InventorySlot
# プレイヤーにあげる
# ref: https://github.com/TUSB/TheUnusualSkyBlock/blob/1-17-1/data/item/functions/system/shulker_box/loot_to_player.mcfunction
# スロット指定系
execute if score $Temp1 Temp matches 0 in overworld run item replace entity @s container.0 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 1 in overworld run item replace entity @s container.1 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 2 in overworld run item replace entity @s container.2 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 3 in overworld run item replace entity @s container.3 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 4 in overworld run item replace entity @s container.4 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 5 in overworld run item replace entity @s container.5 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 6 in overworld run item replace entity @s container.6 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 7 in overworld run item replace entity @s container.7 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 8 in overworld run item replace entity @s container.8 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 9 in overworld run item replace entity @s container.9 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 10 in overworld run item replace entity @s container.10 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 11 in overworld run item replace entity @s container.11 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 12 in overworld run item replace entity @s container.12 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 13 in overworld run item replace entity @s container.13 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 14 in overworld run item replace entity @s container.14 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 15 in overworld run item replace entity @s container.15 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 16 in overworld run item replace entity @s container.16 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 17 in overworld run item replace entity @s container.17 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 18 in overworld run item replace entity @s container.18 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 19 in overworld run item replace entity @s container.19 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 20 in overworld run item replace entity @s container.20 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 21 in overworld run item replace entity @s container.21 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 22 in overworld run item replace entity @s container.22 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 23 in overworld run item replace entity @s container.23 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 24 in overworld run item replace entity @s container.24 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 25 in overworld run item replace entity @s container.25 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 26 in overworld run item replace entity @s container.26 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 27 in overworld run item replace entity @s container.27 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 28 in overworld run item replace entity @s container.28 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 29 in overworld run item replace entity @s container.29 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 30 in overworld run item replace entity @s container.30 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 31 in overworld run item replace entity @s container.31 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 32 in overworld run item replace entity @s container.32 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 33 in overworld run item replace entity @s container.33 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 34 in overworld run item replace entity @s container.34 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 35 in overworld run item replace entity @s container.35 from block -20 124 27 container.0
execute if score $Temp1 Temp matches 100 in overworld run item replace entity @s armor.feet from block -20 124 27 container.0
execute if score $Temp1 Temp matches 101 in overworld run item replace entity @s armor.legs from block -20 124 27 container.0
execute if score $Temp1 Temp matches 102 in overworld run item replace entity @s armor.chest from block -20 124 27 container.0
execute if score $Temp1 Temp matches 103 in overworld run item replace entity @s armor.head from block -20 124 27 container.0
execute if score $Temp1 Temp matches -106 in overworld run item replace entity @s weapon.offhand from block -20 124 27 container.0