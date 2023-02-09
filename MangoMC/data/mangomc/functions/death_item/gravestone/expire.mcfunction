# OMDで防具立てのデータを得る
function oh_my_dat:please
# オーナーのOMDにアクセス
execute store result score _ OhMyDatID run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OwnerID
function oh_its_dat:please
# アイテムを移動する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from entity @s HandItems[0].tag.Items[]
# 手持ちを消す
data modify entity @s HandItems[0] set value {}
# ささやく
tell @a 誰かの死亡時のアイテムが消失した...どこかの聖職者から取り戻せるらしい...
# 防具立て消す
kill @s