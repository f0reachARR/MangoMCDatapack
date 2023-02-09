# ディメンションごとのタグ
tag @a[nbt={Dimension:"minecraft:overworld"}] remove ResourceWorld
tag @a[nbt={Dimension:"minecraft:the_nether"}] remove ResourceWorld
tag @a[nbt={Dimension:"minecraft:the_end"}] remove ResourceWorld
tag @a[nbt={Dimension:"minecraft:resource_world"}] add ResourceWorld
tag @a[nbt={Dimension:"minecraft:resource_world_nether"}] add ResourceWorld
tag @a[nbt={Dimension:"minecraft:resource_world_the_end"}] add ResourceWorld

# 付け直し
tag @a remove KeepItems
tag @a remove InfTorch
tag @a[tag=ResourceWorld] add KeepItems
tag @a[tag=ResourceWorld] add InfTorch

# 後始末
advancement revoke @s only mangomc:dimension