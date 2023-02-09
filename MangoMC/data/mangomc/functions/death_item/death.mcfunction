# アイテムを持っていたら回収する
execute if data entity @s Inventory[0] run function mangomc:death_item/collect