# OMD読み込み
function oh_my_dat:please

# バンドルを用意する
data modify storage mangomc: InventoryItem set value {id:"minecraft:bundle",Count:1b,tag:{Items:[],UsedVoidBundle:1b,HideFlags:127b,display:{Name:'[{"text":"***","color":"gold","obfuscated":true},{"text":"虚無のバンドル","color":"gold","obfuscated":false},{"text":"***","color":"gold","obfuscated":true}]'}}}

# 最大9個移動する
scoreboard players set $Temp1 Temp 9
# アイテムがないなら購入費を返却予約
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run tag @s add RefundVoidBundle
# ある時は入れる
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function mangomc:death_item/void_fishing/bundle_loop

# いまのバンドルを変数に
data modify storage mangomc: Items set value []
data modify storage mangomc: Items append from entity @s Inventory[{tag:{EmptyVoidBundle:1b}}]

# 今のバンドルのスロットを入れる
data modify storage mangomc: InventorySlot set from storage mangomc: Items[0].Slot

# 返金チェック
execute unless data storage mangomc: Items[0].tag.NoRefund if entity @s[tag=RefundVoidBundle] run function mangomc:death_item/void_fishing/bundle_refund
execute if data storage mangomc: Items[0].tag.NoRefund if entity @s[tag=RefundVoidBundle] run data modify storage mangomc: InventoryItem.tag.NoHold set value 1b

# 返却
function mangomc:utils/inventory/save

# 後始末
advancement revoke @s only mangomc:empty_void_bundle

tag @s remove RefundVoidBundle