# アイテムがあるときに呼ばれる
summon item 0 320 0 {Tags:["DeathItem"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:stick",Count:1}}

# アイテムをセット
data modify entity @e[tag=DeathItem,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0]

# 自分のところに移動してくる
execute as @s at @s run tp @e[tag=DeathItem] ~ ~-0.5 ~

# 消す
execute as @e[tag=DeathItem,limit=1] run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0]

# タグ消し
tag @e[tag=DeathItem] remove DeathItem

# 再帰する
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function mangomc:death_item/back