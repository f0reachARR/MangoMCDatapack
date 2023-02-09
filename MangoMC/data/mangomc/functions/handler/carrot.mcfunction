# どこでも居場所分かるくん
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Mango:'CallWhere'}}}] run function mangomc:call_where/

# 虚無からの釣り竿
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Mango:'DeathItem'}}}] run function mangomc:death_item/


# リセット
scoreboard players reset @s ClickCarrotEvent