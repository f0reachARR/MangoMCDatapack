# アイテムを回収(keepInventoryは前提，全ワールドでインベントリ共有しているものとする)
    # 一時変数に
    data modify storage mangomc: DeathInventory set from entity @s Inventory
    # Slot指定を外す
    data remove storage mangomc: DeathInventory[].Slot
    # 消滅の呪い処理
    data remove storage mangomc: DeathInventory[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
    # 今のY座標を入れる
    execute as @s store result score @s y run data get entity @s Pos[1]

    # Y座標で分岐
    # 防具立てにチェストを持たせる
    execute if score @s y > $-64 Const run function mangomc:death_item/gravestone/
    # OMDに保管
    execute unless score @s y > $-64 Const run function mangomc:death_item/save
    execute unless score @s y > $-64 Const run tell @s 奈落に落ちた場合は墓石はできないらしい...

    # インベントリ削除
    clear @s