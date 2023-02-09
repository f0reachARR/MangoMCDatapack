# エラー防止として1tick後に
execute if entity @a[nbt={SelectedItem:{tag:{Mango:"InfTorch"}}}] run tag @s add InfTorchUsed
execute unless entity @a[nbt={SelectedItem:{tag:{Mango:"InfTorch"}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Mango:"InfTorch"}}]}] run tag @s add InfTorchUsed
schedule function mangomc:inftorch/schedule 3t