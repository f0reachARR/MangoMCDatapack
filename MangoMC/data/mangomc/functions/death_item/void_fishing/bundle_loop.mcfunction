# カウンタを減らす
scoreboard players operation $Temp1 Temp -= $1 Const
# 移動する
data modify storage mangomc: InventoryItem.tag.Items append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0]
# 消す
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0]
# 再帰
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] if score $Temp1 Temp > $0 Const run function mangomc:death_item/void_fishing/bundle_loop